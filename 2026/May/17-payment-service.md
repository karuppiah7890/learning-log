Things to think about -

Deployment

Operations

Security

Assessment: How one is deploying, operating, and securing services

---

```Dockerfile
# Import certificates for secure network calls
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
```

---

Makefile - for simplifying build

Dockerfile - DONE

Docker Compose Yaml - DONE

Helm Chart to Deploy the two services - DONE

Run container as non root user

---

Use the following for better security:

Rate Limiting Systems

Blocking IP if noticing unexpected behaviour / attacker behaviour for example - accessing API multiple times without Authentication or proper Authorization

Secure Communication between services. Use mTLS or similar

Distribute Secrets securely. Use Hashicorp Vault or similar

Expose only the payment gateway and not the payment service

Whitelist / Allow list trusted IPs / IP range for clients accessing the payment gateway

Expose payment gateway in a private network if all clients can access from a private network. Say, do peering, VPN etc to connect two private networks. If client is in public network and will access with a public IP, then we need to expose payment gateway in the public network (Internet) and also take care of securing the publicly exposed service - using Rate Limiting Systems, Allow listing IPs, Blocking IP address / user for unexpected behaviour / attacker behaviour, Using Web Application Firewalls (WAFs) in general

Ensure that only payment gateway can access payment service and that no other entity can access payment service

Run all containers in all pods securely. Secrets should not be leaked. No exec access

---

Clarity -- Is the repository well-structured? Is the documentation
clear and useful?

Security -- How do the services communicate, and how is that
communication secured? We operate in a payment environment --
security is not optional.

Operability -- If something goes wrong at 3 AM, how would an oncall engineer understand what happened and what to do?

Reliability -- What happens when things fail? Have you considered
how the system behaves under degraded conditions?

Engineering quality -- Are configurations clean, maintainable, and
following good practices?

---

Plan

- Run container as non root user

- [DONE] Run a HTTP server. Expose 8080

- Expose `healthz` endpoint

- Expose `metrics` endpoint - prometheus metrics

- Add installation instructions and package for both payment gateway service and payment processor service
    - Helm Chart
        - Deployment
        - Service
        - Ingress - enable for payment gateway alone
    - Single Helm Chart for both services? Or two Helm Charts - one for each service? Maybe just a single Helm Chart
    
- Horizontal Pod Autoscaler resource
