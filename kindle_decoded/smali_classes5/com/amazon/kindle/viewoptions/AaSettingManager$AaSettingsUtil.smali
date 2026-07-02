.class public final Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;
.super Ljava/lang/Object;
.source "AaSettingManager.kt"

# interfaces
.implements Lcom/amazon/kcp/debug/IAaSettingsUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/AaSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AaSettingsUtil"
.end annotation


# instance fields
.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 99
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 95
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    return-void
.end method

.method private final getBookContentType(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/ksdk/presets/BookContentType;
    .locals 3

    .line 543
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->REFLOWABLE:Lcom/amazon/ksdk/presets/BookContentType;

    .line 547
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->isBookVertical(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->VERTICAL:Lcom/amazon/ksdk/presets/BookContentType;

    .line 551
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->TEXTBOOK:Lcom/amazon/ksdk/presets/BookContentType;

    goto :goto_0

    .line 553
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isGenericFixedFormat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    :cond_2
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->FIXED:Lcom/amazon/ksdk/presets/BookContentType;

    .line 562
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 563
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_4

    .line 564
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->NEWSPAPER:Lcom/amazon/ksdk/presets/BookContentType;

    goto :goto_2

    .line 565
    :cond_4
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 567
    :cond_5
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_7

    .line 568
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->MAGAZINE:Lcom/amazon/ksdk/presets/BookContentType;

    goto :goto_2

    .line 566
    :cond_6
    :goto_1
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->PERSONAL_DOCUMENT:Lcom/amazon/ksdk/presets/BookContentType;

    .line 571
    :cond_7
    :goto_2
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    .line 572
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_8

    .line 573
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->MANGA:Lcom/amazon/ksdk/presets/BookContentType;

    goto :goto_3

    .line 574
    :cond_8
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_9

    .line 575
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->CHILDRENS:Lcom/amazon/ksdk/presets/BookContentType;

    goto :goto_3

    .line 576
    :cond_9
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_a

    .line 577
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->COMIC:Lcom/amazon/ksdk/presets/BookContentType;

    .line 580
    :cond_a
    :goto_3
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 581
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->ANIMATED:Lcom/amazon/ksdk/presets/BookContentType;

    .line 584
    :cond_b
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 585
    sget-object v0, Lcom/amazon/ksdk/presets/BookContentType;->DICTIONARY:Lcom/amazon/ksdk/presets/BookContentType;

    :cond_c
    return-object v0
.end method

.method private final getBookFlags(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ksdk/presets/BookFlag;",
            ">;"
        }
    .end annotation

    .line 592
    const-class v0, Lcom/amazon/ksdk/presets/BookFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 594
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PUBLISHER_FONT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->IS_SAMPLE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    const-string v2, "bookItem.primaryWritingMode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 603
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->TOP_TO_BOTTOM_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_2
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 607
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_NUMBERS:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isPageOrientationLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v1

    if-nez v1, :cond_4

    .line 612
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_4
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isImageViewEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-eq v1, v2, :cond_5

    invoke-direct {p0, p2}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->isChaptersSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_CHAPTERS:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 622
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_6
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 626
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_7
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isImageViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 630
    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_8
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne p2, v1, :cond_9

    .line 634
    sget-object p2, Lcom/amazon/ksdk/presets/BookFlag;->PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_9
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->isDefaultDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 638
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->IS_DEFAULT_DICT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_a
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 642
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_DISABLE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_b
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "factory.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "factory.context.resources"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v2, "factory.context.resources.configuration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/android/theme/ThemeUtils;->isInSystemLightMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 646
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amazon/android/theme/ThemeUtils;->isInSystemDarkMode(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 649
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "System is simultaneously in light and dark mode. This should not be possible."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    if-eqz p1, :cond_d

    .line 651
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_d
    if-eqz p2, :cond_e

    .line 654
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    :cond_e
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 658
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "bookFlags"

    .line 661
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final initReadingPresetsManager()V
    .locals 9
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KECK_READING_PRESET_MANAGER_INITIALIZATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstan\u2026ET_MANAGER_INITIALIZATION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 287
    invoke-static {}, Lcom/amazon/kindle/bundler/KindleAndroidNativeBundler;->loadLibrariesFromSystem()V

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "factory.context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "factory.context.filesDir"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v4, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v4}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filesDirectoryPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    invoke-static {v0}, Lcom/amazon/ksdk/presets/ContextManager;->setApplicationDirectory(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v3, "resources"

    .line 295
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 298
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_FOS:Lcom/amazon/ksdk/presets/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/ksdk/presets/DeviceType;->ANDROID_3P:Lcom/amazon/ksdk/presets/DeviceType;

    .line 299
    :goto_0
    invoke-static {v3}, Lcom/amazon/ksdk/presets/ContextManager;->createInstanceForDevice(Lcom/amazon/ksdk/presets/DeviceType;)Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v5

    .line 300
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 301
    new-instance v7, Lcom/amazon/ksdk/presets/DeviceContext;

    invoke-direct {v7, v3, v4, v6}, Lcom/amazon/ksdk/presets/DeviceContext;-><init>(Lcom/amazon/ksdk/presets/DeviceType;IF)V

    .line 302
    invoke-virtual {v5, v7}, Lcom/amazon/ksdk/presets/ContextManager;->setDeviceContext(Lcom/amazon/ksdk/presets/DeviceContext;)Z

    move-object v3, v5

    .line 304
    :cond_1
    invoke-virtual {v3, v2}, Lcom/amazon/ksdk/presets/ContextManager;->setPresetThemesEnabled(Z)V

    .line 306
    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ContextManager;->validBookContext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 307
    new-instance v2, Lcom/amazon/ksdk/presets/BookContext;

    sget-object v5, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    sget-object v6, Lcom/amazon/ksdk/presets/BookContentType;->REFLOWABLE:Lcom/amazon/ksdk/presets/BookContentType;

    .line 308
    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/amazon/ksdk/presets/BookFlag;

    invoke-static {v8}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    .line 307
    invoke-direct {v2, v5, v6, v7, v8}, Lcom/amazon/ksdk/presets/BookContext;-><init>(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 309
    invoke-virtual {v3, v2}, Lcom/amazon/ksdk/presets/ContextManager;->setBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z

    .line 312
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ContextManager;->validViewContext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 313
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 314
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 315
    sget-object v5, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 316
    new-instance v6, Lcom/amazon/ksdk/presets/ViewContext;

    invoke-direct {v6, v2, v0, v5}, Lcom/amazon/ksdk/presets/ViewContext;-><init>(IILcom/amazon/ksdk/presets/PageOrientationModeType;)V

    .line 317
    invoke-virtual {v3, v6}, Lcom/amazon/ksdk/presets/ContextManager;->setViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z

    .line 320
    :cond_3
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 321
    invoke-static {v3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->createInstance(Lcom/amazon/ksdk/presets/ContextManager;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    .line 324
    :cond_4
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KECK_READING_PRESET_MANAGER_INITIALIZATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private final isBookVertical(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 5

    .line 270
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_1

    .line 273
    sget-object p1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v1, "Locale.JAPANESE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Locale.JAPANESE.language"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v4, "Locale.CHINESE"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Locale.CHINESE.language"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private final isChaptersSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 2

    .line 677
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    const-string v0, "docViewer.document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    .line 678
    instance-of v0, p1, Lcom/amazon/android/docviewer/IBookTOC;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    check-cast p1, Lcom/amazon/android/docviewer/IBookTOC;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final isDefaultDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v1, "factory.libraryService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const-string v2, "bookItem.bookID"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final migrateDataToDB()V
    .locals 11

    .line 328
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    .line 330
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_DATA_MIGRATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstan\u2026_MENU_KSDK_DATA_MIGRATION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 332
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areAaMenuDataMigrated()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 335
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_DATA_MIGRATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    .line 340
    :cond_0
    sget-object v3, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v3}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    .line 341
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v3

    .line 342
    invoke-static {}, Lcom/amazon/ksdk/presets/AaSettingType;->values()[Lcom/amazon/ksdk/presets/AaSettingType;

    move-result-object v5

    .line 343
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 344
    sget-object v9, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const-string/jumbo v10, "userSettingsController"

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_5

    .line 438
    :pswitch_0
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v9

    sget-object v10, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 439
    :goto_1
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 434
    :pswitch_1
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewAnimationEnabled()Z

    move-result v9

    .line 435
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 430
    :pswitch_2
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v9

    .line 431
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 426
    :pswitch_3
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v9

    .line 427
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 422
    :pswitch_4
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumePagesControlsIgnoreTTS()Z

    move-result v9

    .line 423
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 417
    :pswitch_5
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFooterContentType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "userSettingsController.footerContentType"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v8

    .line 418
    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerFooterContentTypeToKSDKReadingProgressModeType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v8

    .line 419
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingProgressCurDisplayedMode(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z

    goto/16 :goto_5

    .line 414
    :pswitch_6
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->migrateFontFamily()V

    goto/16 :goto_5

    .line 410
    :pswitch_7
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v9

    .line 411
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 406
    :pswitch_8
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v9

    .line 407
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 402
    :pswitch_9
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v9

    .line 403
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 397
    :pswitch_a
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v8

    .line 398
    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerOrientationToKSDKPageOrientationModeType(I)Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object v8

    .line 399
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setOrientationMode(Lcom/amazon/ksdk/presets/PageOrientationModeType;)Z

    goto/16 :goto_5

    .line 393
    :pswitch_b
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 394
    :goto_2
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 389
    :pswitch_c
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v9

    .line 390
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto/16 :goto_5

    .line 384
    :pswitch_d
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 385
    sget-object v8, Lcom/amazon/ksdk/presets/JustificationModeType;->NOT_JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    goto :goto_3

    :cond_3
    sget-object v8, Lcom/amazon/ksdk/presets/JustificationModeType;->JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    .line 386
    :goto_3
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setJustificationMode(Lcom/amazon/ksdk/presets/JustificationModeType;)Z

    goto/16 :goto_5

    .line 379
    :pswitch_e
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v8

    const-string v9, "margin"

    .line 380
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerMarginToKSDKPageMarginModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object v8

    .line 381
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setPageMarginMode(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z

    goto/16 :goto_5

    .line 374
    :pswitch_f
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v8

    const-string v9, "colorModeId"

    .line 375
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerColorModeToKSDKPageColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/ksdk/presets/PageColorModeType;

    move-result-object v8

    .line 376
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setPageColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Z

    goto :goto_5

    .line 368
    :pswitch_10
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v8

    .line 371
    invoke-static {v8}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v8

    const-string v9, "KindleDocLineSettings.Li\u2026tionValue(lineSpaceIndex)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerLineSpacingOptionToKSDKLineSpacingModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)Lcom/amazon/ksdk/presets/LineSpacingModeType;

    move-result-object v8

    .line 369
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLineSpacingMode(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Z

    goto :goto_5

    .line 363
    :pswitch_11
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v8

    .line 365
    invoke-static {v8}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerColumnCountToKSDKColumnCountModeType(I)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object v8

    .line 364
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setColumnCountModeBooks(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z

    goto :goto_5

    .line 356
    :pswitch_12
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v8

    .line 357
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setFontSizeIndex(I)Z

    .line 360
    sget-object v9, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v3, v8, v9, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    goto :goto_5

    .line 352
    :pswitch_13
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v9

    sget-object v10, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 353
    :goto_4
    invoke-virtual {v3, v9, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_5

    .line 346
    :pswitch_14
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v8

    const/16 v9, 0x64

    int-to-float v9, v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 347
    invoke-virtual {v3, v8}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBrightness(I)Z

    .line 349
    sget-object v9, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS_METRIC_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v3, v8, v9, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 446
    :cond_5
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setAaMenuDataMigrated(Z)V

    .line 448
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_DATA_MIGRATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 450
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final migrateDownloadableFonts()V
    .locals 7

    .line 482
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
    if-eqz v0, :cond_3

    .line 484
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->allDownloadableFonts()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/FontInfo;

    const-string v2, "fontInfo"

    .line 487
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    const-string v3, "FontFamily.fromTypeFaceName(fontInfo.fontFamily)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 490
    invoke-virtual {v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    .line 495
    :cond_2
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final migrateFontFamily()V
    .locals 10

    .line 454
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 456
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 459
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 460
    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v4

    const-string v5, "it.bookContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/BookContext;->getBookFlags()Ljava/util/EnumSet;

    move-result-object v4

    .line 461
    sget-object v5, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PUBLISHER_FONT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v5, Lcom/amazon/ksdk/presets/BookContext;

    sget-object v6, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    sget-object v7, Lcom/amazon/ksdk/presets/BookContentType;->REFLOWABLE:Lcom/amazon/ksdk/presets/BookContentType;

    invoke-direct {v5, v6, v7, v3, v4}, Lcom/amazon/ksdk/presets/BookContext;-><init>(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 463
    invoke-virtual {v2, v5}, Lcom/amazon/ksdk/presets/ContextManager;->setBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z

    .line 466
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->migrateDownloadableFonts()V

    .line 467
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->fontOptions()Ljava/util/ArrayList;

    move-result-object v4

    .line 468
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v5

    .line 469
    sget-object v6, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v6}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curSelectedFontFamily for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " language is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "curSelectedFontFamily"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/ksdk/presets/FontInfo;

    const-string v7, "fontOption"

    .line 472
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 473
    sget-object v7, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v7}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Migrate font family: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " of language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amazon/ksdk/presets/ReadingPreset;->setFontId(J)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final setBookContextInternal(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/BookFormatType;",
            "Lcom/amazon/ksdk/presets/BookContentType;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ksdk/presets/BookFlag;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 667
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 669
    :goto_2
    invoke-static {p3}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne v0, v1, :cond_3

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 670
    :cond_3
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBookContextInternal with bookFormatType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "bookContentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/amazon/ksdk/presets/BookContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/ksdk/presets/BookContext;-><init>(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 673
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/amazon/ksdk/presets/ContextManager;->setBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z

    :cond_4
    return-void
.end method

.method private final setNonYJBookContext(Lcom/amazon/kindle/content/KindleContentFormat;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 3

    .line 521
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->MOBI7:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 523
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v1

    .line 524
    sget-object v2, Lcom/amazon/kindle/content/KindleContentFormat;->MOBI:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    const-string/jumbo v2, "pdf"

    .line 525
    invoke-static {v1, v2, p1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->PDF:Lcom/amazon/ksdk/presets/BookFormatType;

    goto :goto_0

    :cond_0
    const-string v2, "mobi8"

    .line 527
    invoke-static {v1, v2, p1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 528
    sget-object p1, Lcom/amazon/ksdk/presets/BookFormatType;->KF8:Lcom/amazon/ksdk/presets/BookFormatType;

    move-object v0, p1

    goto :goto_0

    .line 530
    :cond_1
    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->MOP:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne p1, v1, :cond_2

    .line 531
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->MOP:Lcom/amazon/ksdk/presets/BookFormatType;

    goto :goto_0

    .line 532
    :cond_2
    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->TOPAZ:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne p1, v1, :cond_3

    .line 533
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->TOPAZ:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 536
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->getBookContentType(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object p1

    .line 537
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->getBookFlags(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/EnumSet;

    move-result-object p3

    .line 539
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setBookContextInternal(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    return-void
.end method

.method private final setYJBookContext(Lcom/amazon/kindle/content/KindleContentFormat;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 509
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 510
    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne p1, v1, :cond_0

    .line 511
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->YJOP:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 514
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->getBookContentType(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object p1

    .line 515
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->getBookFlags(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/EnumSet;

    move-result-object p3

    .line 517
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setBookContextInternal(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    return-void
.end method

.method private final validateInitialization(Z)V
    .locals 1

    .line 503
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getInitialized$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->initialize(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addThemesPerfActivityRestartFlag()V
    .locals 3

    .line 255
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getThemesPerfString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ACTIVITY_RESTART"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setThemesPerfString(Ljava/lang/String;)V

    return-void
.end method

.method public clearUserData()V
    .locals 2

    .line 192
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->removeUserData()V

    .line 194
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getInitialized$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setAaMenuDataMigrated(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized initialize(Z)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getInitialized$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->initReadingPresetsManager()V

    .line 106
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->migrateDataToDB()V

    .line 107
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getInitialized$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    const-string v0, "factory.readerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setBookContext(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onBookClosed(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 261
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getBookOpenCount$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 263
    invoke-static {v0, p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->deregisterKSDKReadingPresetsObserver$default(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILjava/lang/Object;)V

    .line 264
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->removeAllObservers()V

    :cond_0
    return-void
.end method

.method public onNewBookOpen()V
    .locals 2

    .line 171
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastTabSelected(I)V

    .line 172
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastSubfragmentIdentifier(I)V

    .line 173
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldState(I)V

    .line 174
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getBookOpenCount$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method

.method public onReadingModeChange(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFlags()Ljava/util/EnumSet;

    move-result-object v1

    .line 208
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 211
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_3
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 215
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFormatType()Lcom/amazon/ksdk/presets/BookFormatType;

    move-result-object p1

    const-string v2, "it.bookFormatType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object v2

    const-string v3, "it.bookContentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bookFlags"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setBookContextInternal(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    :cond_4
    return-void
.end method

.method public readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;
    .locals 2

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->validateInitialization(Z)V

    .line 125
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    const-string v1, "ReadingPresetsManager.instance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBookContext(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {v1, v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->deregisterKSDKReadingPresetsObserver$default(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->updateViewContext()V

    .line 138
    invoke-static {}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->clearFontFamilyInfoMap()V

    .line 140
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v3

    const-string v4, "KindleContentFormat.getFormat(bookItem)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

    const-string v5, "bookItem"

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJUNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJMAG:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setNonYJBookContext(Lcom/amazon/kindle/content/KindleContentFormat;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_1

    .line 147
    :cond_2
    :goto_0
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setYJBookContext(Lcom/amazon/kindle/content/KindleContentFormat;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 152
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object p1

    const-string v2, "factory.accessibilityStateListener"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result p1

    .line 153
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->setVoiceOverModeEnabled(Z)V

    .line 155
    invoke-static {}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->upgradeIfNecessary$KindleReaderLibrary_release()V

    .line 161
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->migrateDownloadableFonts()V

    .line 164
    invoke-static {v1, v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingObserverManager;->registerKSDKReadingPresetsObserver$default(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILjava/lang/Object;)V

    return-void
.end method

.method public updateSystemThemeFlags(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 228
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/AaSettingManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "System is simultaneously in light and dark mode. This should not be possible."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFlags()Ljava/util/EnumSet;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 238
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 242
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_3
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 247
    sget-object p1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 250
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFormatType()Lcom/amazon/ksdk/presets/BookFormatType;

    move-result-object p1

    const-string p2, "it.bookFormatType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object p2

    const-string v2, "it.bookContentType"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bookFlags"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->setBookContextInternal(Lcom/amazon/ksdk/presets/BookFormatType;Lcom/amazon/ksdk/presets/BookContentType;Ljava/lang/String;Ljava/util/EnumSet;)V

    :cond_4
    return-void
.end method

.method public updateViewContext()V
    .locals 5

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->validateInitialization(Z)V

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "factory.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v1

    .line 184
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 185
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 186
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ksdk/presets/ReadingPreset;->orientationMode()Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object v3

    .line 187
    new-instance v4, Lcom/amazon/ksdk/presets/ViewContext;

    invoke-direct {v4, v2, v0, v3}, Lcom/amazon/ksdk/presets/ViewContext;-><init>(IILcom/amazon/ksdk/presets/PageOrientationModeType;)V

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1, v4}, Lcom/amazon/ksdk/presets/ContextManager;->setViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z

    :cond_0
    return-void
.end method
