Types of Software?

Libraries

Frameworks - Web frameworks, CLI frameworks etc

Tools - for example CLI tools

HTTP Services

gRPC Services

Embedded, Hardware etc

---

Architecture?

Monoliths

Microservices

---

Code structure?

Monorepo vs multiple repos

---

Code:

Integration with other systems - like Message Brokers, Queue Systems, Databases, external third party services like SaaS services etc

Logging

Error handling

Complexity of Code - of the full system over time, of functions over time

Readability of Code

Correctness (of Code, of functionality) - Tests (Unit tests, integration tests, end-to-end tests etc), naming in general (variable naming, function naming etc)

Tests - Flaky tests - based on past history

Design Patterns

Refactoring

Idiomatic Golang

Dead Code

Code Analysis

Security Issues

Linting

Static Rules based checks for many things. Similar to SonarQube / SonarSource rules - for different languages

Contribute to Golang tools and systems and services - Language Server Protocol, official Go CLI tools (go vet etc), linting CLI tools, pprof, etc

Performance. CPU profiling. Memory Profiling.

Load Testing

GC issues

Memory Issues

Catching many errors (many class of errors) at compile time - similar to how Rust does it

Domain Knowledge - If it's a Database then Database knowledge. If it's a SaaS system - then the domain knowledge of the SaaS business - for example Email Communication Security for my company - which means, knowledge in Security, knowledge in Email tech, and the combination of Email Communication Security. And how well the code tells the story of the business and business context through the features of the system. If the code is good / great, then it would be clear to understand the features from the code and also the business context too to some extent and the product context

Ignore CGo etc and any inter communication between different languages. Only focus on Golang for now

---

Data for learning?

All the Golang repositories out there. All the golang official content - on https://go.dev and their blog and all the YouTube content with Golang creators as speakers and prominent software engineers as speakers

https://refactoring.guru

https://refactoring.guru/design-patterns

https://refactoring.guru/refactoring
