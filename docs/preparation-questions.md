# Preparation questions

## 1. What is an Azure resource?
An Azure resource is an individual service or component that you create and manage in Azure, such as a storage account, virtual machine, Function App, or network.

## 2. What is Azure Blob Storage used for?
Azure Blob Storage stores large amounts of unstructured data, such as text files, images, documents, backups, and website assets. In this assignment it hosted the static website files and the sample document used for secure sharing.

## 3. Why is it important to manage access permissions in the cloud?
Access permissions help ensure that users and services can access only the resources and actions they need. This reduces accidental changes, unauthorised access, and the impact of compromised accounts. Group-based RBAC also makes access easier to manage consistently.

## 4. What is the purpose of tags and locks?
Tags add metadata to resources for organisation, ownership, project identification, and cost tracking. Resource locks help protect resources from accidental deletion or modification. A `CanNotDelete` lock prevents deletion while allowing other operations.

## 5. Why is monitoring important in Azure?
Monitoring helps identify service incidents, planned maintenance, configuration changes, and operational problems. Alerts can notify administrators so they can investigate and respond promptly.

## 6. What is the difference between the Azure Portal and Azure CLI?
The Azure Portal is a graphical interface for creating, configuring, and monitoring resources. Azure CLI is a command-line tool that performs the same kinds of management tasks through commands, making work repeatable and suitable for scripts and automation.

## 7. Which project was most interesting and why?
The static website and Azure CLI projects were particularly useful because they connected development work with cloud deployment and administration. The static website showed how a simple HTML page can be hosted through Blob Storage, while the CLI project demonstrated how to inspect and provision Azure resources through repeatable commands.
