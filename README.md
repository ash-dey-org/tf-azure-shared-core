##### Shared resource

1. Azure communication services (required by azure email communication services to send email)

2. Email communication services

From az cli register the provider (Microsoft.Communication) before creating email communication service using terraform.

`az provider register --namespace Microsoft.Communication`

After email communication service resource is deployed,
(manually, at this stage) - add free subdomain to email communication service.

Once the email subdomain has been added to email coommunication services,
link email communication services to communication services (communication services --> domain --> connect domain )