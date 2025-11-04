Instance: RambamPractitionerRoleExample
InstanceOf: RambamPractitionerRole
Title: "Example Rambam PractitionerRole"
Description: "PractitionerRole at Rambam Medical Center demonstrating required slices and constraints."

* id = "practitionerrole-rambam-001"

// meta with security slice + profile slices
* meta.versionId = "1"
* meta.lastUpdated = "2025-01-01T09:00:00Z"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

// profile slicing: ilcore + rambam
* meta.profile[ilcore] = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner-role"
* meta.profile[rambam] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-practitioner-role"

// identifier
* identifier[0].system = "http://fhir.rmc.gov.il/identifier/rambam-emp-role"
* identifier[0].value = "EMP12345"

// practitioner and organization (required in parent)
* practitioner = Reference(Practitioner/rambam-practitioner-001)
* organization = Reference(Organization/rambam-hospital)

// telecom (constrained in ILCore)
* telecom[0].system = #phone
* telecom[0].value = "+972-4-7771234"
* telecom[1].system = #email
* telecom[1].value = "dr.cohen@rmc.gov.il"

// code.coding with slices
* code.coding[internal].system = $practitioner-role-code
* code.coding[internal].code = #730
* code.coding[internal].display = "רופאים מינהלים"
* code.coding[external].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code.coding[external].code = #doctor
* code.coding[external].display = "Doctor"

// specialty.coding with slices
* specialty.coding[internal].system = $practitioner-specialty
* specialty.coding[internal].code = #730
* specialty.coding[internal].display = "אנטומיה פתולוגית"
* specialty.coding[external].system = "http://snomed.info/sct"
* specialty.coding[external].code = #394579002
* specialty.coding[external].display = "Cardiology"
