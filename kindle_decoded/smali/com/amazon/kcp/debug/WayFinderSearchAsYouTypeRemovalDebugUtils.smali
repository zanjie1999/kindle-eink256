.class public final Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;
.super Ljava/lang/Object;
.source "WayFinderSearchAsYouTypeRemovalDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;

.field private static final WEBLAB_TREATMENT:Ljava/lang/String; = "T1"

.field private static experimentWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

.field private static experimentWeblabValue:Ljava/lang/String;

.field private static gatingWeblabValue:Ljava/lang/String;

.field private static isWayFinderSearchAsYouTypeRemovalEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;

    const-string v0, "C"

    .line 12
    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->gatingWeblabValue:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->experimentWeblabValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isWayFinderSearchAsYouTypeRemovalEnabled()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalEnabled:Z

    return v0
.end method

.method private final isWayFinderSearchAsYouTypeRemovalWeblabEnabled()Z
    .locals 7

    .line 33
    const-class v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "WAYFINDER_SEARCH_AS_YOU_TYPE_GATING_ANDROID_390170"

    invoke-interface {v1, v4}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    sput-object v1, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->gatingWeblabValue:Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query WayFinder Search As You Type Removal For "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with Gating Weblab: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->gatingWeblabValue:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    sget-object v1, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->gatingWeblabValue:Ljava/lang/String;

    const-string v6, "T1"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "WAYFINDER_SEARCH_AS_YOU_TYPE_EXPERIMENT_ANDROID_390171"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    sput-object v1, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->experimentWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    if-eqz v1, :cond_3

    .line 39
    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v3

    :cond_3
    sput-object v3, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->experimentWeblabValue:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with Experiment Weblab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->experimentWeblabValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->experimentWeblabValue:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalEnabled:Z

    return-void
.end method
