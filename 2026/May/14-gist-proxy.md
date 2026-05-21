Proxy for GitHub Gist

Ideas:

- Add readiness endpoint
- Add Tests - Unit Tests, Integration Tests
    - Integration Tests
        - To check if we get 404 for unknown endpoints
        - To check if we get 404 for endpoints which are superset of existing endpoints
            - Checking if there's any bad request matching patterns
                - Like regex, prefix match etc
        - To check if we get 404 when the GitHub username does NOT exist
        - To check if we get 500 when fetching from GitHub has any issues - like GitHub down, or bad request from the proxy server to GitHub
- Run container as non-root user - do this at Dockerfile level - in both build stage and final stage too. Build stage - not necessary I think? But why not? :)
- 

---

Plan:
- Bootstrap project [DONE]
    - `go mod init proxy` [DONE]
    - `go mod tidy` [DONE]
    - `main.go` - plain `main()` function [DONE]

- Create HTTP server with just one `/` endpoint which responds `200 OK` [DONE]

- Add health endpoint to check health `/healthz` [DONE]

- Respond 404 for unknown endpoints - Check this [DONE]

- Add `<USER>` endpoint which gets the list of GitHub Gists for the given username [DONE]

- What fields to show for gists?

- If GitHub username does not exist, give bad request error with basic details or say user does not exist [DONE]

- For any 4xx or 5xx errors, in general give server error asking to contact admin [DONE]
    - For 404 alone (non existent GitHub User), maybe give client error saying that the user does not exist

- If GitHub is not accessible, give server error asking to contact admin [DONE]

- Handle OS Signals - SIGTERM? What else? SIGKILL? SIGHUP? Think
    - Shutdown the process only if all the HTTP requests are done processing!
        - How to check this? Also, ignore readiness and health check HTTP requests when checking if all requests are done processing

- Add readiness endpoint to check readiness `/readyz`
    - It should return true if the HTTP server is ready
    - The HTTP server is not ready when it receives signals from OS to shutdown the process

Cross Functional Requirements:
- Use standard library as much as possible - no external dependencies as much as possible except in extreme cases, like needing to talk to Redis
- Log everything
- Handle every error

Questions:
- Why does `healthz` have the character `z` in it? Same for `readyz`. Google's convention
