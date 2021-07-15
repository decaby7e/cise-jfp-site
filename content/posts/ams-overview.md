---
title: "Account Management System Overview"
date: 2021-07-15T16:44:00-04:00
draft: false
description: "The old account management system used at CISE for over 20 years has undergone some big changes..."
---

The time has been approaching for some time now and it has finally arrived: the
CISE Account Management System has undergone a major overhaul and has been
fundamentally restructured with user experience and simplicity in mind. If you
never had a legacy CISE Account, you may be wondering what all of this is about.
If you did have a legacy CISE Account, you may be worrying how this will affect
you and your old account. This blog post aims to answer all these questions and
provide useful insight into what a CISE Account is, what it can be used for, and
how this migration will impact you as a student, faculty, or staff member.

## What is a CISE Account?

A CISE Account is an account affiliated with your Gatorlink account that grants
you access to restricted resources, such as database servers, lab machines, and
much more. You may be allowed to have a CISE Account if you are taking computer
science classes, are pursuing a computer science degree, or are working at the
CISE department as a staff or faculty member.

In the past, CISE Account were distinct entities from Gatorlink accounts. These
**legacy accounts** had their own username, password, and personal details.
However, as of June of 2021, CISE Accounts are **extensions of Gatorlink
accounts**. This means that, when accessing your CISE Account dashboard at
<https://register.cise.ufl.edu>, _you login using your Gatorlink username and
password_.

## What can I do with my CISE Account?

The entire purpose for CISE Accounts is to provide functionality to users that
would not be possible to provide otherwise. If this functionality could be
provided without our own Account Management System, we would simply use
Gatorlink accounts everywhere. So what can you actually do with a CISE Account?

### 1. Access to Linux Computers

CISE operates what could be the largest collection of accessible Linux machines
at the University of Florida. Most of our labs have Linux machines in them and
we also provide bastion servers [1] where multiple users can obtain access to a
non-graphical Linux environments over SSH. To access these machines, simply
login using your Gatorlink username and password. When using any Linux machine,
your [home directory](#4.-home-directory-and-home-website) is mounted over the
network and shared between all computers.

For collaboration between accounts, you may need to use Linux groups. Although
you do not have access to create groups on local machines, you can create groups
through <https://register.cise.ufl.edu/groups/>.

### 2. Access to Hosted Databases

Databases can be used for a variety of purposes, ranging from educational
through classes to practical through application development. Whatever the
purpose, so long as you adhere to the appropriate policies, you can create and
use databases with ease through CISE's hosted databases platform, located at
<https://register.cise.ufl.edu>.

We offer MySQL, Postgres, and Oracle Database servers. Do note, however, that
Oracle database accounts and databases may be wiped at the end of each semester.

### 3. Printing Privilages

Within CISE, on machines that are compatible, you have access to printers within
the building. You have a certain monthly quota, viewable at
<https://register.cise.ufl.edu/quotas/>. All lab machines have access to these
printers, Windows and Linux alike.

### 4. Home Directory and Home Website

As mentioned before, when accessing any CISE managed computer, you will have
universal access to your home directory. On Linux machines, this is transparent
and means that changes you make on one machine to your account's home will
persist on all other machines. On Windows machines, this home share is
accessible through File Explorer as a network mount.

All home directories have an associated quota that is viewable at
<https://register.cise.ufl.edu/quotas/>. Different account types have different
quota sizes. If for a critical reason you need more disk space, please contact
`support at cise dot ufl dot edu`.

## How will this migration affect my existing CISE Account?

If you already had a CISE Account before this migration, you may be concerned
about the negative implications of this migration on how you use your account.
The following changes have been made that may or may not need your
consideration:

1. CISE usernames are no longer used to log in to machines
2. Home websites now use your gatorlink (e.g. https://cise.ufl.edu/~GATORLINK/)
   - If you had an active home website before, your website is still accessible at https://cise.ufl.edu/~CISE_USERNAME/
3. Your home directory has been renamed to match your gatorlink (e.g. /cise/homes/GATORLINK/)

Most people should not be impacted by this change, especially if your legacy
account's username already matched your Gatorlink. **If you had scripts that
referenced your home directory or username, these should be updated.**

## Conclusion

If you are curious about the full extent of what you can do with your CISE
Account, visit <https://register.cise.ufl.edu>. This portal will allow you to
make any changes or view any information regarding your CISE Account.

If you still have questions or concerns, feel free to contact me at `jfp at cise dot ufl dot edu`.

If you are having problems with your CISE Account, email `support at cise dot ufl dot edu` with your problems.

## Appendix

1. Public Linux bastion servers: rain.cise.ufl.edu, storm.cise.ufl.edu, thunder.cise.ufl.edu, gpus[1:3].cise.ufl.edu
