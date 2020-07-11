---
title: "Data Management Architecture"
date: 2020-07-11T03:30:00-04:00
draft: false
description: 'A proposal for a standard approach to getting data into various services...'
---

## Introduction

The problem of managing logic and data has been one that has plagued developers and administrators alike
for many decades and will likely continue to do so. At CISE, we encounter these issues as well, mostly regarding:

- Networks
- Hosts
- Users
- Groups
- Files (shares)

These forms of data are all relatively simple by themselves. However, when the time comes to configure lab machines with
network login using LDAP or provision hosts for those who need it in the department, things get very messy very quickly.
Typically, these problems are solved with a myriad of scripts that, by themselves, fix the problems that they address. Let these
stack up though and you will quickly realize the mess that such a system is prone to, with dozens of scripts creating a near
inescapable web of dependencies and interrelatedness. In this post, I hope to propose a standard solution to this issue, assuming one
does not already exist, and an example of how this applies to our situation at the CISE department. No idea if something similar has been proposed before so feel free to contact me and let me know!

## Data -> Management -> Services

As always, any major infrastructure project starts with the data. Ideally, this data is relatively clean and minimal in nature, as to
reduce the complexity of the systems that will manage them. Nevertheless, the approach I propose does not care whether the data is clean
or messy in nature.

After observing the systems that we manage at CISE every day, I have started to realize certain trends appearing that I had not known
were so obvious until I started to dig into them. While specific details were different depending on the area, one trend was consistent:
the flow of data from source to management and finally to services.

**Data (Hosts, people, etc.)**  ->  **Management (Web interface, CLI, etc.)**  ->  **Services (LDAP, DNS, etc.)**

After noticing this rather obvious trend, I feel that structuring projects in the management section will dramatically help
to clarify the requirements and responsibilities of a program. I will call this the DMS flow.

## CISE Example - Network Management System

Recently I had the pleasure of reworking the network management system currently in use in our department. Without sparing too
many details, the prior system relied on a number of rather convoluted scripts with many external dependencies and little fail-safes.
However, keeping in mind the DMS flow, I ensured my program was cleanly positioned between the data and the services, careful not to
mix the two (e.g. using the services as a source of data). The end was a nice package with the ability to accomplish what the old
system could in quite literally 10% of the code with many more features also bundled in as a bonus.

**Hosts**  ->  **Network Management System**  ->  **DNS and DHCP**

## Conclusion

This system could use some work and the idea of it as a distinct concept is rather new to me, although the idea of working with data, 
logic, and services have been quite clear to me for some time 😛. I simply hope to lay out my thoughts in an attempt to improve on
these ideas and perhaps form a reusable framework for these kinds of things. I also am curious to know whether or not a CLI + 
configuration files is such a bad thing compared to a web interface from an administrative perspective (from a user perspective I still 
see web interfaces as reigning supreme.)
