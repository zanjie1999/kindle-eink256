.class public Lcom/amazon/ea/ReaderActivityLifecycleListener;
.super Ljava/lang/Object;
.source "ReaderActivityLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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
    .locals 0

    .line 24
    invoke-static {}, Lcom/amazon/ea/metrics/M;->saveSessionToDisk()V

    return-void
.end method

.method public onResume()V
    .locals 0

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
