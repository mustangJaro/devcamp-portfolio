ready = ->
	new Typed '.element',
		stringsElement: '#typed-strings',
		typeSpeed: 30
	return


$(document).on 'turbolinks:load', ready