require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "health" do
    get "/health"
    assert_response :success
    assert_equal "ok", response.parsed_body["status"]
  end

  test "create, list, update, delete" do
    post "/notes", params: { note: { title: "First", body: "hello" } }, as: :json
    assert_response :created
    id = response.parsed_body["id"]

    get "/notes"
    assert_equal 1, response.parsed_body.size

    patch "/notes/#{id}", params: { note: { title: "Renamed" } }, as: :json
    assert_equal "Renamed", response.parsed_body["title"]

    delete "/notes/#{id}"
    assert_response :no_content
    assert_equal 0, Note.count
  end

  test "rejects blank title" do
    post "/notes", params: { note: { title: "" } }, as: :json
    assert_response :unprocessable_entity
  end

  test "missing note returns 404" do
    get "/notes/999"
    assert_response :not_found
  end
end
