.class public final Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;
.super Ljava/lang/Object;
.source "BookmarkPageToggleStateManager.kt"


# instance fields
.field private volatile hasActiveSelection:Z

.field private volatile hasExternalScreen:Z

.field private volatile hasNavigation:Z

.field private volatile hasSettingsChange:Z

.field private volatile isBookMarkFeatureSupported:Z

.field private volatile isDocumentZoomed:Z

.field private volatile lastSettingsChangeComplete:J

.field private volatile showBookmarkOnNavigation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginSettingsChange()V
    .locals 5

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->lastSettingsChangeComplete:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->lastSettingsChangeComplete:J

    .line 56
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final canInteract()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasActiveSelection:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasNavigation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isDocumentZoomed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final endSettingsChange()V
    .locals 2

    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    .line 64
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    .line 65
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasNavigation:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->lastSettingsChangeComplete:J

    .line 67
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onResume()V
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->showBookmarkOnNavigation:Z

    .line 89
    iget-boolean v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    .line 90
    iget-boolean v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->reset()V

    .line 92
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->showBookmarkOnNavigation:Z

    .line 93
    iput-boolean v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    .line 94
    iput-boolean v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasActiveSelection:Z

    .line 75
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasNavigation:Z

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isDocumentZoomed:Z

    .line 77
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    .line 78
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->showBookmarkOnNavigation:Z

    .line 79
    iput-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    return-void
.end method

.method public final setBookMarkFeatureSupported(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    return-void
.end method

.method public final setDocumentZoomed(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isDocumentZoomed:Z

    return-void
.end method

.method public final setHasActiveSelection(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasActiveSelection:Z

    return-void
.end method

.method public final setHasExternalScreen(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    return-void
.end method

.method public final setHasNavigation(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasNavigation:Z

    return-void
.end method

.method public final setShowBookmarkOnNavigation(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->showBookmarkOnNavigation:Z

    return-void
.end method

.method public final shouldForceGone()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasExternalScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isDocumentZoomed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final shouldForceHidden()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasNavigation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->showBookmarkOnNavigation:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->isBookMarkFeatureSupported:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final shouldProcessNavigationEvents()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->hasSettingsChange:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
