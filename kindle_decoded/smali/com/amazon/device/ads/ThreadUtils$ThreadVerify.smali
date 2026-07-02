.class Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadVerify"
.end annotation


# static fields
.field private static instance:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->instance:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;
    .locals 1

    .line 382
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->instance:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    return-object v0
.end method


# virtual methods
.method isOnMainThread()Z
    .locals 2

    .line 391
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
