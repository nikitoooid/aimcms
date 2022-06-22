document.addEventListener("DOMContentLoaded", function(){
  init_sorting('active', 'hidden')
})

// управляющий элемент data-sortby="xxxx", элемент сортировки: data-xxxx="yyyy". Скрывает объекты путем класса hide_class
function init_sorting(active_class, hide_class){
  let sort_by = {}
  let controls = document.querySelectorAll('[data-sortby]')
  
  if (!controls.length) return

  // формируем типы сортировки
  controls.forEach(item => { if(item.dataset['sortby'] != "") sort_by[item.dataset['sortby']] = [] })

  // собираем варианты сортировки для каждого типа
  for (let type in sort_by) {
    let sort_variants = []
    let items = document.querySelectorAll(`[data-${type}]`)
  
    items.forEach(item => { if(item.dataset[type] != "") sort_variants.push(item.dataset[type]) })
    sort_by[type] = unique_array(sort_variants)
  }

  // вставляем элементы управления для сортировки
  controls.forEach(control => {
    // создаем элемент управления
    let control_element = document.createElement('div')
    control_element.classList.add('sort_list')

    let sort_area_selector = control.dataset['sortarea'] ? control.dataset['sortarea'] : 'body'

    // наполняем его вариантами
    sort_by[control.dataset['sortby']].forEach(variant => {
      let variant_element = document.createElement('div')
      variant_element.classList.add('sort_variant')
      variant_element.textContent = variant

      variant_element.addEventListener('click', function(){
        sortElements(sort_area_selector, control.dataset['sortby'], variant_element.textContent, control.textContent, hide_class)
      })

      control_element.appendChild(variant_element)
    })
    
    // вставляем элемент управления
    control.appendChild(control_element)

    //слушаем и обрабатываем управление
    control.addEventListener('click', function(){
      if (!control.classList.contains(active_class)) control.classList.add(active_class)
    })
  })
  
  // скрываем опции фильтра при клике в пустое место
  document.addEventListener('click', function(e){
    if (!e.target.dataset['sortby']) controls.forEach(e => e.classList.remove(active_class))
  })
}

function sortElements(sort_area, sort_by, value, default_value, hide_class) {
  let sortarea = document.querySelector(sort_area)
  if (!sortarea) return

  let items = sortarea.querySelectorAll(`[data-${sort_by}]`)
  items.forEach(item => {
    if (value == default_value || item.dataset[sort_by] == value) item.classList.remove(hide_class)
    else item.classList.add(hide_class)
  })
}

function unique_array(a) {
  let result = []

  a.forEach(e => {
    if (!result.find(f => { return f == e })) result.push(e)
  })

  return result;
}