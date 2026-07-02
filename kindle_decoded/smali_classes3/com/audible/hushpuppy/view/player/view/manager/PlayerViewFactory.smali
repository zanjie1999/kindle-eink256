.class public final Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;
.super Ljava/lang/Object;
.source "PlayerViewFactory.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MINI_PLAYER_VIEW_STATE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/player/PlayerViewState;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPSELL_PLAYER_VIEW_STATE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/player/PlayerViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected audiblePlayerMetricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

.field protected debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected eventBus:Lde/greenrobot/event/EventBus;

.field protected hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 60
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->MINI_PLAYER_VIEW_STATE:Ljava/util/EnumSet;

    .line 66
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/audible/hushpuppy/common/player/PlayerViewState;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->UPSELL_PLAYER_VIEW_STATE:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;)V

    return-void
.end method


# virtual methods
.method public construct(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;
    .locals 11

    .line 103
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MAIN_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-ne p2, v0, :cond_0

    .line 104
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating FullPlayerView"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    if-ne p2, v0, :cond_1

    .line 107
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating MiniPlayerView for library"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object v7, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->audiblePlayerMetricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    iget-object v8, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iget-object v9, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    iget-object v10, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v10}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;Lde/greenrobot/event/EventBus;)V

    return-object v0

    .line 110
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    .line 111
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->MINI_PLAYER_VIEW_STATE:Ljava/util/EnumSet;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating MiniPlayerView for reader"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object v7, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->audiblePlayerMetricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    iget-object v8, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iget-object v9, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    iget-object v10, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v10}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;Lde/greenrobot/event/EventBus;)V

    return-object v0

    .line 117
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->UPSELL_PLAYER_VIEW_STATE:Ljava/util/EnumSet;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-static {p4}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No network, not showing UpsellBannerWebView"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 124
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    if-eq p3, v0, :cond_4

    .line 125
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating UpsellBannerWebView"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    return-object v0

    .line 129
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating UpsellPlayerView"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V

    return-object v0

    .line 134
    :cond_5
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Returning null view for unknown PlayerType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and PlayerViewState="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1
.end method
