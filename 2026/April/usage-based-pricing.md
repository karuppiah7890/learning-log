Events API - To Store Usage Events

Events DB - To Store Usage Events

Usage Events Table Columns -

Event ID - number? UUID? string?

Customer ID - number? UUID? string?

Usage - Count without unit. Whole numbers? Or numbers with decimal points?

Assume that the table is for one SaaS business. And the SaaS business has end users whose usage has to be tracked

What about feature / metric name for the usage? Assuming there are different features being used by the customers or there are different metrics that the business wants to track and each has different usage

What about usage event time? This will be useful to understand when the usage event happened. Who tells the time? Does the API take current time as the time? Or does the API caller send the time? And does the time have timezone? It better have - to ensure that we know exact time. Or store all time in UTC or some specific timezone, in the DB

What about metadata? Like any other extra data around the usage events? Apart from the metric/feature name
