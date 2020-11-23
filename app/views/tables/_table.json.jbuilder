json.extract! table, :id, :[name, :wins, :draws, :losses, :gf, :ga, :created_at, :updated_at
json.url table_url(table, format: :json)
