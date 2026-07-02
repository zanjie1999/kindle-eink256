.class public interface abstract Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
.super Ljava/lang/Object;
.source "IThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/IThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IExecutorBuilder"
.end annotation


# virtual methods
.method public abstract buildExecutor()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
.end method

.method public abstract withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
.end method

.method public abstract withThreadNum(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
.end method
