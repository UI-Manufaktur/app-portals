module apps.portals.polls.submission;

@safe:
import apps.portals;

// The root entity for portal Ideas.
class DPTLPollSubmission : DOOPEntity {
  mixin(OOPEntityThis!("PTLPollSubmission"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_pollsubmissions")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "pollSubmissionId": OOPAttributeUUID.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Poll Submission"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the poll submission's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier for Contact associated with Poll Submission."]),
        "pollId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Poll associated with Poll Submission."]),
        "pollOptionId": OOPAttributeUUID.descriptions(["en":"Unique identifier for PollOption associated with Poll Submission."]),
        "visitorID": OOPAttributeString.descriptions(["en":""]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLPollSubmission"));

version(test_model_portals) {
  unittest {
    assert(PTLPollSubmission);
  
  auto entity = PTLPollSubmission;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}