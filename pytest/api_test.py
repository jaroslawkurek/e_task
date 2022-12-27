import requests
from pytest_schema import schema

import pytest


class TestGetAPIRequest:
    @pytest.fixture(autouse=True)
    def setup(self) -> None:
        self.api_url = "https://api.github.com/users/octocat"
        self.response_schema = {
            "login": str,
            "id": int,
            "node_id": str,
            "avatar_url": str,
            "gravatar_id": str,
            "url": str,
            "html_url": str,
            "followers_url": str,
            "following_url": str,
            "gists_url": str,
            "starred_url": str,
            "subscriptions_url": str,
            "organizations_url": str,
            "repos_url": str,
            "events_url": str,
            "received_events_url": str,
            "type": str,
            "site_admin": bool,
            "name": str,
            "company": str,
            "location": str,
            "email": None,
            "hireable": None,
            "bio": None,
            "twitter_username": None,
            "public_repos": int,
            "public_gists": int,
            "followers": int,
            "following": int,
            "created_at": str,
            "updated_at": str,
        }

    def send_api_request(self):
        return requests.get(url=self.api_url)

    def test_api_get_check_status_code(self):
        response = requests.get(self.api_url)
        assert response.status_code == 200
        assert response.ok is True

    # I could put here more assertions but I believe that You get my point ;)
    def test_api_get_check_response_values(self):
        response = requests.get(self.api_url)
        data = response.json()
        assert data["type"] == "User"
        assert data["bio"] is None
        assert type(data["type"]) == str
        assert type(data["followers"]) == int

    def test_api_get_check_response_schema(self):
        response = requests.get(self.api_url)
        data = response.json()
        assert schema(self.response_schema) == data
