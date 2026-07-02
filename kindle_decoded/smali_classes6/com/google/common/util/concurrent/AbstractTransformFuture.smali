.class abstract Lcom/google/common/util/concurrent/AbstractTransformFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 79
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/base/Function<",
            "-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    .line 58
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 193
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    return-void
.end method

.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final run()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    or-int/2addr v2, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 89
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 90
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 103
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_3
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 108
    :catch_4
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->cancel(Z)Z

    return-void
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
