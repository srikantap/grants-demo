json.array!(@projects) do |project|
  json.extract! project, :name, :description, :partner, :manager, :planned_budget, :actual_budget, :theme, :start_date, :end_date, :extensions
  json.url project_url(project, format: :json)
end
