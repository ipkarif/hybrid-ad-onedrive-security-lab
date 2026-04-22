\# Hybrid AD + OneDrive Security Lab


\## Project Context

This project was created as part of my hands-on cybersecurity and infrastructure learning, with a focus on applying secure configuration practices in a hybrid Windows environment.

The goal is to demonstrate how Active Directory, Group Policy, and OneDrive controls can be used together to improve security, consistency, and operational visibility.

A hands-on hybrid infrastructure lab focused on Active Directory, Group Policy, and secure OneDrive policy management for domain-joined Windows clients.

This project demonstrates how policy-based controls can be used to improve security, consistency, and operational visibility in a hybrid environment.


\## How to Use This Lab

1. Build a Windows Server VM and install AD DS and DNS
2. Create domain and OU structure
3. Join a Windows client to the domain
4. Import OneDrive administrative templates
5. Apply Group Policy settings
6. Run validation checks and monitoring scripts


\## Lab Architecture

\ [Hybrid AD Lab](diagrams/hybrid-lab-topology.png)


\## What this lab covers

\- Building a Windows Server domain controller with AD DS and DNS

\- Creating a basic OU and user structure

\- Joining Windows clients to the domain

\- Importing OneDrive administrative templates into a Central Store

\- Configuring Group Policy settings to control OneDrive sync behavior

\- Restricting tenant usage and blocking personal OneDrive accounts

\- Applying monitoring and validation steps for policy enforcement

\- Mapping the lab to NIST CSF 2.0 security functions


\## Security focus areas

\- Secure configuration

\- Access control

\- Policy enforcement

\- Tenant restriction

\- Monitoring and validation

\- Operational risk awareness


\## Technologies used

\- Windows Server 2019/2022

\- Active Directory Domain Services (AD DS)

\- DNS

\- Group Policy

\- Windows 10/11

\- Microsoft 365 / OneDrive for Business

\- PowerShell


\## Framework alignment

This lab is primarily mapped to NIST CSF 2.0, especially around Identify, Protect, Detect, and Respond.  

OWASP concepts are referenced selectively for secure configuration, trusted software/template sourcing, and security best-practice awareness.


\## Repository structure

\- `docs/lab-guide.md` – full walkthrough

\- `docs/nist-mapping.md` – NIST CSF 2.0 mapping

\- `docs/security-notes.md` – security and hardening notes

\- `scripts/` – PowerShell scripts used in the lab


\## Notes

This repository is a personal technical lab project created to demonstrate hands-on infrastructure and security skills.  

It has been refactored into an independent project format and is not published as institutional course material.




