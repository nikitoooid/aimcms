var codeEditor

document.addEventListener("DOMContentLoaded", function () {
  let control = document.querySelector('#codeeditor')

  if(!control) return

  let mode = control.dataset['mode']
  let output = document.querySelector('.result_content')

  codeEditor = ace.edit("codeeditor")
  aceConfig(codeEditor, mode, output)
})

function aceConfig(editor, lang, output) {
  
  ace.config.set("basePath", "https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.14")
  editor.setTheme("ace/theme/monokai");
  editor.getSession().setMode(`ace/mode/${lang ? lang : 'html'}`);
  editor.setBehavioursEnabled(true);
  editor.getSession().setTabSize(2);
  
  editor.setOption("enableLiveAutocompletion", true)
  editor.setOption("enableSnippets", true)

  editor.on('change', function(){
    output.value = codeEditor.getValue()
  })
}

// codeEditor.getValue()