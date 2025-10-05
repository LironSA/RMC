Instance: RambamOrganizationExample
InstanceOf: RambamOrganization
Title: "Rambam Medical Center Organization Example"
Description: "Organization resource demonstrating Rambam and ILCore constraints."

* id = "rambam-hospital"

// identifiers from ILCore slices
* identifier[moh-inst-symbol].system = "http://institutions.health.gov.il/Institutions"
* identifier[moh-inst-symbol].value = "1234567"

* identifier[legal-entity].system = "http://fhir.health.gov.il/identifier/legal-entity"
* identifier[legal-entity].value = "512345678"

// Rambam-specific identifier
* identifier[dept-rmb].system = "http://fhir.rmc.gov.il/identifier/dept-rmb"
* identifier[dept-rmb].value = "CARD-01"

// active
* active = true

// type (ILCore slices)
* type[moh-institute-type] = http://fhir.health.gov.il/cs/institution-type-moh#76 "משרדי ממשלה"
* type[moh-department-type] = http://fhir.health.gov.il/cs/department-type-moh#10000 "אשפוז - פנימית"

// Rambam-specific type
* type[dept-type-rmb].coding.system = "http://fhir.rmc.gov.il/cs/dept-type-rmb"
* type[dept-type-rmb].coding.code = #cardiology
* type[dept-type-rmb].coding.display = "Cardiology Department"

// name
* name = "Rambam Health Care Campus"

// telecom
* telecom[0].system = #phone
* telecom[0].value = "+972-4-7771111"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "info@rmc.gov.il"
* telecom[1].use = #work

// address
* address[0].line = "8 HaAliya HaShniya St."
* address[0].city = "Haifa"
* address[0].postalCode = "3109601"
* address[0].country = "IL"


