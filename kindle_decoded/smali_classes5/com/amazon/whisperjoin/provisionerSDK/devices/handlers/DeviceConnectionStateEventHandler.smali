.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;
.super Ljava/lang/Object;
.source "DeviceConnectionStateEventHandler.java"

# interfaces
.implements Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;


# instance fields
.field private final mDelegateEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;->mDelegateEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    return-void
.end method

.method public onConnectionFailure(I)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;->mDelegateEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->DISCONNECTED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;->handleEvent(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)Z

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method
