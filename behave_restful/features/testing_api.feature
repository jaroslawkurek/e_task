Feature: Test API provided in the task
    As a user, I get the json from the endpoint and check the values

    Scenario: Get the Octacat user from provided endpoint.
        Given a request url https://api.github.com/users/octocat
        When the request sends GET
        Then the response status is 200

    Scenario: Get the Octacat user and check values from the response.
        Given a request url https://api.github.com/users/octocat
        When the request sends GET
        Then the response status is 200
            And the response json matches
            """
            {
            "type": "object",
                "properties": {
                    "login": {"type": "string"},
                    "id": {"type": "number"},
                    "node_id": {"type": "string"},
                    "avatar_url": {"type": "string"},
                    "gravatar_id": {"type": "string"},
                    "url": {"type": "string"},
                    "html_url": {"type": "string"},
                    "followers_url": {"type": "string"},
                    "following_url": {"type": "string"},
                    "gists_url": {"type": "string"},
                    "starred_url": {"type": "string"},
                    "subscriptions_url": {"type": "string"},
                    "organizations_url": {"type": "string"},
                    "repos_url": {"type": "string"},
                    "events_url": {"type": "string"},
                    "received_events_url": {"type": "string"},
                    "type": {"type": "string"},
                    "site_admin": {"type": "boolean"},
                    "name": {"type": "string"},
                    "company": {"type": "string"},
                    "location": {"type": "string"},
                    "email": {"type": "null"},
                    "hireable": {"type": "null"},
                    "bio": {"type": "null"},
                    "twitter_username": {"type": "null"},
                    "public_repos": {"type": "number"},
                    "public_gists": {"type": "number"},
                    "followers": {"type": "number"},
                    "following": {"type": "number"},
                    "created_at": {"type": "string"},
                    "updated_at": {"type": "string"}
                }
            }
            """
            And the response json at $.type is equal to "User"
            And the response json at $.id is equal to 583231
            And the response json at $.bio is equal to None