.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;
.super Ljava/util/concurrent/FutureTask;
.source "SendCommandResponseFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;->TAG:Ljava/lang/String;

    return-object v0
.end method
