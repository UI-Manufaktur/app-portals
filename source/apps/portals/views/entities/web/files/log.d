module apps.portals.web.files.log;

@safe:
import apps.portals;

// A record of the download of a web file
class DPTLWebFileLog : DOOPEntity {
  mixin(OOPEntityThis!("PTLWebFileLog"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_webfileLogs")   
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
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Web File Log"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the web file log's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the Contact associated with the Web File Log"]),
        "date": OOPAttributeString.descriptions(["en":"Shows the date and time that the request was made to download the file."]),
        "IpAddress": OOPAttributeString.descriptions(["en":"Shows the IP address of the computer of the user who requested the file download."]),
        "webFileId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Web File associated with the Web File Log"]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLWebFileLog"));

version(test_model_portals) {
  unittest {
    assert(PTLWebFileLog);
  
  auto entity = PTLWebFileLog;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}