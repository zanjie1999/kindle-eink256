.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;
.super Ljava/lang/Object;
.source "ProvisionableEvents.java"


# static fields
.field public static final CBL_REGISTRATION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_DONE_FAILURE_EVENT_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_DONE_SUCESS_EVENT_UUID:Ljava/util/UUID;

.field public static final PROVISIONING_EVENT_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

.field public static final WIFI_CONNECTION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

.field public static final WIFI_VISIBLE_NETWORKS_UPDATED_EVENT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3c208c85-0ac5-42d1-9146-4f9127f5bbe6"

    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "3c208c86-0ac5-42d1-9146-4f9127f5bbe6"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_EVENT_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "3a21089c-70cd-41a0-a0c1-eec777915484"

    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->WIFI_VISIBLE_NETWORKS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "3a21089d-70cd-41a0-a0c1-eec777915484"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->WIFI_CONNECTION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "a9cbb449-4a6d-48a7-97bb-fd76d682770a"

    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->CBL_REGISTRATION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "d589d028-1e7c-11e8-b467-0ed5f89f718b"

    .line 22
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_DONE_SUCESS_EVENT_UUID:Ljava/util/UUID;

    const-string v0, "d589d3e8-1e7c-11e8-b467-0ed5f89f718b"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_DONE_FAILURE_EVENT_UUID:Ljava/util/UUID;

    return-void
.end method
