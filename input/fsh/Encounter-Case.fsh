Profile: RambamEncounterCase
Parent: il-core-encounter
Id: rambam-encounter-case
Title: "Rambam Encounter Case"
Description: "Rambam Encounter Case Profile"
* meta 1..1
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "system"
* meta.profile ^slicing.rules = #open
* meta.profile contains rambam-encounter-case 1..1
* meta.profile[rambam-encounter-case] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-encounter-case" (exactly)
* id 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains nmr-case 1..1
* identifier[nmr-case].system 1..1
* identifier[nmr-case].system = "http://fhir.rmc.gov.il/identifier/nmr-case-number" (exactly)
* identifier[nmr-case].value 1..1
* status 1..1
* class 1..1
* type 0..*
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "system"
* type ^slicing.rules = #open
* type contains rmc-admission-type 0..1
* type[rmc-admission-type].coding 1..1
* type[rmc-admission-type].coding.system 1..1
* type[rmc-admission-type].coding.system = "http://fhir.rmc.gov.il/CodeSystem/visit-accept-type" (exactly)
* type[rmc-admission-type].coding.code 1..1
* type[rmc-admission-type].coding.display 1..1
* subject.reference 1..1
* reasonCode[moh-reason-code] 1..1
* reasonCode[moh-reason-code].coding 1..1
* reasonCode[moh-reason-code].coding.system 1..1
* reasonCode[moh-reason-code].coding.code 1..1
* reasonCode[moh-reason-code].coding.display 1..1
* reasonCode 1..1
* hospitalization 0..1
* hospitalization.dischargeDisposition 0..1
* hospitalization.dischargeDisposition.coding.system 1..1
* hospitalization.dischargeDisposition.coding.system = "http://fhir.health.gov.il/cs/patient-release-type-moh" (exactly)
* hospitalization.dischargeDisposition.coding.code 1..1
* hospitalization.dischargeDisposition.coding.display 1..1
* serviceProvider 1..1
* serviceProvider.reference 1..1
* serviceProvider.reference = "Organization/dept-01102" (exactly)
