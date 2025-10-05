Profile: RambamPractitioner
Parent: http://fhir.health.gov.il/StructureDefinition/il-core-practitioner
Id: rambam-practitioner
Title: "Rambam Practitioner Profile"
Description: "Practitioner profile for Rambam Medical Center extending the Israeli core Practitioner profile"

* meta 1..1
* meta.security 1..*
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security contains
    HDP 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #practitioner (exactly)
* meta.security[HDP].display = "מטפל" (exactly)
* meta.profile 2..* 
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains
    il-core-practitioner 1..1 and
    rambam-practitioner 1..1
* meta.profile[il-core-practitioner] = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner" (exactly)
* meta.profile[rambam-practitioner] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-practitioner" (exactly)
* id 1..1
// Identifier slicing by system
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    rmb 1..1 and
    temp 0..1
* identifier[rmb].system 1..1
* identifier[rmb].system = "http://fhir.rmc.gov.il/identifier/rambam-emp" (exactly)
* identifier[rmb].value 1..1

* identifier[temp].system 1..1
* identifier[temp].system = "http://fhir.rmc.gov.il/identifier/rambam-emp-temp" (exactly)
* identifier[temp].value 1..1

* name.family 1..1
* name.given 1..*
