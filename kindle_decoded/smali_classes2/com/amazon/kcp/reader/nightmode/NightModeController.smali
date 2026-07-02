.class public Lcom/amazon/kcp/reader/nightmode/NightModeController;
.super Ljava/lang/Object;
.source "NightModeController.java"


# static fields
.field private static final NIGHT_MODE_FAB_CONTROLLER:Ljava/lang/String; = "NIGHT_MODE_FAB_CONTROLLER"

.field private static inToggling:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/kcp/reader/nightmode/NightModeController;->inToggling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kcp/application/UserSettingsController$CallSource;)V

    return-void
.end method


# virtual methods
.method public isInNightMode()Z
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->getCurrentColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerSeekerDecorationProvider()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/nightmode/NightModeLocationSeekerDecorationProvider;-><init>(Lcom/amazon/kcp/reader/nightmode/NightModeController;)V

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->addLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    return-void
.end method

.method public toggleNightMode()V
    .locals 5

    .line 24
    sget-object v0, Lcom/amazon/kcp/reader/nightmode/NightModeController;->inToggling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/nightmode/NightModeController;->inToggling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->getCurrentColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_1

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorModeBeforeNightMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    .line 36
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOGGLE_NIGHT_MODE:src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->getCurrentColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", tgt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "NIGHT_MODE_FAB_CONTROLLER"

    .line 36
    invoke-virtual {v0, v4, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 38
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->setCurrentColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 39
    sget-object v0, Lcom/amazon/kcp/reader/nightmode/NightModeController;->inToggling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
