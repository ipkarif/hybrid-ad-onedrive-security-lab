\# NIST CSF 2.0 Mapping



\## Govern

\- Documented policy choices and control rationale

\- Defined how OneDrive behavior is managed in the lab

\- Used repeatable configuration steps and validation checks



\## Identify

\- Identified key assets: domain controller, client device, tenant, user accounts, policy templates

\- Defined OU structure and workstation scope

\- Documented lab architecture and dependencies



\## Protect

\- Enforced domain-based policy management

\- Blocked personal OneDrive sync

\- Restricted tenant access

\- Applied secure configuration through GPO

\- Used access control and organizational structure



\## Detect

\- Verified applied policies with gpresult and registry checks

\- Logged oversized OneDrive usage through client-side monitoring

\- Observed expected policy behavior and exceptions



\## Respond

\- Included troubleshooting steps for failed policy application

\- Restarted OneDrive and re-applied policies when expected behavior was missing

\- Reviewed configuration sources when settings did not appear



\## Recover

\- Used VM snapshots before major changes

\- Built a repeatable environment that can be restored and re-tested

