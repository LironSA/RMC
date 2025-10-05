Profile: RambamOrganization
Parent: il-hdp-organization
Id: rambam-organization
Title: "Rambam Organization"
Description: "Organization profile for Rambam Medical Center extending the Israeli core HDP Organization profile"
* identifier 1..*
* identifier contains dept-rmb 0..1
* identifier[dept-rmb].system 1..1
* identifier[dept-rmb].system = "http://fhir.rmc.gov.il/identifier/dept-rmb" (exactly)
* identifier[dept-rmb].value 1..1
* type contains dept-type-rmb 0..1
* type[dept-type-rmb].coding.system 1..1
* type[dept-type-rmb].coding.system = "http://fhir.rmc.gov.il/cs/dept-type-rmb" (exactly)
* type[dept-type-rmb].coding.code 1..1
* type[dept-type-rmb].coding.display 1..1