.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;
.super Ljava/lang/Object;
.source "GattConnectionPromiseFactory.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCreateConnection:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->mCreateConnection:Ljava/util/concurrent/Callable;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "createConnection can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->mCreateConnection:Ljava/util/concurrent/Callable;

    return-object p0
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
