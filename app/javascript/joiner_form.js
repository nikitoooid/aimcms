var result_form, pair_table, last_row_id = 0

document.addEventListener("turbo:load", function () {
  result_form = document.querySelector('.joiner_pairs')
  pair_table = document.querySelector('.pair_table tbody')
  if (!result_form || !pair_table) return

  action_handler()
  prepare_rows()
})

function action_handler() {
  document.addEventListener('click', function (e) {
    let action = e.target.dataset['action']
    if (action && actions[action]) {
      console.log(`Action: ${e.target.dataset['action']}`)
      actions[action](e)
    }
  })

  document.addEventListener('change', function (e) {
    if (e.target.classList.contains('pairs')) {
      prepare_data();
    }
  })
}

var actions = {
  add: add_action,
  remove: remove_action
}

function add_action(e) {
  pair_table.appendChild(new_form_row({ 'indoor':'', 'outdoor':'', 'custom':'' }))
}

function remove_action(e) {
  if (e.target.dataset['target']) {
    let row = pair_table.querySelector(`tr[data-id="${e.target.dataset['target']}"]`)
    if (!row) return

    row.remove()
    prepare_data()
  }
}

function prepare_data() {

  let result = []
  let rows = pair_table.querySelectorAll('tr')
 
  rows.forEach(row => {
    let inputs = row.querySelectorAll('input')
    if (inputs[0].value && inputs[0].value != ''){
      result.push({
        "name": inputs[0].value,
        "support": { "name": inputs[1].value, "custom_name": inputs[2].value }
      })
    }
  })

  result_form.value = JSON.stringify(result)

}

function prepare_rows() {
  if (!result_form.value) return

  let json_data = JSON.parse(result_form.value)

  json_data.forEach(row => {
    pair_table.appendChild(new_form_row({
      'indoor': row['name'],
      'outdoor': row['support']['name'],
      'custom': row['support']['custom_name']
    }))
  })
}

function new_form_row(params) {
  let row = document.createElement('tr')
  last_row_id ++
  row.dataset.id = last_row_id

  for (const key in params) {
    let col = document.createElement('td')
    let input = document.createElement('input')
    input.className = 'form-control pairs'
    input.attributes['type'] = 'text'
    input.value = params[key]

    col.appendChild(input)
    row.appendChild(col)
  }

  let col = document.createElement('td')
  let rem_btn = document.createElement('div')
  rem_btn.className = 'btn btn-sm btn-danger'
  rem_btn.dataset.action = 'remove'
  rem_btn.dataset.target = last_row_id
  let icn = document.createElement('i')
  icn.className = 'bi-trash3-fill'


  rem_btn.appendChild(icn)
  col.appendChild(rem_btn)
  row.appendChild(col)

  return row
}
