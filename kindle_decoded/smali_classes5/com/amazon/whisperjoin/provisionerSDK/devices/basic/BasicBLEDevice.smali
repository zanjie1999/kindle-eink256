.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;
.super Ljava/lang/Object;
.source "BasicBLEDevice.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicBLEDevice"


# instance fields
.field private mBleGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

.field private final mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mNewConnectionStateSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mObserverOnScheduler:Lio/reactivex/Scheduler;

.field private mSubscribeOnScheduler:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleManager;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    .line 59
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mNewConnectionStateSubject:Lio/reactivex/subjects/PublishSubject;

    const/4 p2, 0x0

    .line 60
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    .line 61
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 62
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mSubscribeOnScheduler:Lio/reactivex/Scheduler;

    .line 64
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mObserverOnScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperbridge/ble/BleGattClient;)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lio/reactivex/Completable;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->waitForConnectedState()Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)Lcom/amazon/whisperbridge/ble/BleManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;ILcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->checkOperationSuccess(ILcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method private checkOperationSuccess(ILcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw p1
.end method

.method private getConnectionUpdates()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mNewConnectionStateSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private waitForConnectedState()Lio/reactivex/Completable;
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->getConnectionUpdates()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "New Connection Update"

    .line 107
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnNext(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$4;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$4;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 108
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$3;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$3;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 115
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disconnect()Lio/reactivex/Completable;
    .locals 3

    .line 125
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$6;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "Successfully disconnected"

    .line 133
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnComplete(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$5;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$5;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 134
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public discoverServices()Lio/reactivex/Completable;
    .locals 3

    .line 145
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$9;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$9;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "Enqueuing Discovery of Services"

    .line 151
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mSubscribeOnScheduler:Lio/reactivex/Scheduler;

    .line 152
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mObserverOnScheduler:Lio/reactivex/Scheduler;

    .line 153
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$8;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$8;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 154
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$7;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$7;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "Discover Services Complete"

    .line 167
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnComplete(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "An error occurred while discovering services"

    .line 168
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public onConnectionStateChanged(Lcom/amazon/whisperbridge/ble/BleGattClient;II)V
    .locals 1

    .line 293
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mBleGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eq p1, p2, :cond_0

    .line 294
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mNewConnectionStateSubject:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Client callback mismatch"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mNewConnectionStateSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$13;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "Reading characteristic: Service: %s, Characteristic: %s"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mSubscribeOnScheduler:Lio/reactivex/Scheduler;

    .line 197
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->mObserverOnScheduler:Lio/reactivex/Scheduler;

    .line 198
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$12;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$12;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 199
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$11;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 205
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v2, "Reading characteristic complete"

    .line 213
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSuccess(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    .line 214
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v7

    const-string p1, "An Error Occurred while reading characteristic: Service: %s, Characteristic: %s"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public waitForConnection(Z)Lio/reactivex/Completable;
    .locals 2

    .line 87
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$2;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Z)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v1, "Starting connection to device."

    .line 93
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    .line 94
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v1, "Successfully connected to device"

    .line 101
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnComplete(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;->TAG:Ljava/lang/String;

    const-string v1, "An error occurred while connecting"

    .line 102
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
