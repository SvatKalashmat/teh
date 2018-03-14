require 'test_helper'

class TournamentMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_member = tournament_members(:one)
  end

  test "should get index" do
    get tournament_members_url
    assert_response :success
  end

  test "should get new" do
    get new_tournament_member_url
    assert_response :success
  end

  test "should create tournament_member" do
    assert_difference('TournamentMember.count') do
      post tournament_members_url, params: { tournament_member: { team_id: @tournament_member.team_id, tournament_id: @tournament_member.tournament_id } }
    end

    assert_redirected_to tournament_member_url(TournamentMember.last)
  end

  test "should show tournament_member" do
    get tournament_member_url(@tournament_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_member_url(@tournament_member)
    assert_response :success
  end

  test "should update tournament_member" do
    patch tournament_member_url(@tournament_member), params: { tournament_member: { team_id: @tournament_member.team_id, tournament_id: @tournament_member.tournament_id } }
    assert_redirected_to tournament_member_url(@tournament_member)
  end

  test "should destroy tournament_member" do
    assert_difference('TournamentMember.count', -1) do
      delete tournament_member_url(@tournament_member)
    end

    assert_redirected_to tournament_members_url
  end
end
