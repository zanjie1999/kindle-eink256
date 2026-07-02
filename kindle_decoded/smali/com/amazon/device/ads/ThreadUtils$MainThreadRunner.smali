.class public Lcom/amazon/device/ads/ThreadUtils$MainThreadRunner;
.super Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadRunner"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;)V
    .locals 1

    .line 305
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V

    return-void
.end method
