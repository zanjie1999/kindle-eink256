.class public final Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;
.super Ljava/lang/Object;
.source "ReadingRulerAaSettingProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingRulerAaSettingProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingRulerAaSettingProvider.kt\ncom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,226:1\n1819#2,2:227\n*E\n*S KotlinDebug\n*F\n+ 1 ReadingRulerAaSettingProvider.kt\ncom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider\n*L\n215#1,2:227\n*E\n"
.end annotation


# instance fields
.field private final readingRulerColorPriority:I

.field private final readingRulerDisclosurePriority:I

.field private final readingRulerOpacityPriority:I

.field private final readingRulerSizePriority:I

.field private final readingRulerStylePriority:I

.field private final readingRulerSwitchPriority:I

.field private switchModel:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 21
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerDisclosurePriority:I

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerSwitchPriority:I

    const/16 v0, 0xc8

    .line 23
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerColorPriority:I

    const/16 v0, 0x12c

    .line 24
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerOpacityPriority:I

    const/16 v0, 0x190

    .line 25
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerStylePriority:I

    const/16 v0, 0x1f4

    .line 26
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerSizePriority:I

    return-void
.end method

.method private final createDisclosureContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createReadingRulerSwitchAaSetting(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_COLOR_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    iget p3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerSwitchPriority:I

    add-int/lit8 p3, p3, 0x32

    sget-object p4, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDividerAaSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/ksdk/presets/AaSettingType;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createRulerColorAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_OPACITY_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    iget p3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerColorPriority:I

    add-int/lit8 p3, p3, 0x32

    sget-object p4, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_OPACITY:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDividerAaSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/ksdk/presets/AaSettingType;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createRulerOpacityAaSetting()Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_STYLE_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    iget p3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerOpacityPriority:I

    add-int/lit8 p3, p3, 0x32

    sget-object p4, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_STYLE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDividerAaSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/ksdk/presets/AaSettingType;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createRulerStyleAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_SIZE_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    iget p3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerStylePriority:I

    add-int/lit8 p3, p3, 0x32

    sget-object p4, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_NUMBER_OF_LINES:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDividerAaSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/ksdk/presets/AaSettingType;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createRulerSizeAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final createDividerAaSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/ksdk/presets/AaSettingType;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 9

    .line 177
    new-instance v8, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;

    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final createReadingRulerSwitchAaSetting(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 8

    .line 86
    new-instance v6, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->getReadingRulerSwitchHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 87
    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->getStateInBoolean()Z

    move-result v4

    sget p3, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_toggle:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    .line 89
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_READING_RULER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerSwitchPriority:I

    .line 90
    sget-object p2, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const/4 v5, 0x0

    const/16 p2, 0x10

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, v6

    move v6, p2

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method private final createRulerColorAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 94
    sget v2, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "context.getString(R.stri\u2026amenu_readingruler_color)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v7, v2, [I

    .line 95
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_gray_checked:I

    const/4 v5, 0x0

    aput v3, v7, v5

    .line 96
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_blue_checked:I

    const/4 v6, 0x1

    aput v3, v7, v6

    .line 97
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_red_checked:I

    const/4 v8, 0x2

    aput v3, v7, v8

    .line 98
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_yellow_checked:I

    const/4 v9, 0x3

    aput v3, v7, v9

    .line 99
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_orange_checked:I

    const/4 v10, 0x4

    aput v3, v7, v10

    .line 100
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_purple_checked:I

    const/4 v11, 0x5

    aput v3, v7, v11

    .line 101
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_green_checked:I

    const/4 v12, 0x6

    aput v3, v7, v12

    new-array v13, v2, [I

    .line 102
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_gray_unchecked:I

    aput v3, v13, v5

    .line 103
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_blue_unchecked:I

    aput v3, v13, v6

    .line 104
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_red_unchecked:I

    aput v3, v13, v8

    .line 105
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_yellow_unchecked:I

    aput v3, v13, v9

    .line 106
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_orange_unchecked:I

    aput v3, v13, v10

    .line 107
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_purple_unchecked:I

    aput v3, v13, v11

    .line 108
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_color_green_unchecked:I

    aput v3, v13, v12

    .line 109
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_gray:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_blue:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_red:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_yellow:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_orange:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_purple:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_color_green:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [I

    .line 117
    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_gray:I

    aput v2, v1, v5

    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_blue:I

    aput v2, v1, v6

    .line 118
    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_red:I

    aput v2, v1, v8

    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_yellow:I

    aput v2, v1, v9

    .line 119
    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_orange:I

    aput v2, v1, v10

    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_purple:I

    aput v2, v1, v11

    .line 120
    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_color_green:I

    aput v2, v1, v12

    .line 121
    new-instance v2, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;

    invoke-direct {v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;-><init>()V

    .line 123
    new-instance v18, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    sget v6, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_circle_button:I

    .line 124
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;->getRulerColorChangeHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerColorModel;->getCurrentColorIndex()I

    move-result v11

    const-string v5, ""

    move-object/from16 v3, v18

    move-object v8, v13

    move-object v9, v14

    move-object v12, v1

    .line 123
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 125
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v16

    iget v2, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerColorPriority:I

    sget-object v3, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {v0, v3}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    move-object v15, v1

    move/from16 v17, v2

    invoke-direct/range {v15 .. v22}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final createRulerOpacityAaSetting()Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 10

    .line 129
    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin;->Companion:Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingruler/ReadingRulerPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 131
    new-instance v5, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacitySlider;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;-><init>(Landroid/view/View;)V

    .line 132
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_OPACITY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerOpacityPriority:I

    .line 133
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_OPACITY:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v0

    .line 132
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private final createRulerSizeAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    sget v2, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_number_of_lines:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "context.getString(R.stri\u2026ingruler_number_of_lines)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v7, v2, [I

    .line 157
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_small_checked:I

    const/4 v5, 0x0

    aput v3, v7, v5

    .line 158
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_medium_checked:I

    const/4 v6, 0x1

    aput v3, v7, v6

    .line 159
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_large_checked:I

    const/4 v8, 0x2

    aput v3, v7, v8

    new-array v9, v2, [I

    .line 160
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_small_unchecked:I

    aput v3, v9, v5

    .line 161
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_medium_unchecked:I

    aput v3, v9, v6

    .line 162
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_size_large_unchecked:I

    aput v3, v9, v8

    .line 163
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 164
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_number_of_lines_small:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_number_of_lines_medium:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_number_of_lines_large:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v12, v2, [I

    .line 167
    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_size_small:I

    aput v1, v12, v5

    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_size_medium:I

    aput v1, v12, v6

    .line 168
    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_size_large:I

    aput v1, v12, v8

    .line 169
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel;-><init>()V

    .line 171
    new-instance v16, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    sget v6, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    .line 172
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel;->getRulerSizeChangeHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSizeModel;->getCurrentSizeIndex()I

    move-result v11

    const-string v5, ""

    move-object/from16 v3, v16

    move-object v8, v9

    move-object v9, v10

    move-object v10, v2

    .line 171
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 173
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v14

    iget v15, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerSizePriority:I

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_NUMBER_OF_LINES:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final createRulerStyleAaSetting(Landroid/content/Context;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 139
    sget v2, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_style:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "context.getString(R.stri\u2026amenu_readingruler_style)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 140
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_style_banded_checked:I

    const/4 v5, 0x0

    aput v3, v7, v5

    .line 141
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_style_solid_checked:I

    const/4 v6, 0x1

    aput v3, v7, v6

    new-array v8, v2, [I

    .line 142
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_style_banded_unchecked:I

    aput v3, v8, v5

    .line 143
    sget v3, Lcom/amazon/kindle/readingruler/R$drawable;->reading_ruler_style_solid_unchecked:I

    aput v3, v8, v6

    .line 144
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_style_banded:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_accessibility_label_readingruler_style_solid:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v12, v2, [I

    .line 147
    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_style_option_banded:I

    aput v1, v12, v5

    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_style_option_solid:I

    aput v1, v12, v6

    .line 148
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReadingRulerStyleModel;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerStyleModel;-><init>()V

    .line 150
    new-instance v16, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    sget v6, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_rect_button:I

    .line 151
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerStyleModel;->getRulerStyleChangeHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerStyleModel;->getCurrentStyleIndex()I

    move-result v11

    const-string v5, ""

    move-object/from16 v3, v16

    .line 150
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 152
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER_STYLE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v14

    iget v15, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerStylePriority:I

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_STYLE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;-><init>(Lcom/amazon/ksdk/presets/AaSettingType;)V

    return-object v0
.end method

.method private final getStateDescriptionHandler(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getStateDescriptionHandler$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getStateDescriptionHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)V

    return-object v0
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V

    return-void
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->switchModel:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    .line 33
    sget v0, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_reading_ruler:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026kre_aamenu_reading_ruler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v1, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_desc:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026aamenu_readingruler_desc)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2, v0, v3, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDisclosureContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Ljava/util/List;

    move-result-object v6

    .line 37
    new-instance v10, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getStateDescriptionHandler(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const/4 v5, 0x0

    .line 38
    sget p1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_disclosure:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, v10

    move-object v2, v0

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;)V

    .line 39
    new-instance v12, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    sget p1, Lcom/amazon/kindle/readingruler/R$string;->aa_menu_v2_not_available_subtitle_generic:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026ailable_subtitle_generic)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v0, p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v8

    iget v9, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->readingRulerDisclosurePriority:I

    .line 41
    sget-object p2, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;

    move-result-object v11

    move-object v7, p1

    .line 40
    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;)V

    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->switchModel:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    if-eqz v2, :cond_1

    .line 210
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_reading_ruler:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "context.getString(R.stri\u2026kre_aamenu_reading_ruler)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    sget v3, Lcom/amazon/kindle/readingruler/R$string;->kre_aamenu_readingruler_desc:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.stri\u2026aamenu_readingruler_desc)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {v0, v1, v5, v6, v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->createDisclosureContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Ljava/util/List;

    move-result-object v9

    .line 227
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 216
    invoke-static {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v13, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getStateDescriptionHandler(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v7

    const/4 v8, 0x0

    .line 221
    sget v1, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_disclosure:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, v13

    .line 220
    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;)V

    .line 222
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_RULER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v11

    const/4 v12, 0x0

    .line 223
    sget-object v14, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$loadSettingsFromAaTheme$1$2;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$loadSettingsFromAaTheme$1$2;

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v10, v1

    .line 222
    invoke-direct/range {v10 .. v17}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    :cond_1
    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V

    return-void
.end method
