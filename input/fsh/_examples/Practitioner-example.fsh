Instance: RambamPractitionerExample
InstanceOf: RambamPractitioner
Title: "Rambam Practitioner Example"
Description: "Practitioner resource for Rambam Medical Center demonstrating Rambam and ILCore constraints."

* id = "rambam-practitioner-001"

// meta with security + profile slices
* meta.versionId = "1"
* meta.lastUpdated = "2025-01-15T08:00:00Z"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"
* meta.profile[il-core-practitioner] = "http://fhir.health.gov.il/StructureDefinition/il-core-practitioner"
* meta.profile[rambam-practitioner] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-practitioner"

// Rambam identifiers
* identifier[rmb].system = "http://fhir.rmc.gov.il/identifier/rambam-emp"
* identifier[rmb].value = "EMP5678"
* identifier[temp].system = "http://fhir.rmc.gov.il/identifier/rambam-emp-temp"
* identifier[temp].value = "TEMP9999"

// ILCore identifiers
* identifier[prac-lic].system = "http://practitioners.health.gov.il/Practitioners"
* identifier[prac-lic].value = "1-12345"
* identifier[prac-lic].assigner = Reference(Organization/ministry-of-health)

* identifier[il-id].system = "http://fhir.health.gov.il/identifier/il-national-id"
* identifier[il-id].value = "000000018"
* identifier[il-id].assigner = Reference(Organization/ministry-of-interior)

* identifier[enc-il-id].system = "http://fhir.health.gov.il/identifier/encrypted-id-primary-moh"
* identifier[enc-il-id].value = "XYZ-Encrypted-00018"

// name
* name[0].family = "כהן"
* name[0].given[0] = "דוד"

// qualification – permanent license (code fixed in profile, so just identifiers, issuer, extension)
* qualification[moh-practitioner-license].identifier[0].system = "http://practitioners.health.gov.il/Practitioners"
* qualification[moh-practitioner-license].identifier[0].value = "1-12345"
* qualification[moh-practitioner-license].issuer = Reference(Organization/ministry-of-health)
* qualification[moh-practitioner-license].extension[practice].valueCodeableConcept = http://fhir.health.gov.il/cs/practitioner-profession-moh#1 "רפואה"

// qualification – expertise
* qualification[moh-expertise].identifier[moh-practitioner-expertise].system = "http://fhir.health.gov.il/identifier/practitioner-expertise"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value = "12345"
* qualification[moh-expertise].issuer = Reference(Organization/ministry-of-health)
* qualification[moh-expertise].extension[practice].valueCodeableConcept = http://fhir.health.gov.il/cs/practitioner-expertise-moh#1 "רפואה פנימית"
