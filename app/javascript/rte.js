// Languages
const langs = ['uk', 'en', 'ru']

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
      },
      {
        title: 'Bootstrap',
        'classlist': 'mt-3 mb-3',
        forms: [
          {
            'label': 'bs-target',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'data.bs_target'
          },
          {
            'label': 'bs-toggle',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'data.bs_toggle'
          },
          {
            'label': 'aria-controls',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.controls'
          },
          {
            'label': 'aria-expanded',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.expanded'
          },
          {
            'label': 'tabindex',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'tabindex'
          },
          {
            'label': 'aria-disabled',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.disabled'
          },
          {
            'label': 'aria-hidden',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.hidden'
          },
          {block: 'hr', classlist:'mb-3'},
          {
            'label': 'aria-label',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.label'
          },
          {
            'label': 'aria-labelledby',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'aria.labelledby'
          },
          {block: 'hr', classlist:'mb-3'},
          {
            'label': 'bs-ride',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'data.bs_ride'
          },
          {
            'label': 'bs-slide',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'data.bs_slide'
          },
          {
            'label': 'bs-slide-to',
            'classlist': 'mb-3',
            'input': 'input',
            'type': 'text',
            'target': 'data.bs_slide_to'
          }
        ]
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
  // link
  {
    'template_name' : 'link', 'forms' : [
      {
        'label': loc.href,
        'classlist': 'mb-3',
        'input': 'textarea',
        'target': 'href'
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
        'target': 'content'
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
        label: loc.title,
        input: 'input',
        type: 'text',
        target: 'title'
      },
      {block: 'hr'},
      { label: 'RTE type' },
      {
        block: 'select',
        classlist: 'form-select form-select-sm',
        data: { target: 'rtype' },
        blocks:[
          { block: 'option', value: 'helper', content: 'helper' },
          { block: 'option', value: 'attribute', content: 'attribute' }
        ]
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
        description: 'Model, that will be sent to helper'
      },
      {
        label: loc.data,
        input: 'input',
        type: 'text',
        target: 'params.hash_path',
        description: 'Path to data of page model, that will be sent to helper as hash'
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
          },
          {
            block: 'input',
            type: 'text',
            classlist: 'form-control',
            placeholder: 'limit',
            data: {target: 'params.limit'}
          },
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
  // advanced attribute
  {
    template_name: 'advanced_attribute', forms: [
      { block: 'h3', content: loc.attribute },
      {
        label: 'For block content',
        input: 'input',
        type: 'text',
        target: 'params.attribute.content'
      },
      {
        label: 'For block src',
        input: 'input',
        type: 'text',
        target: 'params.attribute.src'
      },
      {
        label: 'For block href',
        input: 'input',
        type: 'text',
        target: 'params.attribute.href'
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
  'expander' : expander,
  'make_multilang' : make_multilang,
  'make_onelang' : make_onelang,
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

// var current             // c ?????????? ?????????? ?????????????? ???????????? ???????????????? ???????????????? (????????????????/????????????). ?????????????????????? ?? content.rte.data-type
var paramsbuffer = {}   // ?????????? ???????????????????? ??????????
// var blockbuffer         // ?????????? ?????? ?????????????????????? ??????????
var newblockbuffer = {block: 'div', title: 'advanced block', template_name: 'advanced'}      // ?????????? ???????????? ??????????

function expander(btn) {
  let target = document.querySelector(`.rte_bi[data-target="${btn.dataset['target']}"]`)
  let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
  let json_target = page_blocks.getBlock('block_name', btn.dataset['target'], 'blocks')
  if (!target || !json_target) return

  if (!json_target.hasOwnProperty('expanded') || json_target['expanded']) {
    json_target['expanded'] = false
    target.classList.add('unexpanded')
  }
  else {
    json_target['expanded'] = true
    target.classList.remove('unexpanded')
  }
}
// ----------------------------------------

function generateRte(control) {
  
  if(control.classList.contains('rte_editor')) {
    // ?????????? ????????????
    if (!sessionStorage.getItem('block_buffer')) sessionStorage.setItem('block_buffer', '')
    
    // ?????????????????? ?????????????? ???? ????????????????????
    block_templates = sort_templates(block_templates)

    // ?????????????? ?????????????? ??????????????
    control.appendChild(createBlock({
      block: 'div', classlist: 'rte_body',
      style: 'height: 100%', blocks: [
      { block: 'div', blocks: [
        { block: 'div', classlist: 'rte_control' },
      ]},
    ]},false))

    // ?????????????? ???????????? ????????????????????????
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
            { block: 'div', classlist: 'offcanvas-header'},
            {block: 'div', classlist: 'offcanvas-body', blocks:[
              {block: 'ul', classlist: 'nav nav-tabs', blocks:[
                {block: 'li', classlist: 'nav-item', blocks:[
                  {block: 'button', classlist: 'nav-link active', content: loc.page_settings,
                    attributes: {'data-bs-toggle':'tab', 'data-bs-target':'#rte_page_tab'}
                  }
                ]},
                {block: 'li', classlist: 'nav-item', blocks:[
                  {block: 'button', classlist: 'nav-link', id: 'block_settings', content: loc.block_settings,
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

    // ???????????????? ?????????? ?????????????????? ????????????????
    generateFields()

    // ?????????????????? ??????????????????????????
    disableStandartCombinations()
    buttonsHandler(rte_actions)
    otherHandler()
    initRedirectInput()

    // ?????????? ??????????
    add_multilang_select_in(document.querySelector('.rte_sidebar .offcanvas-header'))
    if (!page.multilang) document.querySelector('#rte_page_tab').prepend(createBlock({
                                                                  block: 'div',
                                                                  classlist: 'btn btn-sm btn-dark w-100 text-warning',
                                                                  data: {action: 'make_multilang', target: 'page'},
                                                                  content: loc.make_multilang
                                                                },false))
    else document.querySelector('#rte_page_tab').prepend(createBlock({
                                                                  block: 'div',
                                                                  classlist: 'btn btn-sm w-100 btn-dark text-info',
                                                                  data: {action: 'make_onelang', target: 'page'},
                                                                  content: loc.make_onelang
                                                                },false))

    // if (page.multilang) add_multilang_select_in(sidebar_header)
    // else {
    //   sidebar_header.appendChild(createBlock({
    //     block: 'div',
    //     classlist: 'btn btn-sm btn-dark',
    //     data: {action: 'make_multilang', target: 'page'},
    //     content: loc.make_multilang
    //   },false))
    // }

    // ?????????????????? ????????????????
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
    
    // ?????????????????? ??????????????????????????
    initRedirectInput()
  }
  
}

// ?????????????? ????????????????/???????????? ????????????????????????????
function make_multilang(object) {
  if (!object || !object.dataset['target']) return

  if (object.dataset['target'] == 'page') {
    migrate_to_multilang(page, langs)
    object.textContent = loc.make_onelang
    object.dataset['action'] = 'make_onelang'
    object.classList.remove('text-warning')
    object.classList.add('text-info')
    return
  }

  if (page['multilang']) return
  let target = page['blocks'].getBlock('block_name', object.dataset['target'], 'blocks')
  
  if (target) migrate_to_multilang(target, langs)

  renderPage()
}
function make_onelang(object) {
  if (!object || !object.dataset['target']) return
  
  if(object.dataset['target'] == 'page') {
    restore_to_current_lang(page)
    object.textContent = loc.make_multilang
    object.dataset['action'] = 'make_multilang'
    object.classList.remove('text-info')
    object.classList.add('text-warning')
  }
  else {
    let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
    restore_to_current_lang(page_blocks.getBlock('block_name', object.dataset['target'], 'blocks'))
  }
  
  renderPage()
}

function migrate_to_multilang(resource, langs) {
  let newResource = Object.assign({}, resource)

  langs.forEach(l => {
    if (!resource[l]) resource[l] = Object.assign({}, newResource)
  })

  if (resource['blocks']) delete resource['blocks']
  resource['multilang'] = true
}
function restore_to_current_lang(resource) {
  let newResource = Object.assign({}, resource)
  for (let key in resource) delete resource[key]
  for (let key in newResource[language]) resource[key] = newResource[language][key]
}
function add_multilang_select_in(object){
  // ?????????????????????????? ???????????? ???????????? ?????? ?????????????????????????????? ?? ??????????
  // migrate_to_multilang(page, langs)
  // ???????? ???????????? ??????????
  object.appendChild(createBlock({
    block: 'select',
    classlist: 'form-select w-100 form-select-sm language-select',
    blocks:[
      { block: 'option', value: 'uk', content: '????????????????????'},
      { block: 'option', value: 'en', content: 'English'},
      { block: 'option', value: 'ru', content: '???????????????????????? ????????'}
    ]
  },false))

  // ?????????????????? ??????????
  let langselect = document.querySelector('.language-select')
  langselect.value = language

  langselect.addEventListener('change', function(){
    formSave()
    language = langselect.value
    renderPage()
  })
}


function generateFields(paste_selector = '#rte_page_tab', form_selector = '.rte_result_form') {
  
  let form = document.querySelector(form_selector)
  let paste_in = document.querySelector(paste_selector)
  if (!form || !paste_in) return
  
  paste_in.appendChild(form)
}
function sort_templates(templates) {
  let result = {}

  // ?????????????? ?????????????????? "?????? ??????????????????"
  result[loc.nocategory] = []
  
  // ?????????????? ??????????????????
  templates.blocks.forEach(e => {
    if (e['category'] && !result.hasOwnProperty(e['category'])) result[e.category] = []
  })

  // ?????????????????? ??????????????????
  templates.blocks.forEach(e => {
    if (e['category']) result[e.category].push(e)
    else result[loc.nocategory].push(e)
  })

  return result
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

function block_buffer(block = null) {
  if (block) {
    sessionStorage.setItem('block_buffer', JSON.stringify(block))
    return
  }

  let bb = sessionStorage.getItem('block_buffer')
  if (bb && bb != '') return JSON.parse(bb)
}

function buttonsHandler(actions) {

  document.addEventListener('click', function(e){
    // ?????????????? ???????????????????????????? ????????????
    if (e.target.classList.contains('btn') || e.target.classList.contains('nbtn'))
      if (e.target.dataset.hasOwnProperty('action'))
        if (actions.hasOwnProperty(e.target.dataset.action))
          actions[e.target.dataset.action](e.target)
    // ?????????????? ???????????????????? ????????????
    if (e.target.classList.contains('rte_control')) markBlock()
  })
}
function otherHandler(){
  // ?????????????? ??????????
  listenBlocks(['.content', '#rte_blocklist_tab'])

  document.addEventListener('keydown', function (event) {
    // Ctrl+S
    if (ControlKeyCombo(event, 'KeyS')) formSave()

    if (document.activeElement.classList.contains('rte_sidebar') || document.activeElement.tagName == 'BODY') {
      // Ctrl+C
      if (ControlKeyCombo(event, 'KeyC')) copyBlock()
      // Crtrl+V
      if (ControlKeyCombo(event, 'KeyV')) {
        if (block_buffer()) {
          insertBlock(block_buffer())
          renderPage()
        }
      }
      // Ctrl+X
      if (ControlKeyCombo(event, 'KeyX')) {
        copyBlock()
        if (block_buffer()) removeBlock()
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
  // ???????????????? ???????????? ????????????
  fetch("/admin/files/list").then((response) => {return response.json()}).then((data) => {
    // ?????????????? ???????????????? ??????????????
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
      category: file.category != undefined ? file.category : '',
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
// header [] - ???????????? ????????????, ?????????????? ?????????? ?????????????????? ?? ?????????? ??????????????????
// insert - ???????????????? ??????????, ?? ?????????????? ?????????? ???????????????? ???????????????? (???? ?????????????????? .content)
// lang - ???????? ????????????????????????????????
// value - ????????????????, ?????????????? ?????????? ?? ???????? ?????????????????? ?????? ????????????????
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
// output: Object ???????????????? ???????????????? ?? Object.value (???? ?????????? ?? '.cdewrapper'.dataset)
// header: [{},{}]
// header_selector: '.cdeheader'
function cdeConfig(editor_id, params) {
  
  let container = document.querySelector(params.container)
  if (!container) return
  
  // ?????????????? ???????? ??????????????????
  let cde = params.custom_editor ? params.custom_editor : {
    block: 'div', classlist: 'cdewrapper', blocks: [
      {block: 'nav', classlist: 'cdeheader'},
      {block: 'div', id: editor_id, classlist: 'cdebody'}
    ]
  }
  container.appendChild(createBlock(cde, false))

  // ?????????????? ??????????
  let control = container.querySelector(params.header_selector ? params.header_selector : '.cdeheader')
  if (control && params.header) control.appendChild(createBlock({
    block: 'div', blocks: params.header
  }, false))
  
  // ?????????????? ???????? ??????????????????
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

// ?????????????????????? ???????????????? ?? json
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

  // ???????????????????????? data ??????????????????
  if(element.dataset.length) {
    result.data = {}
    for (let k in element.dataset) result.data[k] = element.dataset[k]
  }

  // ?????????????????? ??????????????????
  if (element.children.length != 0) {
    result.blocks = []

    for (let k in element.children) {
      let _b = rawConvert(element.children[k])
      if (_b) result.blocks.push(_b)
    }
  }

  return result
}
// ?????????????????????? ???????????? ?? ??????????????
function toNode(htmlString) {
  let div = document.createElement('div')
  div.innerHTML = htmlString.trim()

  // Change this to div.childNodes to support multiple top-level nodes
  return div.firstChild
}

// -------------------------------------------------

function renderPage() {
  // ??????????
  let blocks = page['multilang'] ? page[language]['blocks'] : page['blocks']

  // ???????????????? ?????????????????? ????????
  let ab = activeBlockName()

  let control = document.querySelector('.rte_control')
  // ???????????? ????????????????
  control.innerHTML = ''
  control.appendChild(getRtePage(blocks))

  // ?????????????????? ???????????? ???????????? ?????? ??????????????????
  let bl = document.querySelector('.blocklist_wrapper')
  bl.innerHTML = ''
  bl.appendChild(getBlocklist(blocks))
  let pv = document.querySelector('.rte_new_preview')
  pv.textContent = newblockbuffer.title

  // ?????????????????? ???????????? ???????????? ?????? ??????????????????????
  let tl = document.querySelector('.rte_bt')
  tl.innerHTML = ''
  tl.appendChild(getTemplates(block_templates))

  // ???????? ???? ?????????????? ?????? ???????????? ???????? - ???????????????? ??????
  let tb = document.querySelector(`[data-block_name="${ab}"]`)
  if (tb) tb.click()
}
// ?????????????????? ?????????????????? ????????
function markBlock(block_name=null) {
  // ?????????????? ????????????????????
  let active = document.querySelector('.rteblock.active')
  if (active && active.dataset['block_name'] == block_name) {
    let tab = document.querySelector('#block_settings')
    if (tab) tab.click()
    return
  }
  if (active) active.classList.remove('active')
  active = document.querySelector('.blocklist_wrapper .active')
  if (active) active.classList.remove('active')
  
  // ?????????????????? ?? ??????????????????
  if (block_name) {
    let b = document.querySelector('.rteblock[data-block_name="' + block_name + '"]')
    if(b) {
      b.classList.add('active')
      document.querySelector('.blocklist_wrapper [data-target="' + block_name + '"]').classList.add('active')
    }

    let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
    getBlockSettings(page_blocks.getBlock('block_name', block_name, 'blocks'), rte_forms)
  }
  else document.querySelector('.rte_block_settings').innerHTML = ''
  
}
function getTemplates(templates) {
  let result = document.createElement('div')
  result.className = 'accordion'

  let result_buffer = {}

  for (let category in templates)
    result_buffer[category] = getTemplateList(templates[category])
  
  for (let category in result_buffer) {
    if (category == loc.nocategory) continue
    
    let item = createBlock({ 'block': 'div', 'classlist':'accordion-item','blocks':[
      { 
        'block': 'h2',
        'classlist': 'accordion-header accordion-button collapsed',
        content: category,
        attributes: {
          'data-bs-toggle': "collapse",
          'data-bs-target':`#category_${ category.replace(/\s+/g, '') }`
        }
      }
    ]}, false)

    // ?????????????????? ?? ????????????????????
    let container = createBlock({
      'block': 'div',
      'id': `category_${ category.replace(/\s+/g, '') }`,
      'classlist': 'accordion-collapse collapse p-2'
    }, false)

    container.appendChild(result_buffer[category])
    item.appendChild(container)
    result.appendChild(item)
  }
  
  result_buffer[loc.nocategory].style.cssText = 'margin-top: .3em'
  result.appendChild(result_buffer[loc.nocategory])

  return result
}
// ?????????????????? ???????????? (div.list-group) ?? ?????????????????? ????????????
function getTemplateList(blocks) {

  let result = createBlock({ 'block':'div', classlist: 'list-group' }, false)

  blocks.forEach ( b => {
    if (!b.block_name) {
      let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
      b.block_name = getName(b, page_blocks)
    }
    
    let element = createBlock({
      block :'li',
      classlist : 'list-group-item',
      data : { target: b.block_name },
      content: `<span class="badge bg-dark p-1">${b.title}</span>`
    }, false)

    // ?????? ?????????????? ???? ???????? - ???????????????? ?????? ?? newblockbuffer
    element.addEventListener('click', function(){
      newblockbuffer = blocks.getBlock('block_name', b.block_name)
      formSave()
    })

    result.appendChild(element)
  })

  return result
}
// ?????????????????? ???????????? (ul) ???????????? ???? ?????????? ????????????
function getBlocklist(blocks) {
  
  let result = createBlock({ 'block':'ul', classlist: 'list-group mt-2' }, false)

  blocks.forEach ( b => {
    let element = createBlock({
      'block':'li',
      'classlist':`list-group-item rte_bi`,
      'data':{'target': b.block_name},
      'content':`<span class="badge bg-dark">${b.block}${b.multilang ? ' <span style="color:var(--bs-danger)">m</span>' : ''}</span>  ${(b.content ? (b.content[language] ? b.content[language].slice(0, 20) : b.content.slice(0, 22)) : b.title) || loc.empty}`,
    }, false)
    
    let expander_btn = { block:'div', classlist: 'nbtn', data:{action: 'expander', target: b.block_name} }

    if (b[language] && b[language]['blocks'] && b[language]['blocks'].length) {
      if(b.hasOwnProperty('expanded') && !b['expanded']) element.classList.add('unexpanded')
      element.prepend(createBlock(expander_btn, false))
      element.appendChild(getBlocklist(b[language]['blocks']))
    } else if(b.hasOwnProperty('blocks') && b['blocks'].length){
      if(b.hasOwnProperty('expanded') && !b['expanded']) element.classList.add('unexpanded')
      element.prepend(createBlock(expander_btn, false))
      element.appendChild(getBlocklist(b['blocks']))
    } else {
      if (b.hasOwnProperty('expanded') && !b['expanded']) b['expanded'] = true
    }
    result.appendChild(element)
  })

  return result
}
// ?????????????????? html ???????????????? ???? ?????????? ????????????
function getRtePage(blocks) {
  let result = document.createElement('div')

  blocks.forEach( b => {
    // ?????????????? ????????
    result.appendChild(createBlock(b))
  })

  return result
}
// ?????????????????? ?????????????? ?????? ????????????????
function getBlockSettings(block, blocklib = rte_forms) {
  let form = document.querySelector('.rte_block_settings')
  form.innerHTML = ''
  if (!block) return
  
  let template;
  // ???????????????? ????????????
  if (block.hasOwnProperty('template_name')) template = blocklib.getBlock('template_name', block.template_name)
  // ???????? ?????? ?????? ???? ???????????????????? ?????????????? - ?????????? ?????????????????????? ????????????
  if(!template) template = blocklib.getBlock('template_name', 'default')
  // ??????????????????
  form.appendChild(getForm(template, block))

  // ??????????????
  form.addEventListener('input', function(e){
    let fd = e.target.dataset
    if (fd.target)
      multiTargetObjectParam(paramsbuffer, fd.target, e.target.value)
    else
      console.log('This field has no target!')
  })
  form.addEventListener('change', formSave)

  // ?????? ?????????????????????????? ???????????????? ?????????????? ???????? ???? ?????? ?????????????????????????? ????????????
  if (page.multilang && block.multilang) restore_to_current_lang(block)
}
// ?????????????????? ??????????
function getForm(template, block) {
  // ?????????????? ?????????? ????????????????????
  // paramsbuffer = {}
  paramsbuffer = block
  // paramsbuffer.block = block.block
  paramsbuffer.target = block.block_name
  
  if (block.blocks) paramsbuffer.blocks = block.blocks


  // -------------------------------------------------
  let result = {'block' : 'div', 'blocks':[
    { block: 'div', classlist: 'btn-group mb-2 w-100', blocks: [
      { block: 'div', classlist: 'btn btn-sm btn-dark', data: {action: 'cde_open_in'}, content: loc.code}
    ]}
  ]}

  // ?????????????????? ???????????? ???????????????? ?????????????????????????????? ??????????
  if (!page.multilang) {
    if (block.multilang) result.blocks[0].blocks.push({
      block: 'div',
      classlist: 'btn btn-sm btn-dark text-info',
      data: {action: 'make_onelang', target: block.block_name},
      content: loc.make_onelang
    })
    else result.blocks[0].blocks.push({
      block: 'div',
      classlist: 'btn btn-sm btn-dark text-warning',
      data: {action: 'make_multilang', target: block.block_name},
      content: loc.make_multilang
    })
  } 
  // -------------------------------------------------


  // ?????? ???????????? ???????????? ?????????? ?????????????? ??????????????????
  template.forms.forEach( group => {

    // ???????? ???????????? ??????????
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
      // ?????????????????? ?? ????????????????????
      let container = {
        'block': 'div',
        'id': `rte_${ group.title.replace(/\s+/g, '') }`,
        'classlist': 'accordion-collapse collapse pb-3',
        'blocks':[]
      }
      // ???????????????????? ???????????????????? ???????????? ????????????
      group.forms.forEach(f => { container.blocks.push(createFormField(f, block)) })
  
      item.blocks.push(container)
      result.blocks.push(item)
    }

    // ???????? ?????????????? ???????? ?????? ????????
    else result.blocks.push(createFormField(group, block))
    
  })
  
  return createBlock(result, false)
}
// ?????????????? DOM ???????? (???? ???????? ?????? ??????)
function createBlock(eb, forRte = true) {
  let b = eb['multilang'] && eb[language] ? eb[language] : eb
  // ?????????????? ???????????????? ??????????
  let element = document.createElement(b.block)

  if (forRte) {
    // ?????? ?????????????????????? ???????????? ?? ??????
    b.block_name = getName(b, page.multilang ? page[language]['blocks'] : page['blocks'])
    element.dataset.block_name = b.block_name
    element.classList.add('rteblock')
    if (b.hasOwnProperty('block_template')) element.dataset.template = b.block_template
  }

  // ?????????????????? ???????? ?????????????????? ????????????????????
  if (b.hasOwnProperty('id')) element.id = b.id
  if (b.hasOwnProperty('classlist')) element.className += (' ' + b.classlist)
  if (b.hasOwnProperty('style')) element.style.cssText = b.style
  if (b.hasOwnProperty('src')) element.setAttribute('src', b.src)
  if (b.hasOwnProperty('href')) element.setAttribute('href', b.href)
  if (b.hasOwnProperty('type')) element.setAttribute('type', b.type)
  if (b.hasOwnProperty('height')) element.height = b.height
  if (b.hasOwnProperty('width')) element.width = b.width
  if (b.hasOwnProperty('value')) element.value = b.value
  if (b.hasOwnProperty('alt')) element.alt = b.alt
  if (b.hasOwnProperty('action')) element.action = b.action
  if (b.hasOwnProperty('placeholder')) element.placeholder = b.placeholder
  if (b.hasOwnProperty('content')) element.innerHTML = b['content']
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

  // ?????????????????? ??????????????
  if (b.rtype) {
    switch (b.rtype) {
      case 'helper':
        element.classList.add('rte_helper')
        element.prepend(createBlock({block: 'span', classlist: 'rte_helper_label', content: `${loc.helper}: ${b.helper}`}, false))
        break
      case 'attribute':
        element.classList.add('rte_attribute')
        element.src = '/default-image.png'
        let inner = {
          block: 'span', blocks: [
            {block: 'span', classlist: 'badge m-1 bg-dark', content: b.block},
            {block: 'span', content: `${loc.attribute}: ${b.params && b.params.attribute ?
              b.params.attribute.href || b.params.attribute.content || b.params.attribute.src :
              "-"}`}
          ]
        }
        element.appendChild(createBlock(inner, false))
        break
    }
  }

  // ?????????????????? ???????? ?????????????????? ??????????????
  // if (b.hasOwnProperty(language)) {
  //   b[language]['blocks'].forEach( block => {
  //     element.appendChild(createBlock(block, forRte))
  //   })
  // } else 
  if (b.hasOwnProperty('blocks')) {
    b['blocks'].forEach( block => {
      element.appendChild(createBlock(block, forRte))
    })
  }

  return element
}

// ?????????????? ???????? ?????????? (json) !!! ???????????????????? ???????????????? ???????????????? ?????????? !!!
function createFormField(args, block){
  let field = {}
  // ???????? ???????? - ????????, ?????????????? ????????
  if(args.hasOwnProperty('block')) {
    // ???????????????????? ??????
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

// ???????????????????? ?????????????????? ???????????????????? ( 'params.lol.kek' => block['params']['lol']['kek'])
function multiTargetObjectParam(object, target, value = null) {
  let path = target.split('.')
  
  let obj = object.multilang ? object[language] : object
  //?????? ???????? "content" - ???????????? ?????????????? (?? ???????????????????????? ?? ?????????????????????????? ??????????????????????????????)
  // if (target == 'content') {
  //   if (value) {
  //     if (obj.multilang) obj[language][target] = value
  //     else obj[target] = value
  //     return
  //   }
  //   else {
  //     if (obj.multilang) return obj[language][target]
  //     else return obj[target]
  //   }
  // }

  for(var i = 0; i < path.length - 1; i++) {
    if (!obj[path[i]]) obj[path[i]] = {}
    obj = obj[path[i]]
  }
  if (value) obj[path[path.length - 1]] = value
  else return obj[path[path.length - 1]]
}

// ?????????????? ?????????? ????????
// params:
// 'template':object (?????????????? ???????? ???????????? - ??????????????????)
// 'template_name':???????????????? ?????????????? ???? templates
// 'templates':???????????? ????????????????, ?????????? ?????????????? ?????????? ???????????????? template_name
// 'inside':block_name (???? ?????????????????? - ????????????????)
// 'insert_position': append/prepend (???? ?????????????????? - append)
function newBlock(params={}){
  let template = newblockbuffer

  if(params.hasOwnProperty('template')) template = params.template
  if(params.hasOwnProperty('template_name') && params.hasOwnProperty('templates')) template = params.templates.getBlock('template_name', params.template_name)

  insertBlock(template, params)

  renderPage()
}

// ?????????????????? ????????
// params:
// 'inside':block_name (???? ?????????????????? - ???????????????? ???????? ?????? ????????????????)
// 'insert_position': append/prepend (???? ?????????????????? - append)
function insertBlock(block, params={}) {
  // ?????????????? ??????????????????, ???????? ?????????? ??????????????????
  let container = {}
  let page_ml = page.multilang ? page[language] : page
  if (params.hasOwnProperty('inside')) container = page_ml['blocks'].getBlock('block_name', params.inside, 'blocks')
  else container = page_ml['blocks'].getBlock('block_name', activeBlockName(), 'blocks')

  if(!container) container = page_ml

  // ???????? ?? ???????????????????? ?????? ???????????? - ??????????????
  if (!container.hasOwnProperty('blocks')) container.blocks = []

  // ???????? ?????????? ???????? ???????? - ???????????????????????????? ?????? ??????
  let b = nameDuplicateProtected(block)

  // ??????????????????
  if(params.hasOwnProperty('insert_position') && params.insert_position == 'prepend') container.blocks.insertCopy(0,b)
  else container.blocks.insertCopy(container.blocks.length,b)
}

// ?????????????????????? ???????????????? ????????
function copyBlock(){
  let block_name = activeBlockName()
  if(!block_name) return

  let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
  let block = page_blocks.getBlock('block_name',block_name,'blocks')
  
  // window.blockbuffer = Object.assign({}, block)
  block_buffer(block)
}

// ?????? ?????????????????? ??????????
function activeBlockName(){
  let control = document.querySelector('.rte_bi.active')
  if(!control) return null

  return control.dataset.target
}

// ?????????????? ?????????????????? ???????? (?? ?????????????? active ?? ?????????????????? ?????? ???? ??????????)
function removeBlock(block_name=null) {
  let target = block_name
  if(!block_name) target = document.querySelector('.rte_bi.active').dataset.target

  let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']

  if(target) page_blocks.deleteBlock('block_name', target, 'blocks')
  else console.log('Target not found')

  renderPage()
  markBlock()
}

// ???????????????????????????????? ?????????? ??????, ???????? ???????? ???????? ???????? ???? ????????????????
function nameDuplicateProtected(block) {
  let result = Object.assign({}, block)

  let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']

  if(result.hasOwnProperty('block_name') && page_blocks.getBlock('block_name', result.block_name, 'blocks')) delete result.block_name
  result.block_name = getName(result, page_blocks)

  if(result.hasOwnProperty('blocks')) {
    result.blocks = []
    block.blocks.forEach( b => { result.blocks.push(nameDuplicateProtected(b)) })
  }

  return result
}

// ?????????????????? ??????????
function formSave(){
  let page_blocks = page.multilang ? page[language]['blocks'] : page['blocks']
  let block = page_blocks.getBlock('block_name', paramsbuffer.target, 'blocks')
  
  if (block) {
    for (var k in paramsbuffer) {
      if (k != 'target' && k != undefined) block[k] = paramsbuffer[k]
      if (paramsbuffer[k] == 'null' || paramsbuffer[k] == 'undefined' || paramsbuffer[k] == undefined || paramsbuffer[k] == null || paramsbuffer[k] == '' || k == 'undefined') delete block[k]
    }

    if (block.hasOwnProperty('target')) delete block['target']
  }
  
  // ?????????????????? ???????????????? ?? ??????????
  let res_cont = document.querySelector('textarea.result_content')
  if (res_cont) res_cont.value = JSON.stringify(page)

  renderPage()
}

// -------- ?????????? ?????????????????? ----------------------------------

// ?????????? ?????????? ???? ???????????????? ?????????? (?????????????? ?????????????????? ?? ???????????? sk)
Array.prototype.getBlock = function ( k, v=null, sk = '') {
  if(!v) return v

  let result = this.find(e => e[k] == v)
  if(result) return result

  this.forEach( b => {
    if(!result) {
      if (b[sk]) result = b[sk].getBlock(k,v,sk)
      else if (b['multilang'] && b[language] && b[language][sk]) result = b[language][sk].getBlock(k,v,sk)
    }
  })

  return result
}
// ?????????????? ???????? ???? ???????????????? ?????????? (?????????????? ?????????????????? ?? ???????????? sk)
Array.prototype.deleteBlock = function ( k, v, sk = null, i=0) {
  let index = this.getIndex(k,v)

  if (index >= 0) this.splice(index, 1)

  if(sk){
    this.forEach( b => {
      if(b.hasOwnProperty(sk)) b[sk].deleteBlock(k, v, sk, i+1)
    })
  }
}
// ?????????? ?????? ?????????????? ???????????????? ?? ???????????? ???? ???????????????????? ??????????????
Array.prototype.insertCopy = function (index, item) {
  this.splice(index, 0, Object.assign({}, item))
}
// ?????????? ???????????? ?????????????? ?? ??????????????
Array.prototype.getIndex = function ( key, value ) {
  return this.map(e => e[key]).indexOf(value)
}

// ???????????????? ?????????????????????? ?????????? ?????? ?????????? ?????? ??????????
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

  return getRandName(namelist, prefix)
}

// ???????????????????? ?????????????????????? ????????????????????
function disableStandartCombinations() {
  document.onkeydown = function (event) {
    if ((event.ctrlKey && (event.code == 'KeyB')) || (event.ctrlKey && (event.code == 'KeyS'))) return false
  }

  // document.oncontextmenu = function () {
  //   return false
  // }
}
// ???????????????? ???????????????????? Ctrl+KEY
function ControlKeyCombo(event, key2) {
  if (event.ctrlKey && (event.code == key2)) return true
  return false
}

// ???????????????????? ????????
function initRedirectInput() {
  // ???????????????? ???????????????????? (??????????????????????)
  reverseRedirectInput()
  // ???????????????? ??????????
  document.addEventListener('input', function(e){
    let target = document.querySelector(e.target.dataset.redirectinput)
    if (target) redirectInput(e.target, target)
  })
  document.addEventListener('change', function(e){
    let target = document.querySelector(e.target.dataset.redirectinput)
    if (target) redirectInput(e.target, target)
  })
  // ???????????????? ??????????
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
