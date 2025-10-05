Profile: RambamEncounterMoves
Parent: il-core-encounter
Id: rambam-encounter-moves
Title: "Rambam Encounter Moves"
Description: "Rambam Encounter Moves Profile"
* meta 1..1
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "system"
* meta.profile ^slicing.rules = #open
* meta.profile contains rambam-encounter-moves 1..1
* meta.profile[rambam-encounter-moves] = "http://fhir.rmc.gov.il/StructureDefinition/rambam-encounter-moves" (exactly)
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
* class	1..1
* class.system	1..1
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.code	1..1
* class.display	1..1
* subject.reference 1..1
* period 0..1
* period.start 1..1
* period.end 0..1
* location 1..1
* location.location 1..1
* serviceProvider 1..1
* serviceProvider.reference 1..1
* partOf 1..1
