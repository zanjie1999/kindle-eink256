.class public final Lcom/amazon/readingactions/helpers/WeblabManager$Companion;
.super Ljava/lang/Object;
.source "WeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/WeblabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/readingactions/helpers/WeblabManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isExperimentBottomSheetHeightVariantsEnabled()Z
    .locals 2

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_EXP_383456"

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isFullSizeBottomSheetVariantEnabled()Z
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isGatingBottomSheetHeightVariantsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isExperimentBottomSheetHeightVariantsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isGatingBottomSheetHeightVariantsEnabled()Z
    .locals 2

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_GAT_383459"

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isSABottomSheetEnabledInProd()Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSETreatment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabExperimentSABSETreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isTimeToReadVariantEnabled(Z)Z
    .locals 2

    .line 90
    new-instance v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;

    invoke-direct {v0}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->LAUNCH_START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;->isWeblabEnabled(Lcom/amazon/readingactions/helpers/WeblabName;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;

    invoke-direct {v0}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;->isWeblabEnabled(Lcom/amazon/readingactions/helpers/WeblabName;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static bridge synthetic shouldSABSETitleIncludeTTR$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSABSETitleIncludeTTR(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getWeblabExperimentSABSETreatment()Ljava/lang/String;
    .locals 4

    const-string v0, "MADREAD_RA_BSE_ANDROID_343404"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 111
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabExperimentSABSEVariantsTreatment()Ljava/lang/String;
    .locals 4

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_EXP_383456"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 131
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabGatingGRAutoshelfSABSETreatment(Z)Ljava/lang/String;
    .locals 1

    const-string v0, "MADREAD_RA_GR_AUTO_BSE_ANDROID_383720"

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWeblabGatingSABSETreatment()Ljava/lang/String;
    .locals 4

    const-string v0, "MADREAD_RA_BSE_ANDROID_343403"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 107
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabGatingSABSEVariantsBetaTreatment()Ljava/lang/String;
    .locals 4

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_EXP_BETA_384891"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 123
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabGatingSABSEVariantsTreatment()Ljava/lang/String;
    .locals 4

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_GAT_383459"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 127
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "weblab"

    .line 136
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object p2

    .line 138
    :goto_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Weblab treatment: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p1, "treatment"

    .line 142
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-string p1, "C"

    return-object p1
.end method

.method public final isGRAutoshelfEnabledInSABSE(Z)Z
    .locals 1

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingGRAutoshelfSABSETreatment(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "T1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final shouldSAAuthorBioWidgetBeFirstWidget()Z
    .locals 3

    .line 47
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    const-string v1, "T4"

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSEVariantsBetaTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSETreatment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "T1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabExperimentSABSETreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSEVariantsTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabExperimentSABSEVariantsTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final shouldSABSEExpandFirstBookInExperiment()Z
    .locals 3

    .line 56
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    const-string v1, "T3"

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSEVariantsBetaTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSETreatment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "T1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabExperimentSABSETreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabGatingSABSEVariantsTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabExperimentSABSEVariantsTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final shouldSABSETitleIncludeTTR(Z)Z
    .locals 2

    .line 69
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;

    invoke-direct {v0}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->START_ACTIONS_TIME_TO_READ_VARIANT_BETA:Lcom/amazon/readingactions/helpers/WeblabName;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;->isWeblabEnabled(Lcom/amazon/readingactions/helpers/WeblabName;Z)Z

    move-result p1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isSABottomSheetEnabledInProd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isTimeToReadVariantEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final shouldShowFullSizeBottomSheet()Z
    .locals 2

    .line 78
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_EXP_BETA_384891"

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->getWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isSABottomSheetEnabledInProd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isFullSizeBottomSheetVariantEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
