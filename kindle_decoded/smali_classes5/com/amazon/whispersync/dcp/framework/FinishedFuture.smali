.class public final Lcom/amazon/whispersync/dcp/framework/FinishedFuture;
.super Ljava/lang/Object;
.source "FinishedFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCancelled:Z

.field private final mCause:Ljava/lang/Throwable;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Throwable;",
            "TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCancelled:Z

    .line 20
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCause:Ljava/lang/Throwable;

    .line 21
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mResult:Ljava/lang/Object;

    return-void
.end method

.method public static cancelled()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;-><init>(ZLjava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completed(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;-><init>(ZLjava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static thrown(Ljava/lang/Throwable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;-><init>(ZLjava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCancelled:Z

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mResult:Ljava/lang/Object;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->mCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
