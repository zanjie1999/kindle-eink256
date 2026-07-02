.class public Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;
.super Lcom/amazon/kindle/krx/ui/BaseOverlayVisibilityManager;
.source "OverlayVisibilityManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseOverlayVisibilityManager;-><init>()V

    return-void
.end method

.method private getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 2

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized disableStandardOverlays()V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setStandardOverlaysDisabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableStandardOverlays()V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setStandardOverlaysDisabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flashOverlays()V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->flashOverlays()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOverlaysVisible(ZZ)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlaysOnFocus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
