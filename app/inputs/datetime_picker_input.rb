class DatetimePickerInput < SimpleForm::Inputs::Base
	def input(wrapper_options)
		merged_input_options = merge_wrapper_options(input_html_options.merge(data: { provide: 'datetimepicker' }), wrapper_options )

		"#{@builder.text_field(attribute_name, merged_input_options)}".html_safe
	end
end