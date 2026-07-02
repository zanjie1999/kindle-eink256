.class abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;
.super Ljava/lang/Object;
.source "DiscoveryEventEmitter.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryEventEmitter"


# instance fields
.field private mEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmitterActive()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->mEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract onDeviceDiscovered(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->isEmitterActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->isEmitterActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    .line 48
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$events$DiscoveryEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4

    const/4 p2, 0x4

    if-eq v0, p2, :cond_4

    const/4 p2, 0x5

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled Discovery Event State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->TAG:Ljava/lang/String;

    const-string p2, "No ExceptionData found with discovery error"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceDiscoveryError;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceDiscoveryError;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->onDeviceDiscovered(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return-void
.end method

.method public setEmitter(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DiscoveryEventEmitter;->mEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method
