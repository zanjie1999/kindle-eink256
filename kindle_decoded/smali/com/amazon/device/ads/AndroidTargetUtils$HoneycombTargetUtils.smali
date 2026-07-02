.class Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombTargetUtils"
.end annotation


# direct methods
.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected static enableHardwareAcceleration(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x1000000

    .line 325
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected static final varargs executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 302
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected static hideActionBar(Landroid/app/Activity;)V
    .locals 0

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method protected static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method
