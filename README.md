<h1>AKS Cluster Setup</h1>

This tutorial is based on configuring Azure Kubernetes Cluster On Azure Cloud using HCL language.

<h2>Technologies involved:</h2>
<ul>1. Azure Cloud</ul>
<ul>2. Terraform</ul>
<ul>3. Kubernetes</ul>
<ul>4. Visual Studio Code</ul>
<ul>5. Helm</ul>

<h2>Languages used:</h2>
<ul>1. HCL</ul>
<ul>2. Yaml</ul>

<h2>Prerequisites:</h2>
<ul>1. Install terraform  --> You can install terraform based on your operating system nfrom here: https://learn.hashicorp.com/tutorials/terraform/install-cli</ul>

<ul>2. Install Azure CLI  --> You can install azure cli based on your operating system from here: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli</ul>

<ul>3. Install Helm3  --> You can install helm based on your operating system from here: https://helm.sh/docs/intro/install/</ul>
 
<h1>How to Setup?</h1>
 
 <ul>1. Clone the repository on your local machine using Visual Studio Code.</ul>
 <ul>   <h6>$ git clone https://github.com/ragnarlegacy/Terraform.git</h6></ul>
 
 <ul>2. Change the directory.</ul>
 <ul>   <h6>$ cd Terraform/Kubernetes/Azure</h6></ul>
 
 <ul>3. Edit the terraform.tfvars</ul>
 <ul>   <h6>$ nano terraform.tfvars</h6></ul>
 <ul>   Configure client ID, client secret, tenant ID, subscription ID</ul>
 
 <ul>4. Edit variables.tf file and customize accordingly.</ul>
 <ul>   <h6>$ nano variables.tf</h6></ul>
 <ul>   Resource Group Name, Resource Group Location, Cluster Name, DNS_Prefix name, Agent Node pool number, ssh_public_key</ul>
 
 <ul>5. Run the command: <h6>$terraform plan</h6></ul>
 
 <ul>6. Run the command: <h6>$terraform apply</h6></ul>
 
 After few minutes, AKS will be ready. You can verify the availability of the cluster.
 First, Get the credentials of the cluster using the following commands using Azure Cli:
 <ul><b>$az login</b></ul> 
 A web page will open and put the azure cloud account details for authentication.
 If having multiple subscription. Use it:
 <ul><b>$az account show</b></ul>
 <ul><b>$az account set --subscription "xxxx"</b></ul>
 Command below will fetch the AKS config file and store it at some location depending on the OS:
 <ul><b>$az aks get-credentials --resource-group myResourceGroup --name myAKSCluster</b></ul>
 Now, you can check the cluster info.
 <ul><b>$kubectl cluster-info</b></ul>
 <ul><b>$kubectl get nodes</b></ul>
 
 <h3>That's all folks for the cluster.</h3>
 
 <h1>Run your first application</h1>
 <ul><b>$kubectl apply -f wefox-hello-challenge.yaml -n namespace</b></ul>
 <ul><b>$kubectl get pods -n namespace</b></ul>
 <ul><b>$kubectl get svc -n namespace</b></ul>

<h3> There you go ! You can browse the url with ip address assigned to you application.</h3>
<b>http://ip_address</b>
 
  
