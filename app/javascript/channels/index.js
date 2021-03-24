// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


$('#field1').on 'change', ->
  $('#field2').val(@value)
  $('#field3').val(@value)