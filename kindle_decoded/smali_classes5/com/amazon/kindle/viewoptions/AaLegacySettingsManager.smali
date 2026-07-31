.class public final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;
.super Ljava/lang/Object;
.source "AaLegacySettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaLegacySettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaLegacySettingsManager.kt\ncom/amazon/kindle/viewoptions/AaLegacySettingsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1228:1\n1#2:1229\n*E\n"
.end annotation


# instance fields
.field private final MAX_FONT_SIZE_INDEX:I

.field private final TAG:Ljava/lang/String;

.field private aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

.field private final context:Landroid/content/Context;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private downloadableFontsManager:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

.field private fontFamilyManager:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

.field private letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

.field private final orientationManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

.field private readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

.field private readingProgressModel:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

.field private final settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docViewer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 71
    const-class p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(AaLegacySettingsManager::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->TAG:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->MAX_FONT_SIZE_INDEX:I

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string p2, "Utils.getFactory().userSettingsController"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 75
    new-instance p2, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;

    .line 77
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    const-string v1, "PubSubMessageService.get\u2026gManagerImpl::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p2, p1, v0}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManagerImpl;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->orientationManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$createReadingProgressContentSettings(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/util/List;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->createReadingProgressContentSettings(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDisabledMessageForAlignment(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDisabledMessageForAlignment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOrientationManager$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->orientationManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    return-object p0
.end method

.method public static final synthetic access$getReadingProgressModel$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingProgressModel:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setFontSizeIndex(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->setFontSizeIndex(I)V

    return-void
.end method

.method private final createReadingProgressContentSettings(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getReadingProgressOptionTitles()Ljava/util/List;

    move-result-object v4

    move-object/from16 v10, p0

    .line 975
    iget-object v1, v10, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_options_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026ress_options_description)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getReadingProgressCurrentSelectedStates()[I

    move-result-object v6

    const/4 v1, 0x4

    new-array v9, v1, [I

    .line 977
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_progress_option_location_or_page:I

    const/4 v2, 0x0

    aput v1, v9, v2

    .line 978
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_progress_option_time_left_chapter:I

    const/4 v2, 0x1

    aput v1, v9, v2

    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_progress_option_time_left_book:I

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 979
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_progress_option_hide:I

    const/4 v2, 0x3

    aput v1, v9, v2

    .line 980
    new-instance v14, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getReadingProgressOnSelectedOptionsChangeHandler()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 983
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getOnViewCreatedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v14

    .line 980
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[I)V

    .line 984
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS_OPTIONS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v12

    .line 985
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getReadingProgressOptionVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    const/16 v13, 0x12c

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    move-object v11, v1

    .line 984
    invoke-direct/range {v11 .. v18}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final getAlignmentHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 864
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAlignmentHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAlignmentHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getAlignmentIndex()I
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

    move-result v0

    return v0
.end method

.method private final getAnimateTransitionsSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 750
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimateTransitionsSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimateTransitionsSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getAnimateTransitionsSettingValue()Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method private final getAnimationSpeedIndex()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewTransitionIndex()I

    move-result v0

    return v0
.end method

.method private final getAnimationSpeedSeekbarHandler()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 764
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getAutoPlayMediaSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 744
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAutoPlayMediaSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAutoPlayMediaSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getAutoPlayMediaSettingValue()Z
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v0

    return v0
.end method

.method private final getBackgroundColorHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 874
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getBackgroundColorMatchSystemHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 896
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorMatchSystemHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorMatchSystemHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getBackgroundColorMatchSystemValue()Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getIsPageColorMatchingSystemTheme()Z

    move-result v0

    return v0
.end method

.method private final getComicScrollingSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getComicScrollingSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getComicScrollingSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getComicScrollingSettingValue()Z
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v0

    .line 713
    sget-object v1, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getContinuousScrollingSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getContinuousScrollingSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getContinuousScrollingSettingValue()Z
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    return v0
.end method

.method private final getCurrentBackgroundColorIndex()I
    .locals 8

    .line 770
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 771
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1

    .line 780
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    :goto_2
    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    goto :goto_3

    :cond_8
    const/4 v1, 0x2

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_3
    return v1
.end method

.method private final getDisabledMessageForAlignment()Ljava/lang/String;
    .locals 2

    .line 1204
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->shouldDisableTextAlignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_not_available_subtitle_font_size_too_large:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026itle_font_size_too_large)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_not_available_subtitle_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ailable_subtitle_generic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getDownloadableFontsSettingDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->isDownloadableFontsSettingVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 995
    :cond_0
    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 996
    sget v4, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_downloadable_fonts_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "resources.getString(R.st\u2026downloadable_fonts_title)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_downloadable_fonts_subtitle:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "resources.getString(R.st\u2026nloadable_fonts_subtitle)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    iget-object v6, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->downloadableFontsManager:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    if-nez v6, :cond_1

    .line 1004
    new-instance v6, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    invoke-direct {v6}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;-><init>()V

    .line 1005
    iput-object v6, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->downloadableFontsManager:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    .line 1008
    :cond_1
    new-instance v15, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0x7ffffff

    const/16 v36, 0x0

    invoke-direct/range {v7 .. v36}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1010
    iget-object v7, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->getView(Landroid/content/Context;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    move-result-object v6

    .line 1009
    invoke-virtual {v3, v6}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1011
    sget-object v6, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v6}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1012
    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1014
    new-instance v3, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v6, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS_OPTIONS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v6}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v8

    const/16 v9, 0x64

    sget-object v11, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1015
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    :cond_2
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1019
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    const/4 v2, 0x0

    .line 1020
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1021
    invoke-virtual {v1, v5}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1022
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_fonts_disclosure:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1023
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->DISCLOSURE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    :cond_3
    move-object v2, v3

    return-object v2
.end method

.method private final getFontFamilySettingDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->fontFamilyManager:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->fontFamilyManager:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->fontFamilyManager:Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyManager;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1044
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1045
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1046
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_font_family_custom_view:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object p1
.end method

.method private final getFontSizeIndex()I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    return v0
.end method

.method private final getFontSizeSeekbarHandler()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 846
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getFontSizeSeekbarHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getFontSizeSeekbarHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getHighlightMenuSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 651
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getHighlightMenuSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getHighlightMenuSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getHighlightMenuSettingValue()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v0

    return v0
.end method

.method private final getLetterboxingBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1061
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1062
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionIDs()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1063
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKBOX_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    :cond_1
    return-void
.end method

.method private final getLetterboxingHandler()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "[I",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getChangeHandler()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0

    .line 614
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingHandler$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingHandler$2;

    return-object v0
.end method

.method private final getLetterboxingSettingValue()[I
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getSettingValues()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method private final getLetterboxingSettingViewCreationListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->letterboxManager:Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getViewCreationListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0

    .line 624
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;

    return-object v0
.end method

.method private final getLineSpacingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 853
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLineSpacingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLineSpacingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getLineSpacingIndex()I
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v0

    return v0
.end method

.method private final getMarginIndex()I
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 796
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final getMarginOptionsHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 911
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getMultiColumnHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 900
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMultiColumnHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMultiColumnHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getMultiColumnIndex()I
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final getOpenInGuidedViewSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 922
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOpenInGuidedViewSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOpenInGuidedViewSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getOpenInGuidedViewSettingValue()Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isOpenInGuidedViewEnabled()Z

    move-result v0

    return v0
.end method

.method private final getOrientationLockHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOrientationLockHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getPageTurnAnimationSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 631
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getPageTurnAnimationSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getPageTurnAnimationSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getPageTurnAnimationSettingValue()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v0

    return v0
.end method

.method private final getReadingPresetsDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemesView()Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1051
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 1052
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object p1
.end method

.method private final getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    return-object v0
.end method

.method private final getReadingProgressSetting(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 7

    .line 952
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingProgressModel:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingProgressModel:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingProgressModel:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    if-eqz v0, :cond_1

    .line 957
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u20262_reading_progress_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 958
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026eading_progress_subtitle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 961
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 962
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->stateDescriptionGetter()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 963
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->backHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 964
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->createReadingProgressContentSettings(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 965
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_progress_disclosure:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 966
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->DISCLOSURE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getShowMediaSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 728
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowMediaSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowMediaSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getShowMediaSettingValue()Z
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v0

    return v0
.end method

.method private final getShowPageOnEnterSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 932
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowPageOnEnterSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowPageOnEnterSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getShowPageOnEnterSettingValue()Z
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnEnterEnabled()Z

    move-result v0

    return v0
.end method

.method private final getShowPageOnExitSettingHander()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 942
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowPageOnExitSettingHander$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getShowPageOnExitSettingHander$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getShowPageOnExitSettingValue()Z
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnExitEnabled()Z

    move-result v0

    return v0
.end method

.method private final getTurnPagesWithVolumeControlsSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getTurnPagesWithVolumeControlsSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getTurnPagesWithVolumeControlsSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getTurnPagesWithVolumeControlsSettingValue()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumePagesControlsIgnoreTTS()Z

    move-result v0

    return v0
.end method

.method private final getVisibleClockSettingHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getVisibleClockSettingHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getVisibleClockSettingHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    return-object v0
.end method

.method private final getVisibleClockSettingValue()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v0

    return v0
.end method

.method private final isDownloadableFontsSettingVisible()Z
    .locals 3

    .line 1027
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1029
    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v2, v0}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 1034
    :cond_2
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->DOWNLOADABLE_FONTS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method private final isLavaMagazine()Z
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, "docViewer.bookInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private final isOrientationLocked()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->orientationManager:Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->isLocked()Z

    move-result v0

    return v0
.end method

.method private final isReaderContentVertical()Z
    .locals 2

    .line 1216
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/amazon/ksdk/presets/BookContentType;->VERTICAL:Lcom/amazon/ksdk/presets/BookContentType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final setFontSizeIndex(I)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->readingPresetsObserver:Lcom/amazon/ksdk/presets/ReadingPresetsObserver;

    if-eqz v0, :cond_0

    .line 1225
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    :cond_0
    return-void
.end method

.method public final getCheckboxGroupHandlerForIdentifier(I)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function2<",
            "[I",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 593
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLetterboxingHandler()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    goto :goto_0

    .line 594
    :cond_0
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getCheckboxGroupHandlerForIdentifier$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getCheckboxGroupHandlerForIdentifier$1;

    :goto_0
    return-object p1
.end method

.method public final getCheckboxGroupInitialValueForIdentifier(I)[I
    .locals 1

    .line 600
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLetterboxingSettingValue()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    :goto_0
    return-object p1
.end method

.method public final getCheckboxGroupViewCreationListenerForIdentifier(I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 607
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLetterboxingSettingViewCreationListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 608
    :cond_0
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getCheckboxGroupViewCreationListenerForIdentifier$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getCheckboxGroupViewCreationListenerForIdentifier$1;

    :goto_0
    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDisabledDisplayForIdentifier(I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 464
    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 467
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 468
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v33}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_continuous_scrolling_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 469
    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_not_available_subtitle_generic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 470
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    .line 472
    :cond_0
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 473
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v33}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_alignment_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDisabledMessageForAlignment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 475
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    .line 477
    :cond_1
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 478
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v33}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_multi_column_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 479
    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_not_available_subtitle_generic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 480
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    .line 483
    :cond_2
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 484
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v33}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_page_turn_animation_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 485
    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_page_turn_animation_disabled_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 486
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    .line 488
    :cond_3
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 489
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v33}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_highlight_menu_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 490
    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_not_available_subtitle_generic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 491
    sget-object v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v1

    .line 493
    :cond_4
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x7ffffff

    const/16 v32, 0x0

    invoke-direct/range {v3 .. v32}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public final getIntSettingInitialValue(I)I
    .locals 1

    .line 552
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getFontSizeIndex()I

    move-result p1

    goto :goto_0

    .line 555
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION_SLIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAnimationSpeedIndex()I

    move-result p1

    goto :goto_0

    .line 558
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getCurrentBackgroundColorIndex()I

    move-result p1

    goto :goto_0

    .line 559
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getMarginIndex()I

    move-result p1

    goto :goto_0

    .line 560
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLineSpacingIndex()I

    move-result p1

    goto :goto_0

    .line 561
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAlignmentIndex()I

    move-result p1

    goto :goto_0

    .line 562
    :cond_5
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getMultiColumnIndex()I

    move-result p1

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final getOptionListHandlerForIdentifier(I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 581
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getBackgroundColorHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 582
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getMarginOptionsHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 583
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLineSpacingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 584
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAlignmentHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 585
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getMultiColumnHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 587
    :cond_4
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOptionListHandlerForIdentifier$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getOptionListHandlerForIdentifier$1;

    :goto_0
    return-object p1
.end method

.method public final getPriorityForIdentifier(I)I
    .locals 9

    .line 422
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    const/16 v1, 0x384

    const/16 v2, 0x258

    const/16 v3, 0x1f4

    const/16 v4, 0x44c

    const/16 v5, 0x3e8

    const/16 v6, 0x320

    const/16 v7, 0x12c

    const/16 v8, 0x64

    if-ne p1, v0, :cond_0

    :goto_0
    const/16 v1, 0x64

    goto/16 :goto_7

    .line 423
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/16 v1, 0xc8

    goto/16 :goto_7

    .line 424
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    :goto_1
    const/16 v1, 0x12c

    goto/16 :goto_7

    .line 426
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    const/16 v1, 0x320

    goto/16 :goto_7

    .line 428
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    :goto_3
    const/16 v1, 0x3e8

    goto/16 :goto_7

    .line 429
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    :goto_4
    const/16 v1, 0x44c

    goto/16 :goto_7

    .line 431
    :cond_5
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 433
    :cond_6
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_5
    const/16 v1, 0x1f4

    goto/16 :goto_7

    .line 434
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_5

    .line 435
    :cond_8
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    :goto_6
    const/16 v1, 0x258

    goto/16 :goto_7

    .line 436
    :cond_9
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/16 v1, 0x2bc

    goto/16 :goto_7

    .line 437
    :cond_a
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_2

    .line 438
    :cond_b
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    goto/16 :goto_7

    .line 439
    :cond_c
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    goto :goto_3

    .line 441
    :cond_d
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 v1, 0x32

    goto :goto_7

    .line 444
    :cond_e
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_f

    goto/16 :goto_0

    .line 447
    :cond_f
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_10

    goto/16 :goto_1

    .line 448
    :cond_10
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_11

    const/16 v1, 0x190

    goto :goto_7

    .line 450
    :cond_11
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_12

    goto :goto_6

    .line 452
    :cond_12
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_13

    goto/16 :goto_2

    .line 453
    :cond_13
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_7

    .line 454
    :cond_14
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_15

    goto/16 :goto_3

    .line 455
    :cond_15
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_16

    goto/16 :goto_4

    .line 457
    :cond_16
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const v1, 0x186a0

    :goto_7
    return v1
.end method

.method public final getSliderHandlerForIdentifier(I)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getFontSizeSeekbarHandler()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION_SLIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAnimationSpeedSeekbarHandler()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    goto :goto_0

    .line 574
    :cond_1
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getSliderHandlerForIdentifier$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getSliderHandlerForIdentifier$1;

    :goto_0
    return-object p1
.end method

.method public final getToggleHandlerForIdentifier(I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContinuousScrollingSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 501
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getOrientationLockHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 502
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getComicScrollingSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 503
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getBackgroundColorMatchSystemHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 506
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getPageTurnAnimationSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 507
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getVisibleClockSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto/16 :goto_0

    .line 508
    :cond_5
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getHighlightMenuSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 509
    :cond_6
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getTurnPagesWithVolumeControlsSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 510
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowMediaSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 511
    :cond_8
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAutoPlayMediaSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 512
    :cond_9
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAnimateTransitionsSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 515
    :cond_a
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getOpenInGuidedViewSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 516
    :cond_b
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowPageOnEnterSettingHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 517
    :cond_c
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowPageOnExitSettingHander()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    goto :goto_0

    .line 519
    :cond_d
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getToggleHandlerForIdentifier$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getToggleHandlerForIdentifier$1;

    :goto_0
    return-object p1
.end method

.method public final getToggleInitialValueForIdentifier(I)Z
    .locals 1

    .line 526
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContinuousScrollingSettingValue()Z

    move-result p1

    goto/16 :goto_0

    .line 527
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->isOrientationLocked()Z

    move-result p1

    goto/16 :goto_0

    .line 528
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getComicScrollingSettingValue()Z

    move-result p1

    goto/16 :goto_0

    .line 529
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getBackgroundColorMatchSystemValue()Z

    move-result p1

    goto/16 :goto_0

    .line 532
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getPageTurnAnimationSettingValue()Z

    move-result p1

    goto/16 :goto_0

    .line 533
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getVisibleClockSettingValue()Z

    move-result p1

    goto/16 :goto_0

    .line 534
    :cond_5
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getHighlightMenuSettingValue()Z

    move-result p1

    goto :goto_0

    .line 535
    :cond_6
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getTurnPagesWithVolumeControlsSettingValue()Z

    move-result p1

    goto :goto_0

    .line 536
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowMediaSettingValue()Z

    move-result p1

    goto :goto_0

    .line 537
    :cond_8
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAutoPlayMediaSettingValue()Z

    move-result p1

    goto :goto_0

    .line 538
    :cond_9
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAnimateTransitionsSettingValue()Z

    move-result p1

    goto :goto_0

    .line 541
    :cond_a
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getOpenInGuidedViewSettingValue()Z

    move-result p1

    goto :goto_0

    .line 542
    :cond_b
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowPageOnEnterSettingValue()Z

    move-result p1

    goto :goto_0

    .line 543
    :cond_c
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getShowPageOnExitSettingValue()Z

    move-result p1

    goto :goto_0

    :cond_d
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setThemesManager(Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    return-void
.end method

.method public final settingBuilderForIdentifier(I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 95
    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    new-instance v15, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v33, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0x7ffffff

    const/16 v32, 0x0

    invoke-direct/range {v3 .. v32}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v2, :cond_0

    move-object/from16 v3, v33

    return-object v3

    :cond_0
    move-object/from16 v3, v33

    .line 101
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 102
    invoke-direct {v0, v3}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getFontFamilySettingDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    return-object v3

    .line 104
    :cond_1
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 105
    invoke-direct {v0, v3}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDownloadableFontsSettingDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-result-object v15

    if-eqz v15, :cond_2

    goto :goto_0

    :cond_2
    move-object v15, v3

    :goto_0
    return-object v15

    .line 107
    :cond_3
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v4, :cond_b

    .line 110
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_4

    new-array v9, v4, [I

    .line 113
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_light_checked:I

    aput v10, v9, v8

    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_sepia_checked:I

    aput v10, v9, v7

    .line 114
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_green_checked:I

    aput v10, v9, v6

    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_dark_checked:I

    aput v10, v9, v5

    goto :goto_1

    :cond_4
    new-array v9, v4, [I

    .line 116
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_light_checked:I

    aput v10, v9, v8

    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_dark_checked:I

    aput v10, v9, v7

    .line 117
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_sepia_checked:I

    aput v10, v9, v6

    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_green_checked:I

    aput v10, v9, v5

    :goto_1
    if-eqz v1, :cond_5

    new-array v10, v4, [I

    .line 121
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_light_unchecked:I

    aput v11, v10, v8

    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_sepia_unchecked:I

    aput v11, v10, v7

    .line 122
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_green_unchecked:I

    aput v11, v10, v6

    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_dark_unchecked:I

    aput v11, v10, v5

    goto :goto_2

    :cond_5
    new-array v10, v4, [I

    .line 124
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_light_unchecked:I

    aput v11, v10, v8

    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_dark_unchecked:I

    aput v11, v10, v7

    .line 125
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_sepia_unchecked:I

    aput v11, v10, v6

    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_color_green_unchecked:I

    aput v11, v10, v5

    .line 128
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 129
    sget v12, Lcom/amazon/kindle/krl/R$string;->white:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_6

    .line 131
    sget v12, Lcom/amazon/kindle/krl/R$string;->black:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_6
    sget v12, Lcom/amazon/kindle/krl/R$string;->sepia:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget v12, Lcom/amazon/kindle/krl/R$string;->green:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_7

    .line 136
    sget v12, Lcom/amazon/kindle/krl/R$string;->black:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v1, :cond_8

    new-array v4, v4, [I

    .line 141
    sget v12, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_white:I

    aput v12, v4, v8

    sget v8, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_sepia:I

    aput v8, v4, v7

    .line 142
    sget v7, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_green:I

    aput v7, v4, v6

    sget v6, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_black:I

    aput v6, v4, v5

    goto :goto_3

    :cond_8
    new-array v4, v4, [I

    .line 144
    sget v12, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_white:I

    aput v12, v4, v8

    sget v8, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_black:I

    aput v8, v4, v7

    .line 145
    sget v7, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_sepia:I

    aput v7, v4, v6

    sget v6, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bg_color_option_green:I

    aput v6, v4, v5

    :goto_3
    if-eqz v1, :cond_9

    .line 149
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_page_color_title:I

    goto :goto_4

    .line 151
    :cond_9
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_background_color_title:I

    .line 154
    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 155
    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_circle_button:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 156
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 157
    invoke-virtual {v3, v10}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 158
    invoke-virtual {v3, v11}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 159
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 161
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 162
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_update_page_using_system_theme:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->setSubTitle(Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKABLE_RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->setBuildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)V

    goto/16 :goto_7

    .line 165
    :cond_a
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->setBuildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)V

    goto/16 :goto_7

    .line 168
    :cond_b
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_c

    .line 169
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_continuous_scrolling_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 170
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_continuous_scrolling_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 171
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_continuous_scroll_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 172
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 174
    :cond_c
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_e

    new-array v1, v5, [I

    .line 175
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_narrow_checked:I

    aput v4, v1, v8

    .line 176
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_normal_checked:I

    aput v4, v1, v7

    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_wide_checked:I

    aput v4, v1, v6

    new-array v4, v5, [I

    .line 177
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_narrow_unchecked:I

    aput v9, v4, v8

    .line 178
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_normal_unchecked:I

    aput v9, v4, v7

    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_wide_unchecked:I

    aput v9, v4, v6

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->isReaderContentVertical()Z

    move-result v9

    if-eqz v9, :cond_d

    new-array v1, v5, [I

    .line 180
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_narrow_checked_vertical:I

    aput v4, v1, v8

    .line 181
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_normal_checked_vertical:I

    aput v4, v1, v7

    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_wide_checked_vertical:I

    aput v4, v1, v6

    new-array v4, v5, [I

    .line 182
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_narrow_unchecked_vertical:I

    aput v9, v4, v8

    .line 183
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_normal_unchecked_vertical:I

    aput v9, v4, v7

    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_margins_wide_unchecked_vertical:I

    aput v9, v4, v6

    .line 186
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 187
    sget v10, Lcom/amazon/kindle/krl/R$string;->thin_margins:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget v10, Lcom/amazon/kindle/krl/R$string;->normal_margins:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget v10, Lcom/amazon/kindle/krl/R$string;->wide_margins:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v5, [I

    .line 190
    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_margin_option_narrow:I

    aput v10, v5, v8

    sget v8, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_margin_option_normal:I

    aput v8, v5, v7

    .line 191
    sget v7, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_margin_option_wide:I

    aput v7, v5, v6

    .line 193
    sget v6, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_margins_title:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 194
    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 195
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 196
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 197
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 198
    invoke-virtual {v3, v5}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 199
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 201
    :cond_e
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_10

    new-array v1, v5, [I

    .line 202
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_small_checked:I

    aput v4, v1, v8

    .line 203
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_medium_checked:I

    aput v4, v1, v7

    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_large_checked:I

    aput v4, v1, v6

    new-array v4, v5, [I

    .line 204
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_small_unchecked:I

    aput v9, v4, v8

    .line 205
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_medium_unchecked:I

    aput v9, v4, v7

    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_large_unchecked:I

    aput v9, v4, v6

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->isReaderContentVertical()Z

    move-result v9

    if-eqz v9, :cond_f

    new-array v1, v5, [I

    .line 207
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_small_checked_vertical:I

    aput v4, v1, v8

    .line 208
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_medium_checked_vertical:I

    aput v4, v1, v7

    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_large_checked_vertical:I

    aput v4, v1, v6

    new-array v4, v5, [I

    .line 209
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_small_unchecked_vertical:I

    aput v9, v4, v8

    .line 210
    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_medium_unchecked_vertical:I

    aput v9, v4, v7

    sget v9, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_line_spacing_large_unchecked_vertical:I

    aput v9, v4, v6

    .line 213
    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 214
    sget v10, Lcom/amazon/kindle/krl/R$string;->narrow_line_spacing:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget v10, Lcom/amazon/kindle/krl/R$string;->default_line_spacing:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget v10, Lcom/amazon/kindle/krl/R$string;->wide_line_spacing:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v5, [I

    .line 217
    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_spacing_option_narrow:I

    aput v10, v5, v8

    sget v8, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_spacing_option_normal:I

    aput v8, v5, v7

    .line 218
    sget v7, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_spacing_option_wide:I

    aput v7, v5, v6

    .line 219
    sget v6, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_spacing_title:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 220
    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 221
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 222
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 223
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 224
    invoke-virtual {v3, v5}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 225
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 227
    :cond_10
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_13

    const-string v1, "ar"

    .line 228
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 229
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    const-string v5, "Utils.getFactory()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v4

    const-string v5, "Utils.getFactory().readerController"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 230
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    :goto_5
    new-array v5, v6, [I

    .line 231
    sget v9, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_alignment_option_auto:I

    aput v9, v5, v8

    sget v9, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_alignment_option_left:I

    aput v9, v5, v7

    new-array v9, v6, [I

    .line 233
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_justify_checked:I

    aput v10, v9, v8

    .line 234
    sget v10, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_left_checked:I

    aput v10, v9, v7

    new-array v10, v6, [I

    .line 235
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_justify_unchecked:I

    aput v11, v10, v8

    .line 236
    sget v11, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_left_unchecked:I

    aput v11, v10, v7

    if-eqz v4, :cond_12

    .line 239
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-array v9, v6, [I

    .line 240
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_justify_checked:I

    aput v1, v9, v8

    .line 241
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_right_checked:I

    aput v1, v9, v7

    new-array v10, v6, [I

    .line 242
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_justify_unchecked:I

    aput v1, v10, v8

    .line 243
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_alignment_right_unchecked:I

    aput v1, v10, v7

    new-array v5, v6, [I

    .line 244
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_alignment_option_auto:I

    aput v1, v5, v8

    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_alignment_option_right:I

    aput v1, v5, v7

    .line 247
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    sget v4, Lcom/amazon/kindle/krl/R$string;->auto_alignment:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget v4, Lcom/amazon/kindle/krl/R$string;->left_alignment:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget v4, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_alignment_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 251
    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 252
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 253
    invoke-virtual {v3, v10}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 254
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 255
    invoke-virtual {v3, v5}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 256
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 258
    :cond_13
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_14

    new-array v1, v6, [I

    .line 259
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_multi_column_single_checked:I

    aput v4, v1, v8

    .line 260
    sget v4, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_multi_column_double_checked:I

    aput v4, v1, v7

    new-array v4, v6, [I

    .line 261
    sget v5, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_multi_column_single_unchecked:I

    aput v5, v4, v8

    .line 262
    sget v5, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_multi_column_double_unchecked:I

    aput v5, v4, v7

    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    sget v9, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_multi_column_button_single_description:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget v9, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_multi_column_button_double_description:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v6, [I

    .line 266
    sget v9, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_multicolumn_option_single:I

    aput v9, v6, v8

    sget v8, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_multicolumn_option_double:I

    aput v8, v6, v7

    .line 269
    sget v7, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_multi_column_title:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 270
    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 271
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 272
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 273
    invoke-virtual {v3, v5}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 274
    invoke-virtual {v3, v6}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 275
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 277
    :cond_14
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_15

    .line 278
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_orientation_lock_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 279
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_orientation_lock_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 280
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_orientation_lock_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 281
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 283
    :cond_15
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_16

    .line 284
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_page_turn_animation_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 285
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_page_turn_animation_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 286
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_page_turn_animation_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 287
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 289
    :cond_16
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_18

    .line 290
    invoke-direct {v0, v3}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getReadingProgressSetting(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-result-object v15

    if-eqz v15, :cond_17

    goto :goto_6

    :cond_17
    move-object v15, v3

    :goto_6
    return-object v15

    .line 292
    :cond_18
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_19

    .line 293
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_visible_clock_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 294
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_visible_clock_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 295
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_reading_clock_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 296
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 298
    :cond_19
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1a

    .line 299
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_highlight_menu_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 300
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_highlight_menu_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 301
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_highlight_menu_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 302
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 304
    :cond_1a
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1b

    .line 305
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_turn_pages_with_volume_controls_title:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 306
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_turn_pages_with_volume_controls_subtitle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 307
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_turn_page_with_volume_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 308
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 310
    :cond_1b
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1d

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getFontSizeIndex()I

    move-result v1

    .line 312
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 313
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 314
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 315
    iget-object v9, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    if-eqz v9, :cond_1c

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget v10, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2TextTitleColor:I

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 317
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 318
    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_decrease_font_size:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 319
    sget v10, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_font_size_item_small:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v10, "A"

    .line 320
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget v11, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x15

    .line 322
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 323
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v4, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 326
    sget v11, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_increase_font_size:I

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setId(I)V

    .line 327
    sget v11, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_font_size_item_large:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget v6, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x13

    .line 330
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_font_size_title:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 333
    invoke-virtual {v3, v9}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 334
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 336
    iget v1, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->MAX_FONT_SIZE_INDEX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 337
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 338
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 339
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_font_slider_seekbar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 340
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->SLIDER:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 315
    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_1d
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1e

    .line 343
    sget v1, Lcom/amazon/kindle/krl/R$string;->fit_to_width_toggle:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 344
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_comic_scrolling_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 345
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 347
    :cond_1e
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1f

    .line 348
    sget v1, Lcom/amazon/kindle/krl/R$string;->kindle_illustrated:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 349
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_show_media_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 350
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 352
    :cond_1f
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_20

    .line 353
    sget v1, Lcom/amazon/kindle/krl/R$string;->ki_auto_play_media_option_text:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 354
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_autoplay_media_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 355
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 357
    :cond_20
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_21

    .line 358
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    iget-object v6, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    .line 359
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getToggleHandlerForIdentifier(I)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 360
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getToggleInitialValueForIdentifier(I)Z

    move-result v8

    .line 361
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION_SLIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getSliderHandlerForIdentifier(I)Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 362
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION_SLIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getIntSettingInitialValue(I)I

    move-result v10

    move-object v5, v1

    .line 358
    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 363
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 365
    :cond_21
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_22

    .line 366
    invoke-direct {v0, v3}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getReadingPresetsDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto/16 :goto_7

    .line 368
    :cond_22
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_23

    .line 369
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_open_in_guided_view:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 370
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_open_in_guided_view_description:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 371
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_open_in_guidedview_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 372
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_7

    .line 374
    :cond_23
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_24

    .line 375
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_show_page_on_enter:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 376
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_show_page_on_enter_description:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 377
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_show_page_on_enter_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 378
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_7

    .line 380
    :cond_24
    sget-object v4, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_25

    .line 381
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_show_page_on_exit:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 382
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_show_page_on_exit_description:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 383
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_show_page_on_exit_toggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 384
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_7

    .line 386
    :cond_25
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 387
    invoke-direct {v0, v3}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLetterboxingBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)V

    :cond_26
    :goto_7
    return-object v3
.end method

.method public final shouldDisableTextAlignment()Z
    .locals 6

    .line 1186
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "context.resources.displayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1188
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v3

    .line 1189
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v4

    .line 1190
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1192
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v1

    .line 1193
    invoke-virtual {v4, v5, v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result v4

    div-int/2addr v4, v1

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 1194
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x417c2709

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1196
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldDisableTextAlignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastAlignmentDisabledValue(Z)V

    return v2

    .line 1200
    :cond_2
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getLastAlignmentDisabledValue()Z

    move-result v0

    return v0
.end method

.method public final shouldShowMultiColumn()Z
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    const-string v1, "docViewer.document"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v0

    .line 407
    sget-object v2, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->USER_SPECIFIED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    if-ne v0, v2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->isLavaMagazine()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
