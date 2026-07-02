.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;
.super Ljava/lang/Object;
.source "ProvisionableDeviceEventDispatcher.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.devices.handlers.ProvisionableDeviceEventDispatcher"


# instance fields
.field private final mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

.field private final mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 31
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceDetails must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceObservers must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleMessageProcessingException(Ljava/lang/Exception;)V
    .locals 2

    .line 85
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;-><init>([BLjava/lang/Exception;)V

    .line 86
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->MESSAGE_PROCESSING_EXCEPTION:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-direct {p1, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return-void
.end method

.method private invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->mDeviceObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 39
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$events$DeviceEvent:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Device Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEvent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 72
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 64
    :pswitch_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected data with disconnection event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->handleMessageProcessingException(Ljava/lang/Exception;)V

    return v1

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 57
    :pswitch_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Registration Details can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->handleMessageProcessingException(Ljava/lang/Exception;)V

    return v1

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 49
    :pswitch_4
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Wifi Scan Result can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->handleMessageProcessingException(Ljava/lang/Exception;)V

    return v1

    .line 53
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 41
    :pswitch_5
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 42
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Wifi Connection Details can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->handleMessageProcessingException(Ljava/lang/Exception;)V

    return v1

    .line 45
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;->invokeEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return v1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Event can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
