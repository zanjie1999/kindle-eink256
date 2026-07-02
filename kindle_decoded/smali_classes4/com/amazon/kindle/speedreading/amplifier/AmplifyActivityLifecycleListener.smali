.class public Lcom/amazon/kindle/speedreading/amplifier/AmplifyActivityLifecycleListener;
.super Ljava/lang/Object;
.source "AmplifyActivityLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# instance fields
.field private final controller:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


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
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->isInAmplifyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->getAmplifyHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 79
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->isInAmplifyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AMPLIFY:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->stopAmplifyMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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
