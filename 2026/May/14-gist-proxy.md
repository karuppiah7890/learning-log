Proxy for GitHub Gist

Ideas:



---

Plan:
- Bootstrap project
    - `go mod init github-gist-proxy`
    - `go mod tidy`
    - `main.go` - plain `main()` function

- Create HTTP server with just one `/` endpoint which responds `200 OK`

- Add health endpoint to check health `/healthz`

- Respond 404 for unknown endpoints - Check this

- Add `<USER>` endpoint which gets the list of GitHub Gists for the given username

- If GitHub username does not exist, give bad request error with basic details

- For any 4xx or 5xx errors, in general give server error asking to contact admin
    - For 404 alone (non existent GitHub User), maybe give client error saying that the user does not exist

- If GitHub is not accessible, give server error asking to contact admin

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
- Why does `healthz` have the character `z` in it? Same for `readyz`
