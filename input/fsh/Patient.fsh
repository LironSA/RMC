Profile: RambamPatient
Parent: http://fhir.health.gov.il/StructureDefinition/il-core-patient
Id: rambam-patient
Title: "Rambam Patient Profile"
Description: "Patient profile for Rambam Medical Center extending the Israeli core patient profile"

* meta 1..1
* meta.security 1..*
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security contains
    Restricted 0..1 and
    HDP 1..1
* meta.security[Restricted].system = "https://www.hl7.org/fhir/R4/v3/Confidentiality/cs.html" (exactly)
* meta.security[Restricted].code = #V (exactly)
* meta.security[Restricted].display = "very restricted" (exactly)
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #patientDemographics (exactly)
* meta.security[HDP].display = "דמוגרפיה" (exactly)
* meta.profile 2..* 
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains
    il-core-patient 1..1 and
    rambam-patient 1..1
* meta.profile[il-core-patient] = "http://fhir.health.gov.il/StructureDefinition/il-core-patient" (exactly)
* meta.profile[rambam-patient] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-patient" (exactly)

// Identifier slicing by system
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    rambam-temp-id 0..1 and
    rambam-demog-id 0..1 and
    rambam-sap-id 0..1

* identifier[rambam-temp-id].system 1..1
* identifier[rambam-temp-id].system = "http://fhir.rmc.gov.il/identifier/patient-temp-id" (exactly)
* identifier[rambam-temp-id].value 1..1

* identifier[rambam-demog-id].system 1..1
* identifier[rambam-demog-id].system = "http://fhir.rmc.gov.il/identifier/demog-rec-id" (exactly)
* identifier[rambam-demog-id].value 1..1

* identifier[rambam-sap-id].system 1..1
* identifier[rambam-sap-id].system = "http://fhir.rmc.gov.il/identifier/sap-patient-number" (exactly)
* identifier[rambam-sap-id].value 1..1

// Name constraints (assuming Hebrew and English slices exist in parent profile)
* name[Hebrew].family 0..1
* name[Hebrew].given 0..*
* name[English].family 0..1
* name[English].given 0..*

// Telecom constraints
* telecom.system 1..1
* telecom.system = #phone (exactly)