.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;
.super Ljava/lang/Object;
.source "DeviceDiscoveryStream.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->mEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private isEmitterActive()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->mEmitter:Lio/reactivex/ObservableEmitter;

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
.method protected onNext(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->isEmitterActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->onNext(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream$EventObserver;->run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return-void
.end method
