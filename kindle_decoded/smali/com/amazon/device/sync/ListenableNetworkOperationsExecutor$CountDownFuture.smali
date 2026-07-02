.class Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;
.super Lcom/amazon/whispersync/dcp/framework/ManualFuture;
.source "ListenableNetworkOperationsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountDownFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/dcp/framework/ManualFuture<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public decrementCount()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public incrementCount()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incrementing CountDownFuture after it reached zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
