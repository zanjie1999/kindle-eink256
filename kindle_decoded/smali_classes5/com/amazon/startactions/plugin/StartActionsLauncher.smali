.class public final Lcom/amazon/startactions/plugin/StartActionsLauncher;
.super Ljava/lang/Object;
.source "StartActionsLauncher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartActionsLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartActionsLauncher.kt\ncom/amazon/startactions/plugin/StartActionsLauncher\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field private final comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private final sidecarRetriever:Lcom/amazon/readingactions/helpers/ISidecarRetriever;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/helpers/ISidecarRetriever;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;)V
    .locals 1

    const-string/jumbo v0, "sidecarRetriever"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pubSubManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicsHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->sidecarRetriever:Lcom/amazon/readingactions/helpers/ISidecarRetriever;

    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    iput-object p3, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iput-object p4, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    return-void
.end method

.method private final isBottomSheetEnabledInExperiment()Z
    .locals 4

    const-string v0, "MADREAD_RA_BSE_ANDROID_343404"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 110
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->returnWeblabTreatment$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final isGatingWeblabEnabled(Z)Z
    .locals 1

    const-string v0, "MADREAD_RA_BSE_ANDROID_343403"

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->returnWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "T1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static bridge synthetic isGatingWeblabEnabled$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;ZILjava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isGatingWeblabEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private final isLaunchWeblabEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->returnWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "T1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static bridge synthetic isLaunchWeblabEnabled$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isLaunchWeblabEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final makeBottomSheetViewConfig(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;ZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;
    .locals 14

    .line 201
    new-instance v13, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    const/4 v3, 0x0

    const-string v1, "ReadingActionsBottomSheet"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x300

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method private final returnWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 118
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "weblab"

    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object p2

    .line 120
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

    .line 121
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Weblab treatment: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StartActionsLauncher"

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p1, "treatment"

    .line 124
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-string p1, "C"

    return-object p1
.end method

.method static bridge synthetic returnWeblabTreatment$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->returnWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isBottomSheetEnabled()Z
    .locals 9

    .line 74
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v2, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/amazon/kindle/krx/application/AppType;

    .line 79
    sget-object v4, Lcom/amazon/kindle/krx/application/AppType;->CMX:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 80
    sget-object v4, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 81
    sget-object v4, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 82
    sget-object v4, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 78
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 85
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->isComics()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "COMICS_ANDROID_BOTTOM_SHEET_GATE_398705"

    .line 90
    invoke-static {p0, v0, v5, v7, v3}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isLaunchWeblabEnabled$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MADREAD_RA_BSE_VARIANTS_ANDROID_EXP_BETA_384891"

    .line 94
    invoke-direct {p0, v0, v6}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->returnWeblabTreatment(Ljava/lang/String;Z)Ljava/lang/String;

    return v6

    .line 96
    :cond_2
    invoke-static {p0, v5, v6, v3}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isGatingWeblabEnabled$default(Lcom/amazon/startactions/plugin/StartActionsLauncher;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isBottomSheetEnabledInExperiment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    invoke-virtual {v0, v6}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSABSETitleIncludeTTR(Z)Z

    return v6

    :cond_3
    return v5
.end method

.method public final isBottomSheetFullSize(Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z
    .locals 2

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 181
    :cond_1
    sget-object p1, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldShowFullSizeBottomSheet()Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public final launchStartActionsBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z
    .locals 6

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->metricName:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->START_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-virtual {v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    invoke-virtual {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v0, v1, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->startContainerMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    :try_start_0
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "EndActionsPlugin.sdk"

    if-nez v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    :cond_0
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    const-string v4, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 144
    :cond_1
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    const-string v4, "EndActionsPlugin.sdk.readerManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "it"

    .line 145
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v4, Lcom/amazon/kindle/krx/events/UIEvent;

    sget-object v5, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-direct {v4, v1, v5}, Lcom/amazon/kindle/krx/events/UIEvent;-><init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_3
    :goto_0
    const-string/jumbo v2, "startactions.dismissed.books"

    .line 153
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isBottomSheetFullSize(Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    move-result p1

    .line 158
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    const-string v2, "ThemedResourceUtil.getColorModeFromAppTheme()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    .line 160
    :goto_1
    invoke-static {}, Lcom/amazon/readingactions/ui/helpers/FontChanger;->overrideDefaultTypefaces()V

    .line 162
    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->sidecarRetriever:Lcom/amazon/readingactions/helpers/ISidecarRetriever;

    const v4, 0x3f666666    # 0.9f

    const-string v5, "BSE_SA"

    invoke-static {v2, v4, v5}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragmentFactory;->create(Lcom/amazon/readingactions/helpers/ISidecarRetriever;FLjava/lang/String;)Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 164
    invoke-direct {p0, v2, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->makeBottomSheetViewConfig(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;ZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    move-result-object p2

    .line 166
    new-instance v4, Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    const-string v5, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v3

    const-string v5, "EndActionsPlugin.sdk.app\u2026Manager.asyncTaskExecutor"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, p2, v3}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;-><init>(ZLcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V

    .line 168
    new-instance p1, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;

    iget-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsLauncher;->pubSubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-direct {p1, v2, v4, p2}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;-><init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/readingactions/bottomsheet/IBottomSheet;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    .line 170
    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    return v0

    :catch_0
    move-exception p1

    .line 174
    sget-object p2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {p2, p1}, Lcom/amazon/ea/metrics/Profiler;->addException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_2
    return v0
.end method
