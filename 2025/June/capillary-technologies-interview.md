
June 4th 2025 and June 5th 2025

4 Rounds

---

1st Round

Sunil Kumar

Shivam Kumar - X

Coding, Viva / Oral questioning with some white boarding

Monitoring a Service and automatically restarting it automatically when it's
down. Ping service monitoring your service. Assume VM is restarted manually,
what to do to ensure the service starts. I said - use init script.
init script - cloud init - standard.
ubuntu. systemd. systemctl. define and use systemd service or unit, which has
information around how to start a service, it's description etc. use
systemctl enable service. systemctl start service. bash script? or what? and
how it looks like. For complex stuff, use Golang or similar to create a CLI
tool and use it in the bash script. Use `curl` for plain stuff and parse
response by getting response using `-i` option or flag or switch of `curl`.
Or just use a proper modern programming language with enough features,
including modern features like great error handling, like Golang and handle
different kinds of errors. Use slack API key. Or use Alert Manager (from
Prometheus project) and use Alert Manager to route the notifications to
Slack, Email or different medium or channels like PagerDuty

Terraform.
Terraform Plan. Plan of execution. Plan output can be stored or not.
Terraform Apply. Apply after doing plan. Apply can take plan's output as input
Terraform Refresh. State Refresh
Terraform Destroy. Delete resources (all)

Concurrent Terraform Apply, what happens when it happens? Will there be a 
problem? Remote state, Remote backend for state file like S3, state file or 
state locking. Terraform source files -> same resource being modified in the
concurrent Terraform applies? Does it (terraform) do full locking of the state 
file or parts of it? Say, some resources are locked, for concurrent access. 
Readers Writers Problem

Java REST API Development - using Spring Boot -> @Transactional annotation along
with a defined method - for a service. Correct code or not?

```java
@Transactional
void updateProfileService(int userId) {
    userProfile = userRepository.get(userId)
    userProfile.updateSomething() // update some field
    userRepository.save() // OR userProfile.save() // basically save it in the DB

    auditService.update()
    auditService.something()
}
```

```java
@Post
void createUser(User user) {
    // implementation here
}

@Get
void getUser(int userId) {
    // implementation here
}
```

```hcl
resource "aws_ec2_instance" "web" {
    ....
    ....
    ....

    security_group
    vpc_id
}

resource "aws_security_group_rule" "web" {
    type = "ingress"
    from_port = 80
    to_port = 80
    ...
    ...
}

```

---

2nd Round

Sreejith S

Talking, Oral questioning, Lot of white boarding

Previous Company

Where I am from

Interests. Infrastructure. Databases.

Roots of Interest. First Job. Infrastructure Databases

Career

Fired at Togai. Because I was slow

Why change jobs in each job?

Second job - Too comfortable - VMware - Got scared - Work on my Health. First Job - Getting Hard and having lot of health problem. Third Job - Startup - Fired at the end. Fourth Job - Ola - Left unhappily.

Job Change due to Job Satisfaction?

Design an Architecture

Cost Optimized

10 microservices

Can be easily Managed by few developers

Easy to maintain

Secure

Cloud Architecture

AWS

Multiple Locations. US. UAE. APAC. Europe?

Answer:

CDN, like AWS CloudFront for UI. Different locations etc

API, deploy on VMs, or else if Kubernetes knowledge is not a problem,
then go for it. Elastic Container Service vs Kubernetes. Why or why not
Kubernetes. Nomad as one alternative for Kubernetes

Self Hosted solutions vs SaaS solutions. For Database. Open Source Database
vs Closed Source. Open Source + SaaS can later move to Open Source + Self 
Hosted. Paid - SaaS, or License + Self Host using particular paid license,
like Enterprise License. API Compatibility with the client software when it
comes to Database

Cloud? Networking? How does it look like?

VPC. Sub net.

Internet. Security. Network Security

microservice(s) -> Database

Pods. IP Address.

NAT. Internet Gateway.

Routing Table. IP Routing Table etc

Airgapped environment?

Google - external service

Web Servers

UI Hosting

nginx

Scaling of UI etc

Development/Staging -> 1
QA -> 1
Production -> 1

Terraform? CI/CD? etc

Hashicorp Vault and stuff

More details:

Networking - Blast Radius

Private Networking

Database will be available only to the microservice(s) that needs it, in terms of network rules / firewall rules. This is for both security, reducing possible errors.

---

3rd Round

Dipak Kumar

Talking, Oral questioning, Lot of white boarding

My job at VMware. What did I do etc. What was my responsibility

CI system

Build a CI system, modern one, like GitLab CI, GitHub Actions, and
build it end to end, and this is similar to building Jenkins, GitLab CI
etc and not just using existing CI systems but you can use some systems
to do some stuff

Pipelines

All modern features

Not Jenkins. UI

Central System for assigning jobs to workers (nodes) that can run the jobs /
CI system

How will Developers interact with CI system?

Files, or Configure it directly in the CI system - through UI - Admin UI or something

Files -> YAML, JSON, TOML. Fully functional or half functional programming
languages and their features. For examples Groovy, Kotlin Scripts etc

YAML

Airgapped environment. For CI/CD

Parallel Runs, vs Sequence Runs or Step By Step Runs. What happens
during failures etc

Dependency on jobs among jobs

How will you run jobs with dependencies etc

Manual trigger vs automatic trigger. Automatic trigger - on-push of code

Version Control System. Git. GitHub (Git Server). Webhooks for notifications
on events - like on-pull-request, on-push, on-comment etc

Clients use - UI or API

CI architecture

Central System - Orchestrating - Scheduling. Specification of process to run -
resources required - RAM, CPU etc

Kubernetes. Nomad.

Containers. vs Plain VMs

source code is mounted into the container

what is the command to run in the container? Image Specification - CMD or
run time provide CMD

Run the image as it is? Maybe not, as image might be a security risk.

Sandboxed environment

Storage of Artifacts. Remote storage vs storing in the runtime / execution
environment

Configuration or Variables. Secure Variables etc

Tekton framework. Kubernetes. CI/CD Framework.

Job. Pods. CRs. CRDs. Controllers.

Client. API - authentication/authorization, Kubernetes, system to get 
notifications from VCS webhooks, find out what to run and in what order - 
executor

Cluster Autoscaler. Kubernetes <-> Cloud and autoscale and create workers nodes 
that can automatically join the Kubernetes Cluster

Scale Up and Scale Down

---

4th Round

Pallav Kumar

Nayan Kumar - X

Talking, Oral questioning, Lot of white boarding

Deadline? R&D type of Work

Process?

Sprints?

Timelines?

Strict vs Loose timelines and deadlines?

Individual Contributor vs Leading a Team and mentoring members and also
contributing as an individual contributor

Planning, etc experience. ThoughtWorks. Agile. Sprints. Showcase. Demo.
Iterations. Sprint Planning. Story/Tasks estimation.

Talk about some hard problems that I worked on

Talk about something you designed, and architected

Migrations?

Upgrades?

Plan an upgrade for Redis version upgrade. Walk me through the whole
process of what you will do

Stats. For all Redis. what Versions are running currently?

Version diff.

Cost of upgrade vs Return of Investment from upgrade.

Version Difference - features, performance, security, bugs etc. Changes in
stuff - breaking changes etc. API changes. Check what's new? What's old and
removed? What's missing? What's renamed?

Rollback. Disaster Recovery (no loss of data, depending on the kind of data system)

Communications - with developers and teams

More details:

Test things. Different kinds of tests. Different levels of tests.

Look at metrics. Look at failed queries etc. Look at networking metrics -
bytes in and bytes out. Look at performance metrics. Look at correctness metrics

0 Downtime. Worth the cost of doing 0 downtime. Or else find out maintenance time and also inform developers, customers / clients and all users through UI, email communications etc

Smooth Rollout - Reduce Blast Radius. Start with less critical environments and less critical services / products and less critical instances of data systems. Then move on to other more critical environments and then to more critical services / products and then to more critical instances of data systems. Test a lot during R&D

Keep the corresponding team and developers in the loop always, it's their service / product. Keep the customers / clients / users in the loop when things are being done - in case it will cause downtime or reduced functioning or inconsistent functioning of the service / product

Other Thoughts About Benefits of Upgrades that I missed to say:

Ability to upgrade if necessary - due to security issues and fixes, bug fixes, performance issues and fixes, new features that developers want. Sometimes the difference/distance between source version and target version can be too big that it's impossible or very hard to do skip upgrade - that is, to directly upgrade from source version to target version. So, in such cases, it's better to do step upgrades and follow the upgrade guides. Doing all the step upgrades at once can be too much. So, doing upgrades often can help with avoiding skip upgrades which are hard and also avoiding doing too many step upgrades at once which is also hard

Kubernetes. 1.31 - EKS - Amazon Web Services (AWS) Elastic Kubernetes Service (EKS)
Kafka
Redis
MongoDB

Amazon Web Services (AWS) Relational Data System (RDS)

---

Engineering Managers
Senior Engineering Managers
Architects and Senior Architects
Developers - SDEs (1,2,3 etc)

---

5th Round - Just me asking questions

Nayan Kumar

---

Recruiters / HR

Mukta Naregal
Neha Lakhwani
Anita Mariam Jacob
Lamha Chauhan

---

Log Storage and Log Indexing and Log Archival

GCP Logs - Google Cloud Platform Log Service - for Kubernetes pod logs (workload logs) and Kubernetes control plane logs

ELK - Elastic Search, Log Stash, Kibana (ThoughtWorks - Gojek)

Grafana - Loki (Ola)

Newrelic (Togai)

Vector (https://vector.dev) (Togai)

Viewing Logs

Storing Old Logs in a different manner, separately

AWS S3
