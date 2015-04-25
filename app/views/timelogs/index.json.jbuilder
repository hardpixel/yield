json.array!(@timelogs) do |timelog|
  json.extract! timelog, :id, :time, :user_id, :task_id
  json.url timelog_url(timelog, format: :json)
end
