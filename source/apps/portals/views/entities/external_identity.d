module apps.portals.external_identity;

@safe:
import apps.portals;

// ExternalIdentity that is attached to one or more objects, including other notes.
class DPTLExternalIdentity : DOOPEntity {
  mixin(OOPEntityThis!("PTLExternalIdentity"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_externalidentities")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows the delegate user who modified the record."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the external identity is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the external identity's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "userName": OOPAttributeString.descriptions(["en":"Shows the name of the custom entity."]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier for Contact associated with External Identity."]),
        "identityProviderName": OOPAttributeString.descriptions(["en":""]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLExternalIdentity"));

version(test_model_portals) {
  unittest {
    assert(PTLExternalIdentity);
  
  auto entity = PTLExternalIdentity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}