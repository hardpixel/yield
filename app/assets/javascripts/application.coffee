# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.

#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require jquery.match-height
#= require bootstrap
#= require admin-lte
#= require summernote/summernote
#= require turbolinks

$.fn.radioToggle = ->
	$radio = $(this)

	if $radio.is('[data-toggle]')
		$radio.each ->
			$target = $("." + $(this).attr('data-toggle'))

			if $(this).is(':checked') && $(this).val() == 'false'
				$target.hide()

		$radio.on 'change', ->
			$target = $("." + $(this).attr('data-toggle'))

			if $(this).val() == 'true'
				$target.fadeIn('fast')
			else
				$target.fadeOut('fast')


$.fn.checkboxToggle = ->
	$checkbox = $(this)

	if $checkbox.is('[data-toggle]')
		$checkbox.each ->
			$target = $("." + $(this).attr('data-toggle'))

			if ! $(this).is(':checked')
				$target.hide()

		$checkbox.on 'change', ->
			$target = $("." + $(this).attr('data-toggle'))

			if $(this).is(':checked')
				$target.fadeIn('fast')
			else
				$target.fadeOut('fast')


$(document).ready ->

	Turbolinks.enableProgressBar()

	$('input[type="radio"]').radioToggle()
	$('input[type="checkbox"]').checkboxToggle()

	# $('[data-provide="datepicker"]').datetimepicker({
	# 	format: 'YYYY/MM/DD',
	# 	icons: {
	# 		time: 'fa fa-clock-o',
	# 		date: 'fa fa-calendar',
	# 		previous: 'fa fa-chevron-left',
	# 		next: 'fa fa-chevron-right',
	# 		up: 'fa fa-chevron-up',
	# 		down: 'fa fa-chevron-down',
	# 		today: 'fa fa-bullseye',
	# 		clear: 'fa fa-trash'
	# 	},
	# 	toolbarPlacement: 'bottom',
	# 	showTodayButton: true,
	# 	showClear: true
	# })

	# $('[data-provide="datetimepicker"]').datetimepicker({
	# 	format: 'YYYY/MM/DD HH:MM',
	# 	icons: {
	# 		time: 'fa fa-clock-o',
	# 		date: 'fa fa-calendar',
	# 		previous: 'fa fa-chevron-left',
	# 		next: 'fa fa-chevron-right',
	# 		up: 'fa fa-chevron-up',
	# 		down: 'fa fa-chevron-down',
	# 		today: 'fa fa-bullseye',
	# 		clear: 'fa fa-trash'
	# 	},
	# 	toolbarPlacement: 'bottom',
	# 	showTodayButton: true,
	# 	showClear: true
	# })

	$('[data-provider="texteditor"]').each ->
		$(this).summernote({
			height: ($(this).attr('rows') * 32) - 20,
			defaultFontName: 'Arial',
			toolbar: [
				['style', ['style']],
				['font', ['bold', 'italic', 'underline', 'clear']],
				['color', ['color']],
				['para', ['ul', 'ol', 'paragraph']],
				['insert', ['link', 'picture', 'hr']],
				['view', ['fullscreen', 'codeview']],
				['help', ['help']]
			],
			styleTags: ['p', 'blockquote', 'pre', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6']
		})
