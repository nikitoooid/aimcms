var categories = []

document.addEventListener("DOMContentLoaded", function(){
  console.log('Categories sorting activated')

  let all_items = document.querySelectorAll('[data-category]')

  all_items.forEach(item => {
    if(item.dataset['category'] && item.dataset['category'] != "") categories.push(item.dataset['category'])
  })

  categories = unique_array(categories)

  console.log(categories)
})

function unique_array(a) {
  let result = []

  a.forEach(e => {
    if (!result.find(f => { return f == e })) result.push(e)
  })

  return result;
}