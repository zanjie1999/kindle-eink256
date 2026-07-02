.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;
.super Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;
.source "CBLRegistrationUpdatedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->CBL_REGISTRATION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;-><init>(Ljava/util/UUID;Ljava/lang/Object;)V

    return-void
.end method
