module apps.portals.polls.option;

@safe:
import apps.portals;

// 
class DPTLPollOption : DOOPEntity {
  mixin(OOPEntityThis!("PTLPollOption"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_polloptions")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
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
        "pollOptionId": OOPAttributeUUID.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Poll Option"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the poll option's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "answer": OOPAttributeString.descriptions(["en":""]),
        "displayOrder": OOPAttributeString.descriptions(["en":""]),
        "pollId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Poll associated with PollOption."]),
        "votes": OOPAttributeString.descriptions(["en":""]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLPollOption"));

version(test_model_portals) {
  unittest {
    assert(PTLPollOption);
  
  auto entity = PTLPollOption;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}