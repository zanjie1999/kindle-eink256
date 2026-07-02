.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;
.super Ljava/lang/Object;
.source "ProvisionableEventManager.java"

# interfaces
.implements Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisionableEventManager"


# instance fields
.field private final mAutomaticEventRetrievalTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mPeripheralDevice:Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

.field private final mSupportedEventUUIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;Ljava/util/concurrent/ExecutorService;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mSupportedEventUUIDs:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mAutomaticEventRetrievalTypes:Ljava/util/Map;

    .line 100
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mPeripheralDevice:Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

    .line 101
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 102
    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    .line 104
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->initializeReservedEvents()V

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->initializeDynamicEvents(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mPeripheralDevice:Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->invokeDeviceEvent(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;)V

    return-void
.end method

.method private enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mSupportedEventUUIDs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " with command: "

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register unsupported UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for TypeToken: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/common/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for token TypeToken: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/common/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mAutomaticEventRetrievalTypes:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;

    invoke-direct {v1, p2, p3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;-><init>(Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeDynamicEvents(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;

    .line 134
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->getEventUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->getEventType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Adding Support Event UUID: %s, Event Type Key: %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mSupportedEventUUIDs:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->getEventUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->getEventType()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->getEventUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->WIFI_CONNECTION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_CONNECTION_STATUS:Lcom/amazon/whisperbridge/constants/Command;

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    .line 142
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->CBL_REGISTRATION_DETAILS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_REGISTRATION_INFORMATION:Lcom/amazon/whisperbridge/constants/Command;

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    .line 143
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_DONE_FAILURE_EVENT_UUID:Ljava/util/UUID;

    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_PROVISIONING_FAILURE_CAUSE:Lcom/amazon/whisperbridge/constants/Command;

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private initializeReservedEvents()V
    .locals 4

    .line 116
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mSupportedEventUUIDs:Ljava/util/Set;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_COMMAND_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperbridge/constants/Command;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    .line 120
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mSupportedEventUUIDs:Ljava/util/Set;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_EVENT_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_EVENT_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_EVENT_INTERFACE_UPDATED_EVENT_UUID:Ljava/util/UUID;

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperbridge/constants/Command;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->enableAutoRetrievalForEvent(Ljava/util/UUID;Lcom/amazon/whisperbridge/constants/Command;Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private invokeDeviceEvent(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;)V
    .locals 3

    .line 246
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking device event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;

    if-eqz v0, :cond_0

    .line 249
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v0, "Command Interface Updated"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    if-eqz v0, :cond_1

    .line 252
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v0, "Event Interface Updated"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Visible Networks Updated"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_SCAN_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    goto :goto_0

    .line 256
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    if-eqz v0, :cond_3

    .line 257
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Wifi Connected Updated"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    goto :goto_0

    .line 259
    :cond_3
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    if-eqz v0, :cond_4

    .line 260
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v1, "CBL Registration Updated"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->REGISTRATION_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    goto :goto_0

    .line 262
    :cond_4
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    if-eqz v0, :cond_5

    .line 263
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Provisioning Done Failure Event"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public onProvisionableEventNotification(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;)V
    .locals 3

    .line 173
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New event notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventKey()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mEventTypeKeyToUUIDMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported event notification for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->getEventType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Event Notification UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->PROVISIONING_DONE_SUCESS_EVENT_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_SUCCESS:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    return-void

    .line 187
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvents;->WIFI_VISIBLE_NETWORKS_UPDATED_EVENT_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mDeviceEventCallback:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_SCAN_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    return-void

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mAutomaticEventRetrievalTypes:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Retrieval not enabled for event UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mAutomaticEventRetrievalTypes:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;

    .line 203
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
