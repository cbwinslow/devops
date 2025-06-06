#!/bin/bash
echo "Validating Terraform..."
cd terraform && terraform init && terraform validate
