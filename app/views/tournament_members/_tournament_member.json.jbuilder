json.extract! tournament_member, :id, :team_id, :tournament_id, :created_at, :updated_at
json.url tournament_member_url(tournament_member, format: :json)
