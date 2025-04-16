# Apache Camel Sandbox

A sandbox environment for prototyping and deploying Apache Camel integrations. Includes scripts, configs, and a devfile for streamlined development.

## Features

- **Rapid Prototyping**: Design Camel flows using Kaoto with minimal setup.
- **Kubernetes-Ready**: Easily deploy to OpenShift.
- **Devfile-Powered**: Consistent, reproducible development environment.

## Getting Started

1. Register: [Red Hat Developer Sandbox](https://developers.redhat.com/developer-sandbox)  
   _Note: Sandbox expires after 30 days. Backup and recreate as needed._

2. Launch Workspace:  
   [Create CamelSandbox Workspace](https://workspaces.openshift.com/#https://github.com/ibek/camel-sandbox)

## Using Kaoto

1. Install Kaoto extension:  
   Right-click `vscode-kaoto-xyz.vsix` → **Install Extension VSIX**

2. Open Example Integration:  
   Open Kaoto side panel → Click Camel integration
   
3. Start Example Integration:
   Open Kaoto side panel → Click **Run** next to chosen Camel integration

4. Start Multi-file Example Integration:  
   In the Terminal, navigate to the desired example folder and follow the instructions in its README to run the integration.

## License

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
