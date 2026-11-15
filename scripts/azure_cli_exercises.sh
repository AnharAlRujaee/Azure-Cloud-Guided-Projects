#!/usr/bin/env bash
# Azure Cloud Week 2 — Azure CLI exercise reference
# Review the subscription, resource names, and permitted regions before running.
# Storage account names must be globally unique.

set -euo pipefail

# 1. Confirm the active subscription
az account show --output table

# 2. Register Cloud Shell provider (if needed)
az provider register --namespace Microsoft.CloudShell
az provider show --namespace Microsoft.CloudShell --query registrationState --output tsv

# 3. Inspect existing resource groups and resources
az group list --output table
az resource list --resource-group rg-secure-sharing-homework --output table
az storage account show \
  --name anharsas2026 \
  --resource-group rg-secure-sharing-homework \
  --output table

# 4. Create a dedicated resource group
az group create \
  --name rg-cli-homework \
  --location westeurope \
  --output table

# 5. Create the first storage account in Sweden Central.
# West Europe was rejected for this Free Trial subscription.
az storage account create \
  --name anharclihw20261115 \
  --resource-group rg-cli-homework \
  --location swedencentral \
  --sku Standard_LRS \
  --kind StorageV2 \
  --output table

# 6. Set the first account's minimum TLS version to 1.2
az storage account update \
  --name anharclihw20261115 \
  --resource-group rg-cli-homework \
  --min-tls-version TLS1_2 \
  --output table

# 7. Create the second storage account with TLS 1.2
az storage account create \
  --name anharclihw20261116 \
  --resource-group rg-cli-homework \
  --location swedencentral \
  --sku Standard_LRS \
  --kind StorageV2 \
  --min-tls-version TLS1_2 \
  --output table

# 8. Verify both storage accounts
az storage account list \
  --resource-group rg-cli-homework \
  --output table
