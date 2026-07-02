.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;
.super Ljava/lang/Object;
.source "DeviceEventStream.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;
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
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    .line 125
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->createWJProvsionee(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    .line 131
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$4;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$events$DeviceEvent:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This event isn\'t supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provisioning done failure received"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    .line 161
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    .line 162
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;

    invoke-direct {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)V

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :pswitch_1
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Provisioning done success received"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    .line 149
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    .line 150
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration state updated received"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBLRegistrationDetails Updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;->update(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    .line 142
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 143
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi connection state updated received"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiConnectionDetails Updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WifiConnectionStateChange;->update(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WifiConnectionStateChange;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;->update(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;->getEventObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 135
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->mDeviceResultObservableEmitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnexpectedConnectionFailure;

    invoke-direct {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnexpectedConnectionFailure;-><init>(I)V

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

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

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream$EventObserver;->run(Ljava/lang/Object;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;)V

    return-void
.end method
