json.array!(@uebungs) do |uebung|
  json.extract! uebung, : uebung, :trainingsart, :anzset, :anzwdh, :beschreibung
  json.url uebung_url(uebung, format: :json)
end
