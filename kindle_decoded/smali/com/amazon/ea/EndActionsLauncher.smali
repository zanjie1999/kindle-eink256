.class public final Lcom/amazon/ea/EndActionsLauncher;
.super Ljava/lang/Object;
.source "EndActionsLauncher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsLauncher.kt\ncom/amazon/ea/EndActionsLauncher\n*L\n1#1,193:1\n*E\n"
.end annotation


# instance fields
.field private final comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

.field private controller:Lcom/amazon/readingactions/bottomsheet/BottomSheetController;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;)V
    .locals 1

    const-string/jumbo v0, "messageQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicsHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/ea/EndActionsLauncher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iput-object p2, p0, Lcom/amazon/ea/EndActionsLauncher;->comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    return-void
.end method

.method private final isBottomSheetEnabledInExperiment(Lcom/amazon/kindle/krx/application/AppType;Z)Z
    .locals 1

    .line 101
    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "MADREAD_RA_BSE_ANDROID_354988"

    goto :goto_0

    :cond_0
    const-string p1, "MADREAD_RA_BSE_ANDROID_356257"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/EndActionsLauncher;->isWeblabActive(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final isEarlyAccessBuild()Z
    .locals 2

    .line 90
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    return v0
.end method

.method private final isGatingWeblabEnabled(Lcom/amazon/kindle/krx/application/AppType;Z)Z
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "MADREAD_RA_BSE_ANDROID_354987"

    goto :goto_0

    :cond_0
    const-string p1, "MADREAD_RA_BSE_ANDROID_356256"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/EndActionsLauncher;->isWeblabActive(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final isWeblabActive(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 109
    :try_start_0
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v2, "EndActionsPlugin.sdk"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const-string/jumbo v2, "weblab"

    if-eqz p2, :cond_0

    .line 110
    :try_start_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object p2

    .line 111
    :goto_0
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    const-string p1, "T1"

    .line 112
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    const-string p2, "EndActionsLauncher"

    const-string v1, "Error calling weblab, defaulting to false"

    .line 114
    invoke-static {p2, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method


# virtual methods
.method public final isBottomSheetEnabled(Z)Z
    .locals 6

    .line 59
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/krx/application/AppType;

    .line 64
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->CMX:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 65
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 66
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 67
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 63
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/EndActionsLauncher;->comicsHelper:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-virtual {v1}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->isComics()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "COMICS_ANDROID_BOTTOM_SHEET_GATE_398705"

    .line 75
    invoke-direct {p0, p1, v4}, Lcom/amazon/ea/EndActionsLauncher;->isWeblabActive(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/amazon/ea/EndActionsLauncher;->isEarlyAccessBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    const-string v1, "apptype"

    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/amazon/ea/EndActionsLauncher;->isGatingWeblabEnabled(Lcom/amazon/kindle/krx/application/AppType;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabledInExperiment(Lcom/amazon/kindle/krx/application/AppType;Z)Z

    move-result p1

    return p1

    :cond_3
    return v3
.end method

.method public final launchEndActionsBottomSheet(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;Lcom/amazon/ea/model/layout/LayoutModel;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "entryPoint"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "layoutModel"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "pubSubManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v3, v1, Lcom/amazon/ea/EndActionsLauncher;->controller:Lcom/amazon/readingactions/bottomsheet/BottomSheetController;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->isFragmentActive()Z

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v0, "EndActionsLauncher"

    const-string v2, "EA BottomSheet is already visible"

    .line 125
    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 129
    :cond_0
    iget-object v3, v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    sget-object v5, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->END_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-virtual {v5}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    sget-object v6, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->BEFORE_YOU_GO_BSE:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    invoke-virtual {v6}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-static {v3, v5, v6}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->startContainerMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 132
    :try_start_0
    sget-object v5, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "EndActionsPlugin.sdk"

    if-nez v5, :cond_1

    :try_start_1
    sget-object v5, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    :cond_1
    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v5

    sget-object v7, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v5

    const-string v7, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v3, v4}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 137
    :cond_2
    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v5

    const-string v7, "EndActionsPlugin.sdk.readerManager"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v7, "it"

    .line 138
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v5, v1, Lcom/amazon/ea/EndActionsLauncher;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v7, Lcom/amazon/kindle/krx/events/UIEvent;

    sget-object v8, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-direct {v7, v4, v8}, Lcom/amazon/kindle/krx/events/UIEvent;-><init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 145
    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v5

    const-string v7, "ThemedResourceUtil.getColorModeFromAppTheme()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    :goto_1
    move-object v14, v5

    .line 146
    invoke-static {}, Lcom/amazon/readingactions/ui/helpers/FontChanger;->overrideDefaultTypefaces()V

    .line 148
    sget-object v5, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v4, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7

    const/4 v7, 0x3

    if-eq v5, v7, :cond_7

    const/4 v7, 0x4

    if-eq v5, v7, :cond_7

    const/4 v7, 0x5

    if-ne v5, v7, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    .line 153
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    const/4 v5, 0x1

    .line 158
    :goto_2
    sget-object v7, Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory;->Companion:Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion;

    const v8, 0x3f666666    # 0.9f

    const-string v9, "BSE_EA"

    invoke-virtual {v7, v8, v9, v0}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion;->create(FLjava/lang/String;Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;

    move-result-object v15

    .line 160
    sget-object v7, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    .line 162
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 163
    sget-object v7, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return v3

    :cond_9
    const/4 v10, 0x0

    .line 177
    new-instance v0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    const-string v8, "ReadingActionsBottomSheet"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x300

    const/16 v20, 0x0

    move-object v7, v0

    move-object v9, v15

    move v11, v5

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v7 .. v19}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    new-instance v7, Lcom/amazon/readingactions/bottomsheet/BottomSheet;

    sget-object v8, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v6

    const-string v8, "EndActionsPlugin.sdk.applicationManager"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v6

    const-string v8, "EndActionsPlugin.sdk.app\u2026Manager.asyncTaskExecutor"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v5, v0, v6}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;-><init>(ZLcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V

    .line 182
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;

    invoke-direct {v0, v3, v7, v2}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;-><init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/readingactions/bottomsheet/IBottomSheet;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v0, v1, Lcom/amazon/ea/EndActionsLauncher;->controller:Lcom/amazon/readingactions/bottomsheet/BottomSheetController;

    if-eqz v0, :cond_a

    .line 184
    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->start()V

    .line 185
    invoke-static {}, Lcom/amazon/ea/metrics/M;->onDisplay()V

    goto :goto_3

    .line 184
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    throw v0

    .line 160
    :cond_b
    :try_start_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 188
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v2, v0}, Lcom/amazon/ea/metrics/Profiler;->addException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 v4, 0x0

    :goto_3
    return v4
.end method
