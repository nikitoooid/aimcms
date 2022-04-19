var cde_actions = {
  'redirectClick': redirectClick,
  'redirectInput': redirectInput
}

document.addEventListener("DOMContentLoaded", function () {
  cdeConfig( 'editor', document.querySelector('.result_content') )

  buttonsHandler(cde_actions)
})

function cdeConfig(editor_id, output) {
  let control = document.querySelector(`#${editor_id}`)
  if(!control) return

  let editor = ace.edit(editor_id)
  let lang = control.dataset['mode']

  ace.config.set("basePath", "https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.14")
  editor.setTheme("ace/theme/monokai");
  editor.getSession().setMode(`ace/mode/${lang ? lang : 'html'}`);
  editor.setBehavioursEnabled(true);
  editor.getSession().setTabSize(2);
  editor.setOption("enableLiveAutocompletion", true)
  editor.setOption("enableSnippets", true)
  editor.on('change', function(){
    output.value = editor.getValue()
    console.log(output.value)
  })
  
  editor.setValue(output.value)
}

function buttonsHandler(actions) {
  document.addEventListener('click', function(e){
    // слушаем функциональные кнопки
    if (e.target.classList.contains('btn'))
      if (e.target.dataset.hasOwnProperty('action'))
        if (actions.hasOwnProperty(e.target.dataset.action))
        actions[e.target.dataset.action](e.target)
  })

  let inputs = document.querySelectorAll('input')
  if (inputs.length) {
    inputs.forEach(input => {
      if (input.dataset.hasOwnProperty('target'))
      actions.redirectInput(input)
    })
  }
}

function redirectClick(element) {
  let target = document.querySelector(element.dataset.target)
  if (target) target.click()
}
function redirectInput(input) {
  let target = document.querySelector(input.dataset.target)
  if (target) {
    input.value = target.value
    input.oninput = () => { target.value = input.value }
  }
}
