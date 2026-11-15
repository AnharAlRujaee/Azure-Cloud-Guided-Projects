# Azure Cloud — Guided Projects

**Practical Azure portfolio | November 2026**

This repository documents hands-on work across the eight Microsoft Azure guided projects in the learning path. It includes the static website source, Azure CLI command reference, project notes, and screenshots supplied as evidence.

## Learning outcomes

- Deploy and verify a static website using Azure Blob Storage.
- Organise and protect Azure resources with tags and resource locks.
- Deploy and test an HTTP-triggered Azure Function.
- Create a Microsoft Entra ID test user and security group, then assign Reader access through group-based RBAC.
- Practise private Blob Storage sharing with a time-limited SAS URL and configure lifecycle management.
- Configure cost tracking tags, a budget with alerts, and an Azure Policy assignment.
- Configure Azure Service Health and Activity Log alert rules with an email action group.
- Use Azure Cloud Shell and Azure CLI to inspect and create Azure resources.

## Repository structure

```text
Azure-Cloud-Week2-Guided-Projects/
├── README.md
├── website/
│   └── index.html
├── scripts/
│   └── azure_cli_exercises.sh
├── docs/
│   ├── project-report.pdf
│   ├── secure-document-sample.txt
│   └── preparation-questions.md
└── evidence/
    └── Azure Portal and CLI screenshots
```

## Project summary

| # | Project | Practical work |
|---|---|---|
| 1 | Static website with Blob Storage | Built the CloudSpace page, enabled static website hosting, uploaded `index.html` to `$web`, and verified the live endpoint. |
| 2 | Tags and locks | Applied resource tags and created/tested a `CanNotDelete` lock. The lock was removed after the exercise. |
| 3 | Azure Functions | Deployed a Function App and tested the `HelloCloud` HTTP trigger, which returned a JSON success response. |
| 4 | Entra ID and RBAC | Created a test employee and `CloudProject-Team` security group; assigned Reader at resource-group scope through the group. |
| 5 | Secure file sharing | Created a private container and sample file, generated and tested a read-only user-delegation SAS URL over HTTPS, and configured a lifecycle rule to delete blobs after one day. |
| 6 | Cost guardrails | Applied cost tags, created a €10 budget with alerts, and assigned the `Allowed locations` policy to `rg-secure-sharing-homework`. |
| 7 | Monitoring | Created a Service Health alert and an Activity Log alert, using the `Week2-Alert-Notifications` email action group. |
| 8 | Cloud Shell and Azure CLI | Registered `Microsoft.CloudShell`, listed groups/resources, inspected storage account settings, and created two StorageV2 accounts in Sweden Central. |

## Important implementation notes and limitations

- The Free Trial subscription rejected new storage deployments in `westeurope` with `RequestDisallowedByAzure` / `locationineligible`. The CLI exercise was therefore completed in `swedencentral`.
- The two CLI-created storage accounts are `anharclihw20261115` and `anharclihw20261116`, in resource group `rg-cli-homework`. Both were verified as `Succeeded`, HTTPS-only, and TLS 1.2.
- The first CLI-created storage account initially reported TLS 1.0; it was updated to TLS 1.2. The second was created with TLS 1.2.
- The secure-sharing exercise used a **user-delegation SAS** (read permission, HTTPS-only, time-limited). SAS revocation was not verified. The implementation did not demonstrate a stored access policy, so this is recorded as a partial deviation from that specific learning-path approach.
- The Activity Log alert was configured for **All Administrative operations**, which is broader than a delete-only event alert.
- Budget alerts notify; they do not automatically cap or stop Azure spending.
- Cloud Shell reported an ephemeral session. Files created only inside that session do not persist after it closes.
- The uploaded evidence set includes portal screenshots from the work. Add a final screenshot of the two-account `az storage account list` output if you want the latest CLI verification represented visually.

## Preparation questions

See [`docs/preparation-questions.md`](docs/preparation-questions.md) for concise answers to the assignment's preparation questions.

## Re-running the CLI exercise

The commands used are recorded in [`scripts/azure_cli_exercises.sh`](scripts/azure_cli_exercises.sh). Storage account names must be globally unique in Azure. The script is a reference, not a blind rerun: review the names and subscription/region constraints before executing it.

## Evidence

The `evidence/` folder contains the screenshots provided for the assignment. Filenames are descriptive; the report maps the evidence to the relevant projects.

## Security

No subscription IDs, passwords, access keys, SAS tokens, client secrets, or other credentials are included. Do not commit credentials or live SAS URLs to GitHub.
