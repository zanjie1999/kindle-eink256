.class public Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;
.super Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundThreadRunner"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;)V
    .locals 1

    .line 318
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V

    return-void
.end method
