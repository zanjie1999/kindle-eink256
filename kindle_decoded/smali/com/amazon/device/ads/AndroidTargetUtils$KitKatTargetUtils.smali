.class Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KitKatTargetUtils"
.end annotation


# direct methods
.method public static enableWebViewDebugging(Z)V
    .locals 1

    .line 396
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;-><init>(Z)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
