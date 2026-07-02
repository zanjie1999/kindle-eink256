.class public final Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;
.super Ljava/lang/Object;
.source "LargeLibraryDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

.field private static final WEBLAB_LL_ENABLED_TREATMENT:Ljava/lang/String; = "T1"

.field private static final WEBLAB_LL_SMD_NARRATIVE_DISABLED_TREATMENT:Ljava/lang/String; = "T1"

.field private static isLargeLibraryEnabled:Z

.field private static final isLargeLibraryEnabledFlag$delegate:Lkotlin/Lazy;

.field private static final isLargeLibraryResumeCardEnabledFlag$delegate:Lkotlin/Lazy;

.field private static isNarrativesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    .line 8
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryEnabledFlag$2;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryEnabledFlag$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabledFlag$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils$isLargeLibraryResumeCardEnabledFlag$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabledFlag$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isFos5(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isFos5()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLargeLibraryEnabled$p(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    sget-boolean p0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled:Z

    return p0
.end method

.method public static final synthetic access$isLargeLibraryEnabledFlag$p(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabledFlag()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLargeLibraryFOSWeblabEnabled(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryFOSWeblabEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLargeLibraryResumeCardFOSWeblabEnabled(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardFOSWeblabEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLargeLibraryResumeCardWeblabEnabled(Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;)Z
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardWeblabEnabled()Z

    move-result p0

    return p0
.end method

.method public static final initializeLargeLibraryWeblab()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled:Z

    return-void
.end method

.method private final isFos5()Z
    .locals 5

    .line 91
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getFireOSVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "5"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static final isLargeLibraryEnabled()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabledFlag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

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

.method private final isLargeLibraryEnabledFlag()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabledFlag$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isLargeLibraryFOSWeblabEnabled()Z
    .locals 3

    .line 74
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

    const-string v2, "ANDROID_LARGE_LIBRARY_FOS_335486"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xa5d

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "T1"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static final isLargeLibraryResumeCardEnabled()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabledFlag()Z

    move-result v0

    return v0
.end method

.method private final isLargeLibraryResumeCardEnabledFlag()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabledFlag$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isLargeLibraryResumeCardFOSWeblabEnabled()Z
    .locals 3

    .line 87
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

    const-string v2, "KINDLE_ANDROID_LARGE_LIBRARY_RESUME_CARD_FOS_366847"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "T1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isLargeLibraryResumeCardWeblabEnabled()Z
    .locals 3

    .line 82
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

    const-string v2, "KINDLE_ANDROID_LARGE_LIBRARAY_RESUME_CARD_321774"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "T1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isNarrativesEnabled()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

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

.method public static final isServerSideGrandParentingDisabled()Z
    .locals 3

    .line 60
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

    const-string v2, "KINDLE_ANDROID_SERVERSIDE_GRANDPARENTING_USUK_GATING_403785"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0xa5d

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "T1"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
