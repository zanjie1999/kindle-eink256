.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;
.super Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;
.source "ProvisionableCommandInterfaceUpdatedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;-><init>(Ljava/util/UUID;Ljava/lang/Object;)V

    return-void
.end method
