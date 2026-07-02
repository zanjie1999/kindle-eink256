.class public Lcom/amazon/xray/plugin/XrayPlugin$ReaderActivityLifecycleListener;
.super Ljava/lang/Object;
.source "XrayPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/XrayPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReaderActivityLifecycleListener"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 283
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop book duration timer metric or save session to disk; current book is null"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "XrayReadingSession"

    .line 288
    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "BookOpenDuration"

    .line 289
    invoke-virtual {v2, v4, v3}, Lcom/amazon/xray/metrics/Metric;->stopTimer(Ljava/lang/String;Z)J

    .line 292
    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->saveSessionToDisk(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 271
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v1, "Cannot start book duration timer metric; current book is null"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "XrayReadingSession"

    .line 276
    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "BookOpenDuration"

    .line 277
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
