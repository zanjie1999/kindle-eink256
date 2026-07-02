.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;
.super Ljava/lang/Object;
.source "GattClientCallback.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.GattClientCallback"


# instance fields
.field private final mCallbackPromise:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

.field private final mCallbackSynchronizer:Ljava/lang/Object;

.field private final mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mHasConnected:Z

.field private final mOnConnected:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mHasConnected:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mOnConnected:Ljava/util/concurrent/Callable;

    .line 59
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mCallbackSynchronizer:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    .line 61
    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    new-instance p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$1;

    invoke-direct {p2, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)V

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mCallbackPromise:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceEventCallback can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callbackSynchronizer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onConnected can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mCallbackSynchronizer:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mHasConnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mHasConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mOnConnected:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mCallbackPromise:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    return-object p0
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mCallbackPromise:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$FutureWithSettableError;

    return-object v0
.end method

.method public onConnectionStateChanged(Lcom/amazon/whisperbridge/ble/BleGattClient;II)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$2;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;II)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
