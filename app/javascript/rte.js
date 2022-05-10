// forms library
const rte_forms = [
  // default
  {
    template_name: 'default', forms: [
      {
        'label': loc.id,
        'classlist': 'mb-3',
        'input': 'input',
        'type': 'text',
        'target': 'id'
      },
      {
        'label': loc.classes,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'classlist'
      },
      {
        'label': loc.content,
        'input': 'textarea',
        'type': 'text',
        'target': 'content'
      },
      {
        'label': loc.styles,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'style'
      }
    ]
  },
  // advanced
  {
    'template_name' : 'advanced', 'forms' : [
      {
        'title' : loc.main_settings,
        'forms' : [
          {
            'label': loc.block_name,
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'content': null,
            'target': 'block_name'
          },
          {
            'label': loc.template,
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'template_name'
          },
          {
            'label': 'RTE type',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'rtype'
          },
          {
            'label': loc.id,
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'id'
          },
          {
            'label': loc.classes,
            'classlist': 'mb-3',
            'input': 'textarea',
            'target': 'classlist'
          }
        ]
      },
      {
        'title' : loc.style,
        'forms' : [
          {
            'label': loc.styles,
            'classlist': 'mb-3',
            'input': 'textarea',
            'target': 'style'
          }
        ]
      },
      {
        'title' : loc.advanced,
        'forms' : [
          {
            'label': loc.tag,
            'input': 'input',
            'type': 'text',
            'target': 'block'
          },
          {
            'label': loc.src,
            'input': 'input',
            'type': 'text',
            'target': 'src'
          },
          {
            block: 'div',
            classlist: 'btn btn-sm btn-primary mt-2 w-100',
            content: loc.select_ff,
            data: { action: 'fs', target: 'src'}
          },
          {
            'label': loc.href,
            'input': 'input',
            'type': 'text',
            'target': 'href'
          },
          {
            'label': loc.alt,
            'input': 'textarea',
            'type': 'text',
            'target': 'alt'
          },
          {
            'label': loc.type,
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'value'
          }
        ]
      },
      {
        'label': loc.content,
        'input': 'textarea',
        'type': 'text',
        'target': 'content'
      }
    ]
  },
  // text
  {
    template_name: 'text', forms: [
      {
        block: 'select',
        classlist: 'form-select form-select-sm',
        data: { target: 'block' },
        blocks:[
          { block: 'option', content: loc.select},
          { block: 'option', value: 'p', content: 'p'},
          { block: 'option', value: 'h1', content: 'h1'},
          { block: 'option', value: 'h2', content: 'h2'},
          { block: 'option', value: 'h3', content: 'h3'},
          { block: 'option', value: 'h4', content: 'h4'},
          { block: 'option', value: 'h5', content: 'h5'},
          { block: 'option', value: 'h6', content: 'h6'},
          { block: 'option', value: 'span', content: 'span'},
          { block: 'option', value: 'small', content: 'small'},
          { block: 'option', value: 'strong', content: 'strong'},
          { block: 'option', value: 'b', content: 'b'},
          { block: 'option', value: 'em', content: 'em'},
          { block: 'option', value: 'sup', content: 'sup'},
          { block: 'option', value: 'sub', content: 'sub'},
          { block: 'option', value: 'del', content: 'del'},
          { block: 'option', value: 'ins', content: 'ins'},
          { block: 'option', value: 'cite', content: 'cite'},
          { block: 'option', value: 'hr', content: 'hr'}
        ]
      },
      {
        'label': loc.classes,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'classlist'
      },
      {
        'label': loc.styles,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'style'
      },
      {
        'label': loc.content,
        'input': 'textarea',
        'type': 'text',
        'target': 'content'
      },
      { block: 'hr' },
      {
        'label': loc.id,
        'classlist': 'mb-3',
        'input': 'input',
        'type': 'text',
        'target': 'id'
      }
    ]
  },
  // container
  {
    template_name: 'container', forms: [
      {
        block: 'select',
        classlist: 'form-select form-select-sm',
        data: { target: 'classlist' },
        blocks:[
          { block: 'option', value: 'container', content: 'container'},
          { block: 'option', value: 'container-fluid', content: 'container-fluid'}
        ]
      },
      {
        'label': loc.classes,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'classlist'
      },
      {
        'label': loc.styles,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'style'
      }
    ]
  },
  // image
  {
    'template_name' : 'image', 'forms' : [
      {
        'label': loc.styles,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'style'
      },
      {
        'label': loc.src,
        'input': 'input',
        'type': 'text',
        'target': 'src'
      },
      {
        block: 'div',
        classlist: 'btn btn-sm btn-primary mt-2 w-100',
        content: loc.select_ff,
        data: { action: 'fs', target: 'src'}
      },
      {
        'label': loc.alt,
        'input': 'textarea',
        'type': 'text',
        'target': 'alt'
      },
      {
        'label': loc.id,
        'classlist': 'mb-3',
        'input': 'input',
        'type': 'text',
        'target': 'id'
      },
      {
        'label': loc.classes,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'classlist'
      }
    ]
  },
  // ==== RTE helpers ====
  // advanced
  {
    template_name: 'rte_advanced_helper', forms: [
      {
        label: loc.block_name,
        input: 'input',
        type: 'text',
        target: 'block_name'
      },
      {
        label: loc.block_name,
        input: 'input',
        type: 'text',
        target: 'title'
      },
      {block: 'hr'},
      {
        label: 'RTE type',
        input: 'input',
        type: 'text',
        target: 'rtype',
        description: 'Type of helper block: "helper"/"attribute"'
      },
      {
        label: loc.helper,
        input: 'input',
        type: 'text',
        target: 'helper'
      },
      {
        label: loc.model,
        input: 'input',
        type: 'text',
        target: 'params.model',
        description: 'Not all helpers need this.'
      },
      {
        label: loc.attribute,
        input: 'input',
        type: 'text',
        target: 'params.attribute'
      },
      {block: 'hr'},
      {
        label: loc.template,
        input: 'input',
        type: 'text',
        target: 'template_name'
      },
      {block: 'hr'},
      {
        label: loc.tag,
        input: 'input',
        type: 'text',
        target: 'block'
      },
      {
        label: loc.id,
        input: 'input',
        type: 'text',
        target: 'id'
      },
      {
        label: loc.classes,
        input: 'textarea',
        target: 'classlist'
      },
      {
        label: loc.styles,
        input: 'textarea',
        target: 'style'
      }
    ]
  },
  // helper
  {
    template_name: 'rte_helper', forms: [
      {
        label: loc.helper,
        input: 'input',
        type: 'text',
        target: 'helper'
      },
      {
        label: loc.model,
        input: 'input',
        type: 'text',
        target: 'params.model',
        description: 'Not all helpers need this.'
      },
      {label: loc.find_by},
      {
        block: 'div', classlist: 'input-group',
        blocks: [
          {
            block: 'input',
            type: 'text',
            classlist: 'form-control',
            placeholder: loc.key,
            data: {target: 'params.find.key'}
          },
          {
            block: 'input',
            type: 'text',
            classlist: 'form-control',
            placeholder: loc.value,
            data: {target: 'params.find.value'}
          }
        ]
      },
      {
        label: 'Order',
        input: 'input',
        type: 'text',
        target: 'params.order',
        description: 'example: \'id DESC, title ASC\''
      },
      {block: 'hr'},
      {
        label: loc.tag,
        input: 'input',
        type: 'text',
        target: 'block'
      },
      {
        label: loc.id,
        input: 'input',
        type: 'text',
        target: 'id'
      },
      {
        label: loc.classes,
        input: 'textarea',
        target: 'classlist'
      },
      {
        label: loc.styles,
        input: 'textarea',
        target: 'style'
      }
    ]
  },
  // attribute
  {
    template_name: 'rte_attribute', forms: [
      {
        label: loc.attribute,
        input: 'input',
        type: 'text',
        target: 'params.attribute'
      },
      {
        label: loc.tag,
        input: 'input',
        type: 'text',
        target: 'block'
      },
      {block: 'hr'},
      {
        label: loc.id,
        input: 'input',
        type: 'text',
        target: 'id'
      },
      {
        label: loc.classes,
        input: 'textarea',
        target: 'classlist'
      },
      {
        label: loc.styles,
        input: 'textarea',
        target: 'style'
      }
    ]
  }
]

// actions library (class btn + data-action)
const rte_actions = {
  'newblock': newBlock,
  'apply': formSave,
  'save': savePage,
  'delete' : function() { removeBlock() },
  //---------------------------
  'cde_apply': cdeApply,
  'cde_open_in' : cdeOpenIn,
  'cde_get_json' : cdeGetJson,
  'cde_close' : cdeClose,
  //---------------------------
  'fs' : fs,
  'fs_open' : fs_openFile,
  'fs_close' : fs_closeWindow
}

var paramsbuffer = {}   // буфер параметров формы
var blockbuffer         // буфер для копирования блока
var newblockbuffer = {block: 'div', title: 'advanced block', template_name: 'advanced'}      // буфер нового блока

// ----------------------------------------

function generateRte(control) {
  
  if(control.classList.contains('rte_editor')) {

    // создаем рабочую область
    control.appendChild(createBlock({
      block: 'div', classlist: 'rte_body',
      style: 'height: 100%', blocks: [
      { block: 'div', blocks: [
        { block: 'div', classlist: 'rte_control' },
      ]},
    ]},false))

    // создаем панель инструментов
    control.after(createBlock({
      block: 'div', blocks: [
        {
          block: 'div', classlist: 'rte_sidebar offcanvas show offcanvas-end',
          style: 'visibility:visible', attributes: {
            'data-bs-scroll':'true',
            'data-bs-backdrop':'false',
            'role':'tablist'
          },
          blocks:[
            {block: 'div', classlist: 'offcanvas-body', blocks:[
              {block: 'ul', classlist: 'nav nav-tabs', blocks:[
                {block: 'li', classlist: 'nav-item', blocks:[
                  {block: 'button', classlist: 'nav-link active', content: loc.page_settings,
                    attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_page_tab'}
                  }
                ]},
                {block: 'li', classlist: 'nav-item', blocks:[
                  {block: 'button', classlist: 'nav-link', content: loc.block_settings,
                    attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_block_tab'}
                  }
                ]},
                {block: 'li', classlist: 'nav-item', blocks:[
                  {block: 'button', classlist: 'nav-link', content: loc.structure,
                    attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_struct_tab'}
                  }
                ]}
              ]},
              {block: 'div', classlist: 'tab-content pt-3', blocks:[
                {block: 'div', classlist: 'tab-pane fade show active', id: 'rte_page_tab'},
                {block: 'div', classlist: 'tab-pane fade', id: 'rte_block_tab', blocks:[
                  {block: 'div', classlist: 'accordion accordion-flush rte_block_settings'}
                ]},
                {block: 'div', classlist: 'tab-pane fade', id: 'rte_struct_tab', blocks:[
                  {block: 'ul', classlist: 'nav nav-tabs mb-2', blocks:[
                    {block: 'li', classlist: 'nav-item', blocks:[
                      {block: 'button', classlist: 'nav-link active', content: loc.blocklist,
                        attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_blocklist_tab'}
                      }
                    ]},
                    {block: 'li', classlist: 'nav-item', blocks:[
                      {block: 'button', classlist: 'nav-link', content: loc.templates,
                        attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_templates_tab'}
                      }
                    ]}
                  ]},
                  {block:'div', classlist:'btn btn-sm btn-primary w-100 mb-2 rte_button',data:{action:'newblock'}, blocks:[
                    {block: 'span', classlist: 'rte_new_preview badge bg-dark'}
                  ]},
                  {block: 'div', classlist: 'tab-content', blocks:[
                    {block:'div',classlist:'tab-pane fade show active',id:'rte_blocklist_tab',blocks:[
                      {block:'div', classlist:'blocklist_wrapper'}
                    ]},
                    {block:'div',classlist:'tab-pane fade',id:'rte_templates_tab',blocks:[
                      {block:'div', classlist:'rte_bt'}
                    ]}
                  ]}
                ]}
              ]},
            ]},
            {block: 'div', classlist: 'offcanvas-footer p-3', blocks:[
              { block: 'div', classlist: 'btn btn-sm btn-primary rte_button w-100 mb-2',
                data:{action:'save'}, content: loc.save
              }
            ]}
          ]
        },
        { block: 'div', style: 'width: 350px' }
      ]
    },false))

    // создание полей настройки страницы
    generateFields()

    // остальные инициализации
    disableStandartCombinations()
    buttonsHandler(rte_actions)
    otherHandler()
    initRedirectInput()
    
    // отрисовка страницы
    renderPage()
  } else if (control.classList.contains('cde_editor')) {

    let result_field = document.querySelector('.result_content')
    
    cdeConfig('editor', {
      container: '.cde_editor',
      output: result_field,
      value: result_field.value,
      lang: control.dataset.lang,
      header: [{block: 'ul', classlist: 'nav align-items-center', blocks: [
        {block: 'li', classlist: 'nav-item w-25 me-2', blocks:[
          {block: 'input', type:'text', classlist: 'form-control form-control-sm bg-dark text-light', data:{redirectinput:'.result_title'}}
        ]},
        {block: 'li', classlist: 'nav-item', blocks:[
          {block: 'div', classlist: 'btn btn-sm btn-primary', content: loc.save, data:{redirectinput:'.rte_submit'}}
        ]}
      ]}]
    })
    
    // остальные инициализации
    initRedirectInput()
  }
  
}
function generateFields(paste_selector = '#rte_page_tab', form_selector = '.rte_result_form') {
  
  let form = document.querySelector(form_selector)
  let paste_in = document.querySelector(paste_selector)
  if (!form || !paste_in) return
  
  paste_in.appendChild(form)
}

// ----------------------------------------

function savePage() {
  formSave()
  document.querySelector('.rte_submit').click()
}

// ----------------------------------------

document.addEventListener("DOMContentLoaded", function () {
  var control = document.querySelector('.rte')
  if (control) generateRte(control)
})

function buttonsHandler(actions) {

  document.addEventListener('click', function(e){
    // слушаем функциональные кнопки
    if (e.target.classList.contains('btn'))
      if (e.target.dataset.hasOwnProperty('action'))
        if (actions.hasOwnProperty(e.target.dataset.action))
          actions[e.target.dataset.action](e.target)
    // снимаем маркировку блоков
    if (e.target.classList.contains('rte_control')) markBlock()
  })
}
function otherHandler(){
  // слушаем блоки
  listenBlocks(['.content', '#rte_blocklist_tab'])

  document.addEventListener('keydown', function (event) {
    // Ctrl+S
    if (ControlKeyCombo(event, 'KeyS')) formSave()

    if (document.activeElement.classList.contains('rte_sidebar') || document.activeElement.tagName == 'BODY') {
      // Ctrl+C
      if (ControlKeyCombo(event, 'KeyC')) copyBlock()
      // Crtrl+V
      if (ControlKeyCombo(event, 'KeyV')) {
        if (blockbuffer) {
          insertBlock(blockbuffer)
          renderPage()
        }
      }
      // Ctrl+X
      if (ControlKeyCombo(event, 'KeyX')) {
        copyBlock()
        if (blockbuffer) removeBlock()
      }
      // DEL
      if (event.code == 'Delete') removeBlock()
    }
  })
}
function listenBlocks(area_selectors) {
  area_selectors.forEach(s => {
    document.querySelector(s).addEventListener('click', function (e) {
      e.preventDefault()
      if (e.target.classList.contains('rteblock')) markBlock(e.target.dataset.block_name)
      if (e.target.classList.contains('rte_bi')) markBlock(e.target.dataset.target)
    })
  })
}

// ------------------------------------------------- FILEMANAGER

function fs(el) {
  // получить список файлов
  fetch("/admin/files/list").then((response) => {return response.json()}).then((data) => {
    // открыть файловую систему
    fileManager(data, el.dataset.target)
  })
}
function fileManager(files, target) {
  let fswin = {
    block: 'div',
    classlist: 'rte_filemanager',
    data: {target: target},
    blocks: [
      {
        block: 'div',
        classlist: 'wrapper',
        blocks: [
          {
            block: 'div',
            classlist: 'content',
            blocks: [
              {
                block: 'div',
                classlist: 'container-fluid',
                blocks: [ { block: 'div', classlist: 'row', blocks: [] } ]
              }
            ]
          },
          {
            block: 'div',
            classlist: 'sidebar',
            blocks: [
              { block: 'h5', classlist: 'title', style: 'overflow:hidden' },
              { block: 'hr' },
              { block: 'p', classlist: 'desc' },
              { block: 'p', classlist: 'url text-muted' },
              { block: 'hr' },
              { block: 'div', classlist: 'btn-group btn-group-sm w-100', blocks:[
                { block: 'div', classlist: 'btn btn-primary', data: {action: 'fs_open'}, content: loc.select },
                { block: 'div', classlist: 'btn btn-dark', data: {action: 'fs_close'}, content: loc.close }
              ]}
            ]
          }
        ]
      }
    ]
  }
  // draw window
  document.querySelector('body').appendChild(createBlock(fswin, false))
  // draw files
  let content = document.querySelector('.rte_filemanager .content .row')
  files.forEach( file => { content.appendChild(createFile(file)) })
}
function createFile(file){
  let preview = { block: 'div', blocks: [{ block: 'i', classlist: file.ext == 'dir' ? 'bi-folder' : `bi-filetype-${file.ext}` }] }
  
  if ( file.ext == 'jpg' || file.ext == 'jpeg' || file.ext == 'png' || file.ext == 'svg' || file.ext == 'bmp' ) {
    preview.style = "background: url('" + file.cover + "') no-repeat center; background-size: cover"
    preview.blocks[0].style = 'color: transparent'
  }

  let f = {
    block: 'div',
    classlist: 'rte_file col-xl-1 col-lg-2 col-md-3 col-sm-6',
    data: {
      title: file.title != undefined ? file.title : 'File',
      desc: file.desc != undefined ? file.desc : '',
      url: file.url != undefined ? file.url : ''
    },
    blocks: [
      {
        block: 'div',
        classlist: 'fwr',
        blocks: [ preview, { block: 'p', content: file.title } ]
      }
    ]
  }

  let element = createBlock(f, false)

  element.addEventListener('click', function(){
    if (element.classList.contains('active')) fs_openFile()
    else {
      let sb = document.querySelector('.rte_filemanager .rte_file.active')
      if (sb) sb.classList.remove('active')

      document.querySelector('.rte_filemanager .sidebar .title').textContent = element.dataset['title']
      document.querySelector('.rte_filemanager .sidebar .desc').textContent = element.dataset['desc']
      document.querySelector('.rte_filemanager .sidebar .url').textContent = element.dataset['url']

      this.classList.add('active')
    }
  })

  return element
}
function fs_openFile() {
  let result_url = document.querySelector('.rte_filemanager .rte_file.active').dataset['url']
  let result_target = document.querySelector('.rte_filemanager').dataset['target']
  fs_closeWindow()

  let f = document.querySelector(`.rte_sidebar [data-target='${result_target}']`)
  if(f && result_target != 'target') {
    f.value = result_url
    paramsbuffer[result_target] = result_url
  }

  formSave()
}
function fs_closeWindow() {
  document.querySelector('.rte_filemanager').remove()
}

// ------------------------------------------------- CODE EDITOR
// PARAMS
// editor_id
// header [] - массив блоков, которые будут вставлены в шапку редактора
// insert - селектор блока, в который будет вставлен редактор (по умолчанию .content)
// lang - язык программирования
// value - значение, которое будет в теле редактора при создании
function cdeEditor(params={}){
  let editor_id = params.editor_id ? params.editor_id : 'editor'
  let header = [
    { block: 'div', classlist: 'btn me-2 btn-sm btn-primary', content: loc.apply, data: { action: 'cde_apply' } },
    { block: 'div', classlist: 'btn me-2 btn-sm btn-dark', content: loc.get_json, data: { action: 'cde_get_json' } },
    { block: 'div', classlist: 'btn me-2 btn-sm btn-secondary', content: loc.close, data: { action: 'cde_close' } },
  ]

  let cde = {
    "block":"div",
    "classlist":"cdewrapper fade-in",
    style: 'position:absolute;height:100vh;width:100%;left:0;top:0;z-index:9999',
    "data":{"rte_content":""},
    "blocks":[
      {
        "block":"div",
        "classlist":"modal-dialog modal-fullscreen modal-dialog-scrollable",
        "blocks":[
          {
            "block":"div",
            "classlist":"modal-content",
            "blocks":[
              {
                "block":"div",
                "classlist":"modal-header cdeheader"
              },
              {
                "block":"div",
                "id": editor_id,
                "classlist":"modal-body cdebody"
              }
            ]
          }
        ]
      }
    ]
  }

  cdeConfig(editor_id, {
    container: params.insert || '.content',
    custom_editor: cde,
    lang: params.lang,
    value: params.value,
    header: params.header ? params.header : header
  })
}

// params:
// container: '.cde_editor' (*)
// custom_editor: {}
// lang: 'html'
// value: '<div></div>'
// output: Object значение внесется в Object.value (по умолч в '.cdewrapper'.dataset)
// header: [{},{}]
// header_selector: '.cdeheader'
function cdeConfig(editor_id, params) {
  
  let container = document.querySelector(params.container)
  if (!container) return
  
  // создаем тело редактора
  let cde = params.custom_editor ? params.custom_editor : {
    block: 'div', classlist: 'cdewrapper', blocks: [
      {block: 'nav', classlist: 'cdeheader'},
      {block: 'div', id: editor_id, classlist: 'cdebody'}
    ]
  }
  container.appendChild(createBlock(cde, false))

  // создаем шапку
  let control = container.querySelector(params.header_selector ? params.header_selector : '.cdeheader')
  if (control && params.header) control.appendChild(createBlock({
    block: 'div', blocks: params.header
  }, false))
  
  // находим тело редактора
  control = container.querySelector(`#${editor_id}`)
  if(!control) return

  let editor = ace.edit(editor_id)
  let output = params.output ? params.output : control.dataset

  ace.config.set("basePath", "https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.14")
  editor.setTheme("ace/theme/monokai")
  editor.getSession().setMode(`ace/mode/${params.lang ? params.lang : 'html'}`)
  editor.setBehavioursEnabled(true)
  editor.getSession().setTabSize(2)
  editor.setOption("enableLiveAutocompletion", true)
  editor.setOption("enableSnippets", true)
  
  editor.on('change', function(){ output.value = editor.getValue() })
  
  if (params.value) editor.setValue(params.value)
}
function cdeOpenIn() {
  let tmp = document.createElement('div')
  tmp.appendChild(createBlock(paramsbuffer, false))
  cdeEditor( { value: tmp.innerHTML } )
}
function cdeApply(){
  let editor_window = document.querySelector('.cdebody')
  let tmp = paramsbuffer.target
  paramsbuffer = rawConvert(toNode(editor_window.dataset.value))
  paramsbuffer.target = tmp

  cdeClose()
  formSave()
}
function cdeGetJson() {
  let editor_window = document.querySelector('.cdebody')
  alert(JSON.stringify(rawConvert(toNode(editor_window.dataset.value))))
}
function cdeClose() {
  let control = document.querySelector('.cdewrapper')
  if(control) control.remove()
}

// конвертация элемента в json
function rawConvert(element) {
  if (!element.tagName) return
  let result = {}
  result.block = element.tagName.toLowerCase()

  if (element.id) result.id = element.id
  if (element.className) result.classlist = element.className
  if (element.style.cssText) result.style = element.style.cssText
  if (element.firstChild && element.firstChild.nodeName == "#text") result.content = element.firstChild.nodeValue.trim()

  if (element.src) result.src = element.src
  if (element.href) result.href = element.href
  if (element.alt) result.alt = element.alt
  if (element.height) result.height = element.height
  if (element.width) result.width = element.width
  if (element.value) result.value = element.value

  if (element.type) result.type = element.type
  if (element.cols) result.value = element.value
  if (element.rows) result.value = element.value

  // конвертируем data аттрибуты
  if(element.dataset.length) {
    result.data = {}
    for (let k in element.dataset) result.data[k] = element.dataset[k]
  }

  // наполняем дочерними
  if (element.children.length != 0) {
    result.blocks = []

    for (let k in element.children) {
      let _b = rawConvert(element.children[k])
      if (_b) result.blocks.push(_b)
    }
  }

  return result
}
// конвертация строки в элемент
function toNode(htmlString) {
  let div = document.createElement('div')
  div.innerHTML = htmlString.trim()

  // Change this to div.childNodes to support multiple top-level nodes
  return div.firstChild
}

// -------------------------------------------------

function renderPage() {
  // кэшируем выбранный блок
  let ab = activeBlockName()

  let control = document.querySelector('.rte_control')
  // рисуем страницу
  control.innerHTML = ''
  control.appendChild(getRtePage(page.blocks))

  // формируем список блоков для блоклиста
  let bl = document.querySelector('.blocklist_wrapper')
  bl.innerHTML = ''
  bl.appendChild(getBlocklist(page.blocks))
  let pv = document.querySelector('.rte_new_preview')
  pv.textContent = newblockbuffer.title

  // формируем список блоков для шаблонлиста
  let tl = document.querySelector('.rte_bt')
  tl.innerHTML = ''
  tl.appendChild(getTemplateList(block_templates.blocks))

  // если до рендера был выбран блок - помечаем его
  let tb = document.querySelector(`[data-block_name="${ab}"]`)
  if (tb) tb.click()
}
// маркирует указанный блок
function markBlock(block_name=null) {
  // снимаем маркировки
  let active = document.querySelector('.rteblock.active')
  if (active) active.classList.remove('active')
  active = document.querySelector('.blocklist_wrapper .active')
  if (active) active.classList.remove('active')
  
  // маркируем в блоклисте
  if (block_name) {
    let b = document.querySelector('.rteblock[data-block_name="' + block_name + '"]')
    if(b) {
      b.classList.add('active')
      document.querySelector('.blocklist_wrapper [data-target="' + block_name + '"]').classList.add('active')
    }

    getBlockSettings(page.blocks.getBlock('block_name', block_name, 'blocks'), rte_forms)
  }
  else document.querySelector('.rte_block_settings').innerHTML = ''
  
}
// формирует строку (row) с шаблонами блоков
function getTemplateList(blocks) {

  let result = createBlock({ 'block':'div', classlist: 'list-group' }, false)

  blocks.forEach ( b => {

    let element = createBlock({
      block :'li',
      classlist : 'list-group-item',
      data : { target: b.block_name },
      content: `<span class="badge bg-dark p-1">${b.title}</span>`
    }, false)

    // при нажатии на блок - копируем его в newblockbuffer
    element.addEventListener('click', function(){
      newblockbuffer = blocks.getBlock('block_name', b.block_name)
      formSave()
    })

    result.appendChild(element)
  })

  return result
}
// формирует список (ul) блоков со всеми детьми
function getBlocklist(blocks) {
  let result = createBlock({ 'block':'ul', classlist: 'list-group mt-2' }, false)

  blocks.forEach ( b => {
    let element = createBlock({
      'block':'li',
      'classlist':'list-group-item rte_bi',
      'data':{'target': b.block_name},
      // 'content':`<span class="badge bg-dark">${b.block}</span><span class="ms-1 badge bg-secondary">${b.block_name}</span>  ${(b.content ? b.content.slice(0, 35) : b.title) || loc.empty}`,
      'content':`<span class="badge bg-dark">${b.block}</span>  ${(b.content ? b.content.slice(0, 30) : b.title) || loc.empty}`,
    }, false)
    
    if (b.hasOwnProperty('blocks')) element.appendChild(getBlocklist(b.blocks))

    result.appendChild(element)
  })

  return result
}
// формирует html страницу со всеми детьми
function getRtePage(blocks) {
  let result = document.createElement('div')

  blocks.forEach( b => {
    // создаем блок
    result.appendChild(createBlock(b))
  })

  return result
}
// формирует контент для сайдбара
function getBlockSettings(block, blocklib = rte_forms) {
  let form = document.querySelector('.rte_block_settings')
  form.innerHTML = ''
  if (!block) return
  
  let template = {}
  // получаем шаблон
  if (block.hasOwnProperty('template_name')) template = blocklib.getBlock('template_name', block.template_name)
  // если нет шаблона - берем стандартный шаблон
  else template = blocklib.getBlock('template_name', 'default')
  // наполняем
  form.appendChild(getForm(template, block))

  // слушаем
  form.addEventListener('input', function(e){
    let fd = e.target.dataset
    if (fd.target)
      multiTargetObjectParam(paramsbuffer, fd.target, e.target.value)
    else
      console.log('This field has no target!')
  })
  form.addEventListener('change', formSave)
}
// формирует форму
function getForm(template, block) {
  // очищаем буфер параметров
  // paramsbuffer = {}
  paramsbuffer = block
  // paramsbuffer.block = block.block
  paramsbuffer.target = block.block_name
  
  if (block.blocks) paramsbuffer.blocks = block.blocks

  let result = {'block' : 'div', 'blocks':[
    { block: 'div', classlist: 'btn btn-sm btn-dark w-100 mb-2', data: {action: 'cde_open_in'}, content: loc.code}
  ]}

  // для каждой группы полей создаем аккордион
  template.forms.forEach( group => {

    // если группа полей
    if (group.hasOwnProperty('title')) {
      let item = { 'block': 'div', 'classlist':'accordion-item','blocks':[
        { 
          'block': 'h2',
          'classlist': 'accordion-header accordion-button collapsed',
          content: group.title,
          attributes: {
            'data-bs-toggle': "collapse",
            'data-bs-target':`#rte_${ group.title.replace(/\s+/g, '') }`
          }
        }
      ]}
      // контейнер с содержимым
      let container = {
        'block': 'div',
        'id': `rte_${ group.title.replace(/\s+/g, '') }`,
        'classlist': 'accordion-collapse collapse pb-3',
        'blocks':[]
      }
      // наполнение контейнера полями группы
      group.forms.forEach(f => { container.blocks.push(createFormField(f, block)) })
  
      item.blocks.push(container)
      result.blocks.push(item)
    }

    // если простое поле или блок
    else result.blocks.push(createFormField(group, block))
    
  })
  
  return createBlock(result, false)
}
// создает DOM блок (не дает ему имя)
function createBlock(b, forRte = true) {
  // создаем оболочку блока
  let element = document.createElement(b.block)

  if (forRte) {
    // это добавляется только в РТЕ
    b.block_name = getName(b, page.blocks)
    element.dataset.block_name = b.block_name
    element.classList.add('rteblock')
    if (b.hasOwnProperty('block_template')) element.dataset.template = b.block_template
  }

  // наполняем блок остальным содержимым
  if (b.hasOwnProperty('id')) element.id = b.id
  if (b.hasOwnProperty('classlist')) element.className += (' ' + b.classlist)
  if (b.hasOwnProperty('style')) element.style.cssText = b.style
  if (b.hasOwnProperty('src')) element.setAttribute('src', b.src)
  if (b.hasOwnProperty('href')) element.setAttribute('href', b.href)
  if (b.hasOwnProperty('type')) element.setAttribute('type', b.type)
  if (b.hasOwnProperty('height')) element.height = b.height
  if (b.hasOwnProperty('width')) element.width = b.width
  if (b.hasOwnProperty('content')) element.innerHTML = b.content
  if (b.hasOwnProperty('value')) element.value = b.value
  if (b.hasOwnProperty('alt')) element.alt = b.alt
  if (b.hasOwnProperty('action')) element.action = b.action
  if (b.hasOwnProperty('placeholder')) element.placeholder = b.placeholder
  // autofocus
  // selected
  // autoplay
  // autocomplete
  // action
  // align
  // accept
  // headers 
  // form 
  // for 
  // formaction 
  // disabled 
  // download
  // datetime
  // controls 
  // cols 
  // colspan 
  // rows 
  // rowspan
  // required
  // rel 
  // media 
  // hidden
  // value
  // size 
  // wrap

  if (b.hasOwnProperty('data')) {
    for (let k in b.data) element.dataset[k] = b.data[k]
  }

  if (b.hasOwnProperty('attributes')) {
    for (let k in b.attributes) element.setAttribute(k, b.attributes[k])
  }

  // маркируем хэлперы
  if (b.rtype) {
    switch (b.rtype) {
      case 'helper':
        element.classList.add('rte_helper')
        element.prepend(createBlock({block: 'span', classlist: 'rte_helper_label', content: `${loc.helper}: ${b.helper}`}, false))
        break
      case 'attribute':
        element.classList.add('rte_attribute')
        element.innerHTML = `${loc.attribute}: ${b.params.attribute}`
    }
    // if (b.rtype == 'helper') {
      
    // }
    // if (b.rtype == 'attribute') element.classList.add('rte_attr')
    
  }

  // наполняем блок дочерними блоками
  if (b.hasOwnProperty('blocks')) {
    b.blocks.forEach( block => {
      element.appendChild(createBlock(block, forRte))
    })
  }

  return element
}

// создает поле формы (json) !!! доработать механику создания блока !!!
function createFormField(args, block){
  let field = {}
  // если поле - блок, создаем блок
  if(args.hasOwnProperty('block')) {
    // доработать тут
    Object.assign(field, args) 
    if (field.data && field.data.target) set_bat(field, block, field.data.target)
    if (args.blocks) {
      field.blocks = []
      args.blocks.forEach(b => field.blocks.push(createFormField(b, block)))
    }
  }
  else {
    field = {'block' : 'div', 'classlist':'mt-3', 'blocks':[]}

    if (args.hasOwnProperty('label')) field.blocks.push({'block':'label','classlist':'form-label','content':args.label})
    if (args.hasOwnProperty('input')) {

      let element = { 'block': args.input, 'classlist': 'form-control form-control-sm', 'data':{'target':args.target}}
      if (args.hasOwnProperty('type')) element.type = args.type
      if (args.hasOwnProperty('data')) element.data = Object.assign({}, element.data, args.data)
      
      set_bat(element, block, args.target)
      // let blockArgsTarget = multiTargetObjectParam(block, args.target)
      // if (blockArgsTarget) element.value = blockArgsTarget
      // if (blockArgsTarget) {
        // multiTargetObjectParam( paramsbuffer, args.target, blockArgsTarget)
        // element.value = blockArgsTarget
      // }

      field.blocks.push(element)
    }
    if (args.hasOwnProperty('description')) field.blocks.push({ 'block': 'div', 'classlist': 'form-text', 'content': args.description})
  }
  
  return field
}

function set_bat(element, block, target) {
  let blockArgsTarget = multiTargetObjectParam(block, target)
  if (blockArgsTarget) element.value = blockArgsTarget
}

// возвращает вложенную переменную ( 'params.lol.kek' => block['params']['lol']['kek'])
function multiTargetObjectParam(obj, target, value = null) {
  let path = target.split('.')
  
  for(var i = 0; i < path.length - 1; i++) {
    if (!obj[path[i]]) obj[path[i]] = {}
    obj = obj[path[i]]
  }
  if (value) obj[path[path.length - 1]] = value
  else return obj[path[path.length - 1]]
}

// создает новый блок
// params:
// 'template':object (вставит этот объект - приоритет)
// 'template_name':название шаблона из templates
// 'templates':массив объектов, среди которых будет искаться template_name
// 'inside':block_name (по умолчанию - страница)
// 'insert_position': append/prepend (по умолчанию - append)
function newBlock(params={}){
  let template = newblockbuffer

  if(params.hasOwnProperty('template')) template = params.template
  if(params.hasOwnProperty('template_name') && params.hasOwnProperty('templates')) template = params.templates.getBlock('template_name', params.template_name)

  insertBlock(template, params)

  renderPage()
}

// вставляет блок
// params:
// 'inside':block_name (по умолчанию - активный блок или страница)
// 'insert_position': append/prepend (по умолчанию - append)
function insertBlock(block, params={}) {
  // готовим контейнер, куда будем вставлять
  let container = {}
  if (params.hasOwnProperty('inside')) container = page.blocks.getBlock('block_name', params.inside, 'blocks')
  else container = page.blocks.getBlock('block_name', activeBlockName(), 'blocks')

  if(!container) container = page

  // если в контейнере нет блоков - создаем
  if (!container.hasOwnProperty('blocks')) container.blocks = []

  // если такой блок есть - перегенерируем ему имя
  let b = nameDuplicateProtected(block)

  // вставляем
  if(params.hasOwnProperty('insert_position') && params.insert_position == 'prepend') container.blocks.insertCopy(0,b)
  else container.blocks.insertCopy(container.blocks.length,b)
}

// скопировать активный блок
function copyBlock(){
  let block_name = activeBlockName()
  if(!block_name) return

  let block = page.blocks.getBlock('block_name',block_name,'blocks')
  
  blockbuffer = Object.assign({}, block)
}

// имя активного блока
function activeBlockName(){
  let control = document.querySelector('.rte_bi.active')
  if(!control) return null

  return control.dataset.target
}

// удалить выбранный блок (с классом active в блоклисте или по имени)
function removeBlock(block_name=null) {
  let target = block_name
  if(!block_name) target = document.querySelector('.rte_bi.active').dataset.target

  if(target) page.blocks.deleteBlock('block_name', target, 'blocks')
  else console.log('Target not found')

  renderPage()
  markBlock()
}

// перегенерировать блоку имя, если таой блок есть на странице
function nameDuplicateProtected(block) {
  let result = Object.assign({}, block)

  if(result.hasOwnProperty('block_name') && page.blocks.getBlock('block_name', result.block_name, 'blocks')) delete result.block_name
  result.block_name = getName(result, page.blocks)

  if(result.hasOwnProperty('blocks')) {
    result.blocks = []
    block.blocks.forEach( b => { result.blocks.push(nameDuplicateProtected(b)) })
  }

  return result
}

// сохранить форму
function formSave(){
  let block = page.blocks.getBlock('block_name', paramsbuffer.target, 'blocks')
  
  if (block) {
    for (var k in paramsbuffer) {
      if (k != 'target' && k != undefined) block[k] = paramsbuffer[k]
      if (paramsbuffer[k] == 'null' || paramsbuffer[k] == 'undefined' || paramsbuffer[k] == undefined || paramsbuffer[k] == null || paramsbuffer[k] == '' || k == 'undefined') delete block[k]
    }
  }
  
  // сохраняем страницу в форму
  let res_cont = document.querySelector('textarea.result_content')
  if (res_cont) res_cont.value = JSON.stringify(page)

  renderPage()
}

// -------- очень системные ----------------------------------

// поиск блока по значению ключа (включая вложенные в массив sk)
Array.prototype.getBlock = function ( k, v=null, sk = null) {
  if(!v) return v

  let result = this.find(e => e[k] == v)
  if(result) return result

  if(sk) {
    this.forEach( b => {
      if(!result && b.hasOwnProperty(sk)) result = b[sk].getBlock(k,v,sk)
    })
  }

  return result
}
// удалить блок по значению ключа (включая вложенные в массив sk)
Array.prototype.deleteBlock = function ( k, v, sk = null, i=0) {
  let index = this.getIndex(k,v)

  if (index >= 0) this.splice(index, 1)

  if(sk){
    this.forEach( b => {
      if(b.hasOwnProperty(sk)) b[sk].deleteBlock(k, v, sk, i+1)
    })
  }
}
// метод для вставки элемента в массив по указанному индексу
Array.prototype.insertCopy = function (index, item) {
  this.splice(index, 0, Object.assign({}, item))
}
// найти индекс объекта в массиве
Array.prototype.getIndex = function ( key, value ) {
  return this.map(e => e[key]).indexOf(value)
}

// создание уникального ключа для блока без имени
function getName(block, all_page_blocks) {
  if (!block.hasOwnProperty('block_name')) return getRandName(getNameList(all_page_blocks))

  return block.block_name
}
function getNameList(blocks) {
  let namelist = []

  blocks.forEach(b => {
    if (b.hasOwnProperty('block_name')) namelist.push(b.block_name)

    if (b.hasOwnProperty('blocks')) {
      getNameList(b.blocks).forEach(n => { namelist.push(n) })
    }
  })

  return namelist
}
function getRandName(namelist, prefix = 'ag_') {
  let name = prefix + Math.floor(Math.random() * 1000001)

  if (!namelist.includes(name)) return name

  getRandName(namelist, prefix)
}

// Блокировка стандартных комбинаций
function disableStandartCombinations() {
  document.onkeydown = function (event) {
    if ((event.ctrlKey && (event.code == 'KeyB')) || (event.ctrlKey && (event.code == 'KeyS'))) return false
  }

  // document.oncontextmenu = function () {
  //   return false
  // }
}
// Проверка комбинаций Ctrl+KEY
function ControlKeyCombo(event, key2) {
  if (event.ctrlKey && (event.code == key2)) return true
  return false
}

// редиректит ввод
function initRedirectInput() {
  // обратное заполнение (единоразово)
  reverseRedirectInput()
  // редирект ввода
  document.addEventListener('input', function(e){
    let target = document.querySelector(e.target.dataset.redirectinput)
    if (target) redirectInput(e.target, target)
  })
  document.addEventListener('change', function(e){
    let target = document.querySelector(e.target.dataset.redirectinput)
    if (target) redirectInput(e.target, target)
  })
  // редирект клика
  document.addEventListener('click', function(e){
    if (!e.target.classList.contains('btn')) return
    let target = document.querySelector(e.target.dataset.redirectinput)
    if (target) target.click()
  })
}
function redirectInput(input_from, input_to) {
  if (input_from && input_to) {
    if(input_to.tagName == 'SELECT') input_to.innerHTML = input_from.innerHTML
    if(input_to.type == 'checkbox' || input_to.type == 'radio') input_to.checked = input_from.checked
    input_to.value = input_from.value
  }
}
function reverseRedirectInput() {
  let ri = document.querySelectorAll('[data-redirectinput]')
  if (!ri || !ri.length) return

  ri.forEach(r => {
    let target = document.querySelector(r.dataset.redirectinput)
    
    if (target) redirectInput(target, r)
  })
}
