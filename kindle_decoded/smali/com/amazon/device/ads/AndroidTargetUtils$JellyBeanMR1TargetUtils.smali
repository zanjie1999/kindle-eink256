.class Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellyBeanMR1TargetUtils"
.end annotation


# direct methods
.method public static setMediaPlaybackRequiresUserGesture(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method
