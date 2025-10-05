Profile: RambamLocation
Parent: il-hdp-location
Id: rambam-location
Title: "Rambam Location"
Description: "Location profile for Rambam Medical Center extending the Israeli core HDP Location profile"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dept-rmb 0..1 and moh-hospital-department 0..1
* identifier[dept-rmb].system 1..1
* identifier[dept-rmb].system = "http://fhir.rmc.gov.il/identifier/dept-rmb" (exactly)
* identifier[dept-rmb].value 1..1
* identifier[moh-hospital-department].system 1..1
* identifier[moh-hospital-department].system = "http://fhir.health.gov.il/identifier/moh-hospital-department" (exactly)
* identifier[moh-hospital-department].value 1..1
* status 1..1
* mode 0..1
* mode = #instance (exactly)