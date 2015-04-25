class TextEditorInput < SimpleForm::Inputs::TextInput
	def input(wrapper_options)
		input_html_options[:data] ||= {}
		input_html_options[:data].merge!({ provider: 'texteditor' })
		super
	end
end