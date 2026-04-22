\# Lab Guide: Hybrid AD + OneDrive Security Lab



\## Objective



Build a small Active Directory domain and use Group Policy to manage OneDrive sync behavior on domain-joined Windows clients, with emphasis on secure configuration, policy enforcement, and validation.



\## Learning goals



\- Deploy a Windows Server domain controller with AD DS and DNS

\- Create a basic OU and user structure

\- Configure Group Policy for OneDrive policy management

\- Restrict unauthorized sync scenarios

\- Validate policy application and expected behavior

\- Monitor basic OneDrive usage signals on the client

\- Understand how this lab aligns with NIST CSF 2.0 security practices



\## Security design focus



This lab is designed around:

\- least privilege and policy-based control

\- tenant restriction and account separation

\- secure client configuration

\- monitoring and validation

\- repeatable troubleshooting



\## onedrive-monitor.ps1



onedrive-monitor.ps1 is a lightweight PowerShell script that checks the current user’s OneDrive folder size

and logs a warning if it exceeds a defined threshold. It was included in this lab to demonstrate basic monitoring, validation, and

operational visibility in a managed hybrid environment.



How to run it manually? powershell.exe -ExecutionPolicy Bypass -File .\\onedrive-monitor.ps1 -WarnThresholdGB 5

