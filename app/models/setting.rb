class Setting < RailsSettings::CachedSettings
	# Set default settings
	Setting['general.theme'] = 'flatly'
	Setting['general.mainbar'] = 'expanded'
end
