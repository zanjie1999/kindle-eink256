.class public Lcom/amazon/kcp/debug/DebugButtons;
.super Ljava/lang/Object;
.source "DebugButtons.java"


# static fields
.field private static final CMS_DEPRECATION_APIS:Ljava/lang/String; = "CMSDeprecation"

.field private static final DOWNLOADED_FILTER_KEY:Ljava/lang/String; = "DownloadedFilterFlagStatus"

.field private static final GROUP_FILTERING_KEY:Ljava/lang/String; = "GroupFilteringDebugFlagStatus"

.field private static final HISTORY_KEY:Ljava/lang/String; = "HistoryDebugFlagStatus"

.field private static final IN_PROGRESS_FILTER_KEY:Ljava/lang/String; = "InProgressFilterDebugStatus"

.field private static final LIBRARY_AZ_SCRUBBER_KEY:Ljava/lang/String; = "LibraryAZScrubberDebugFlagStatus"

.field private static final LIBRARY_PERFORMANCE_TRACKER_KEY:Ljava/lang/String; = "LibraryPerformanceTrackerDebugStatus"

.field private static final NARRATIVE_KEY:Ljava/lang/String; = "NarrativeStatus"

.field private static final PINCH_TO_ZOOM_KEY:Ljava/lang/String; = "PinchToZoomDebugStatus"

.field private static final RECENCY_SYNC_KEY:Ljava/lang/String; = "EnableRecencySync"

.field private static final REMOTE_LICENSE_RELEASE_GAMMA_ENDPOINTS:Ljava/lang/String; = "RemoteLicenseReleaseGammaEndpoints"

.field private static final REMOTE_LICENSE_RELEASE_KEY:Ljava/lang/String; = "RemoteLicenseReleaseDebugFlagStatus"

.field private static final REMOVING_INVALID_DOWNLOADS_KEY:Ljava/lang/String; = "RemovingInvalidDownloadsDebugFlagStatus"

.field private static final SUCCESS_FLAG_CHANGE_MESSAGE:Ljava/lang/String; = "Success! Please restart the app."

.field private static final TOAST_DISMISS_KEY:Ljava/lang/String; = "ToastAutoDismissDebugFlagStatus"

.field private static final debugButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/debug/DebugToggleButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DebugButtons;->debugButtons:Ljava/util/List;

    return-void
.end method

.method private static createButtons(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    .line 42
    sget v1, Lcom/amazon/kindle/krl/R$id;->toast_auto_dismiss_button:I

    const-string v2, "ToastAutoDismissDebugFlagStatus"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const-string v2, "Toast Auto Dismiss"

    const-string v4, "ToastAutoDismissDebugFlagStatus"

    const-string v5, "com.amazon.kcp.debug.ToastAutoDismissUtils"

    const-string v6, "isToastAutoDismissUtilsEnabled"

    const-string v7, "Success!"

    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget v8, Lcom/amazon/kindle/krl/R$id;->history_debug_button:I

    const/4 v1, 0x0

    const-string v2, "HistoryDebugFlagStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    const-string v9, "History"

    const-string v11, "HistoryDebugFlagStatus"

    const-string v12, "com.amazon.kcp.debug.HistoryDebugUtils"

    const-string v13, "isHistoryEnabled"

    const-string v14, "Success! Please restart the app."

    invoke-static/range {v8 .. v14}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget v15, Lcom/amazon/kindle/krl/R$id;->remote_license_release_debug_button:I

    const-string v2, "RemoteLicenseReleaseDebugFlagStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v17

    const-string v16, "Remote License Release"

    const-string v18, "RemoteLicenseReleaseDebugFlagStatus"

    const-string v19, "com.amazon.kcp.debug.RemoteLicenseReleaseDebugUtils"

    const-string v20, "isRemoteLicenseReleaseDebugFlagEnabled"

    const-string v21, "Success! Please restart the app."

    invoke-static/range {v15 .. v21}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v2, Lcom/amazon/kindle/krl/R$id;->remote_license_release_gamma_endpoints_debug_button:I

    const-string v3, "RemoteLicenseReleaseGammaEndpoints"

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "RLR Gamma Endpoints"

    const-string v5, "RemoteLicenseReleaseGammaEndpoints"

    const-string v6, "com.amazon.kcp.debug.RemoteLicenseReleaseDebugUtils"

    const-string v7, "isRemoteLicenseReleaseGammaEndpointsDebugFlagEnabled"

    const-string v8, "Success!"

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget v9, Lcom/amazon/kindle/krl/R$id;->library_az_scrubber_debug_button:I

    const-string v2, "LibraryAZScrubberDebugFlagStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    const-string v10, "Library AZ Scrubber"

    const-string v12, "LibraryAZScrubberDebugFlagStatus"

    const-string v13, "com.amazon.kcp.debug.LibraryAZScrubberDebugUtils"

    const-string v14, "isLibraryAZScrubberDebugFlagEnabled"

    const-string v15, "Success! Please restart the app"

    invoke-static/range {v9 .. v15}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget v2, Lcom/amazon/kindle/krl/R$id;->downloaded_filter_debug_button:I

    const-string v3, "DownloadedFilterFlagStatus"

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "Downloaded Filter"

    const-string v5, "DownloadedFilterFlagStatus"

    const-string v6, "com.amazon.kcp.debug.DownloadedFilterDebugUtils"

    const-string v7, "isDownloadedFilterDebugFlagEnabled"

    const-string v8, "Success! Please restart the app."

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget v9, Lcom/amazon/kindle/krl/R$id;->removing_invalid_downloads_debug_button:I

    const-string v2, "RemovingInvalidDownloadsDebugFlagStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    const-string v10, "Removing Invalid Downloads"

    const-string v12, "RemovingInvalidDownloadsDebugFlagStatus"

    const-string v13, "com.amazon.kcp.debug.RemoveInvalidDownloadsDebugUtils"

    const-string v14, "isRemoveInvalidDownloadsDebugFlagEnabled"

    const-string v15, "Success! Please restart the app."

    invoke-static/range {v9 .. v15}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget v2, Lcom/amazon/kindle/krl/R$id;->library_performance_tracker_button:I

    const-string v3, "LibraryPerformanceTrackerDebugStatus"

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "Library Performance Tracker"

    const-string v5, "LibraryPerformanceTrackerDebugStatus"

    const-string v6, "com.amazon.kcp.debug.LibraryPerformanceDebugUtils"

    const-string v7, "isLibraryPerformanceTrackerEnabled"

    const-string v8, "Success! Please restart the app."

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget v3, Lcom/amazon/kindle/krl/R$id;->in_progress_debug_button:I

    const-string v2, "InProgressFilterDebugStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    const-string v4, "In Progress Filter"

    const-string v6, "InProgressFilterDebugStatus"

    const-string v7, "com.amazon.kcp.debug.InProgressFilterDebugUtils"

    const-string v8, "isInProgressFilterEnabled"

    const-string v9, "Success! Please restart the app."

    invoke-static/range {v3 .. v9}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    sget v10, Lcom/amazon/kindle/krl/R$id;->pinch_to_zoom_debug_button:I

    const-string v2, "PinchToZoomDebugStatus"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v12

    const-string v11, "Library Pinch to Zoom"

    const-string v13, "PinchToZoomDebugStatus"

    const-string v14, "com.amazon.kcp.debug.PinchToZoomDebugUtils"

    const-string v15, "isPinchToZoomEnabled"

    const-string v16, "Success! Please restart the app."

    invoke-static/range {v10 .. v16}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v2, Lcom/amazon/kindle/krl/R$id;->narrative_debug_button:I

    const-string v3, "NarrativeStatus"

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/debug/DebugUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "Narrative"

    const-string v5, "NarrativeStatus"

    const-string v6, "com.amazon.kcp.debug.LargeLibraryDebugUtils"

    const-string v7, "isNarrativesEnabled"

    const-string v8, "Success! Please restart the app."

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/debug/DebugButtons;->createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createNewButton(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 78
    new-instance v8, Lcom/amazon/kcp/debug/DebugToggleButton;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/debug/DebugToggleButton;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object p0, Lcom/amazon/kcp/debug/DebugButtons;->debugButtons:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/debug/DebugToggleButton;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/amazon/kcp/debug/DebugButtons;->debugButtons:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 34
    invoke-static {p0}, Lcom/amazon/kcp/debug/DebugButtons;->createButtons(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/amazon/kcp/debug/DebugButtons;->debugButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/debug/DebugToggleButton;

    .line 37
    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getDebugClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getDebugFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->isChecked()Z

    move-result v1

    invoke-static {p0, v2, v3, v4, v1}, Lcom/amazon/kcp/debug/DebugUtils;->setFeatureStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
