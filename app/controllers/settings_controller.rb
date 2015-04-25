class SettingsController < ApplicationController
  def index
    @settings = Setting.thing_scoped.all
    @setting = Setting.find_by var: 'theme'
  end

  def edit
    @setting = Setting.find params[:id]
    @setting[:value] = YAML.load @setting[:value]
  end

  def update
    @setting = Setting.find params[:id]
    @setting.value = params[:setting][:value]

    if @setting.save
      redirect_to settings_path, notice: "Saved"
    else
      redirect_to settings_path, alert: "Not Saved"
    end
  end
end
