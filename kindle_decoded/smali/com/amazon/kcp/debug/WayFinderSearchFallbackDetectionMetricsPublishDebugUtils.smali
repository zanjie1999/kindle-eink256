.class public final Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;
.super Ljava/lang/Object;
.source "WayFinderSearchFallbackDetectionMetricsPublishDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;

.field private static final WEBLAB_TREATMENT:Ljava/lang/String; = "T1"

.field private static isWayFinderSearchFallbackDetectionMetricsPublishEnabled:Z

.field private static launchWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

.field private static launchWeblabValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;

    const-string v0, "C"

    .line 13
    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->launchWeblabValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isWayFinderSearchFallbackDetectionMetricsPublishEnabled()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->isWayFinderSearchFallbackDetectionMetricsPublishEnabled:Z

    return v0
.end method

.method private final isWayFinderSearchFallbackDetectionMetricsWeblabEnabled()Z
    .locals 3

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "SEARCH_FALLBACK_DETECTION_METRICS_ANDROID_405516"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->launchWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sput-object v1, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->launchWeblabValue:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query WayFinder Search Fallback Detection Metrics Publish For "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "with Launch Weblab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object v1, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->launchWeblabValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->launchWeblabValue:Ljava/lang/String;

    const-string v1, "T1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->isWayFinderSearchFallbackDetectionMetricsWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->isWayFinderSearchFallbackDetectionMetricsPublishEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->isWayFinderSearchFallbackDetectionMetricsPublishEnabled:Z

    return-void
.end method
