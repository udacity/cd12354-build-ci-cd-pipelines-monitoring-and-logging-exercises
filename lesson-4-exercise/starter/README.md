## Blue-Green Deployment with GitHub Actions

In this exercise, you will create a mock GitHub Actions workflow to accomplish this.

### Scenario

You are a DevOps engineer at Uda-Acme Corporation, a leading provider of cutting-edge web solutions. Uda-Acme Corp. is planning to release a new feature on its main application. To ensure a seamless user experience and zero downtime during this update, the team has decided to use the Blue-Green deployment strategy.

Your task is to set up a CI/CD pipeline using GitHub Actions, which will automate the Blue-Green deployment process on AWS using Terraform. You will create two environments (Blue and Green) on AWS EC2, where one will be live at a time. When new changes push to the main branch of your GitHub repository, the CI/CD pipeline should deploy the changes to the idle environment, test it, and then switch the live traffic to it. 

### Create a GitHub Actions Workflow

1. Under `/lesson-4-exercise/starter`, create a new YAML file (e.g., `blue_green.yaml`). This file will define your GitHub Actions workflow.
1. The workflow should be triggered whenever a push is made to the main branch.
1. It should set up the environment for Terraform, install the required CLI, and apply the Terraform configurations.
1. Your workflow should also handle the logic of switching traffic between the Blue and Green environments according to the Blue-Green deployment strategy. (Hint: use peudo-code and if statements here, to think through the logic.)

### Starter Template for the Workflow

This template sets up a basic workflow that checks out your code, sets up Terraform, and configures AWS credentials:

```yaml
name: 'Terraform Blue-Green Deployment'
on:
  push:
    branches:
      - main

env:
  TF_ACTION_WORKING_DIR: 'terraform' 

jobs:
  terraform:
    name: 'Terraform'
    runs-on: ubuntu-latest   # Use the latest Ubuntu runner

    steps:
      # Check out the code to the runner
      - name: 

      # Configure AWS credentials
      - name: 
      # Set up the specified version of Terraform
      - name:

      # Initialize your Terraform configuration
      - name: 

      # Validate your Terraform configuration
      - name: 

      # Generate and display an execution plan
      - name: 
      # Apply the changes required to reach the desired state of the configuration
      - name: 

      # Check the status of the Blue environment
      - name:

      # Check the status of the Green environment
      - name: 

      # Switch traffic to the Green environment if the Blue environment is currently live
      - name: 

      # Switch traffic to the Blue environment if the Green environment is currently live
      - name: 
```

This exercise will take approximately 30-60 minutes to complete.

If you get stuck, the solution file is in the lesson workspace: `/lesson-4-exercise/solution/blue_green.yaml`