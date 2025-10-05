Profile: RambamPractitionerRole
Parent: http://fhir.health.gov.il/StructureDefinition/il-core-practitioner-role
Id: rambam-practitioner-role
Title: "Rambam PractitionerRole Profile"
Description: "PractitionerRole profile for Rambam Medical Center extending the Israeli core PractitionerRole profile"

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
    ilcore 1..1 and
    rambam 1..1
* meta.profile[ilcore] = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner-role" (exactly)
* meta.profile[rambam] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-practitioner-role" (exactly)
* id 1..1
* identifier 1..*
* identifier.system 1..1
* identifier.system = "http://fhir.rmc.gov.il/identifier/rambam-emp-role" (exactly)
* organization 1..1

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    internal 0..1 and
    external 0..1
* code.coding[internal] from $vs-practitioner-role-code (required)
* code.coding[internal].system 1..1
* code.coding[internal].system = $practitioner-role-code (exactly)
* code.coding[internal].code 1..1
* code.coding[internal].display 1..1
* code.coding[external].system 1..1
* code.coding[external].system from $vs-external-uris (required)
* code.coding[external].code 1..1
* code.coding[external].display 1..1

* specialty.coding ^slicing.discriminator.type = #value
* specialty.coding ^slicing.discriminator.path = "system"
* specialty.coding ^slicing.rules = #open
* specialty.coding contains
    internal 0..1 and
    external 0..1
* specialty.coding[internal] from $vs-practitioner-specialty (required)
* specialty.coding[internal].system 1..1
* specialty.coding[internal].system = $practitioner-specialty (exactly)
* specialty.coding[internal].code 1..1
* specialty.coding[internal].display 1..1
* specialty.coding[external].system 1..1
* specialty.coding[external].system = "http://snomed.info/sct" (exactly)
* specialty.coding[external].code 1..1
* specialty.coding[external].display 1..1
