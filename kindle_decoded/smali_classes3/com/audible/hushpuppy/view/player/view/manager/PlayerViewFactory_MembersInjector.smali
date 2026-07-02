.class public final Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory_MembersInjector;
.super Ljava/lang/Object;
.source "PlayerViewFactory_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperAndDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final audiblePlayerMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectAudiblePlayerMetricsReporter(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->audiblePlayerMetricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    return-void
.end method

.method public static injectDebugHelper(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectEventBus(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static injectHushpuppyPerformanceUtils(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    return-void
.end method
