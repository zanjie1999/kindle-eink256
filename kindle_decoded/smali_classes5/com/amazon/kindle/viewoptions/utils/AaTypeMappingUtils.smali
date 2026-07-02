.class public final Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;
.super Ljava/lang/Object;
.source "AaTypeMappingUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ksdkAnimationSpeedToReaderAnimationSpeedIndex(F)I
    .locals 2

    const/4 v0, 0x4

    const v1, 0x3f866666    # 1.05f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3f733333    # 0.95f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x3f59999a    # 0.85f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const v1, 0x3f266666    # 0.65f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const v1, 0x3f0ccccd    # 0.55f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_5

    goto :goto_0

    :cond_5
    const v1, 0x3ee66666    # 0.45f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const v1, 0x3eb33333    # 0.35f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const v1, 0x3e19999a    # 0.15f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_a

    const/16 v0, 0x9

    :cond_a
    :goto_0
    return v0
.end method

.method public static final ksdkColumnCountModeTypeToReaderColumnCount(Lcom/amazon/ksdk/presets/ColumnCountModeType;)I
    .locals 3

    const-string v0, "countModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public static final ksdkLetterboxColorToReaderLetterboxColor(I)Lcom/amazon/android/docviewer/LetterboxingColor;
    .locals 1

    .line 226
    invoke-static {}, Lcom/amazon/ksdk/presets/LetterboxingType;->values()[Lcom/amazon/ksdk/presets/LetterboxingType;

    move-result-object v0

    aget-object p0, v0, p0

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$13:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 230
    sget-object p0, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    goto :goto_0

    .line 229
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    goto :goto_0

    .line 228
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    goto :goto_0

    .line 227
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    :goto_0
    return-object p0
.end method

.method public static final ksdkLineSpacingModeTypeToReaderLineSpacingOption(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
    .locals 1

    const-string v0, "lineSpacingModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 167
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 166
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    goto :goto_0

    .line 165
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NORMAL:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    goto :goto_0

    .line 164
    :cond_3
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    :goto_0
    return-object p0
.end method

.method public static final ksdkPageColorModeToReaderColorMode(I)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 75
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 74
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 73
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 72
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 71
    :cond_3
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 70
    :cond_4
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    :goto_0
    return-object p0
.end method

.method public static final ksdkPageColorModeToReaderColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    const-string/jumbo v0, "pageColorModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 57
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 56
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 55
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 54
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 53
    :cond_3
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 52
    :cond_4
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    :goto_0
    return-object p0
.end method

.method public static final ksdkPageOrientationModeTypeToReaderOrientationTo(Lcom/amazon/ksdk/presets/PageOrientationModeType;)I
    .locals 2

    const-string/jumbo v0, "pageOrientationModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final ksdkReadingProgressModeTypeToReaderFooterContentType(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    const-string/jumbo v0, "readingProgressModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 148
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 147
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 146
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->LOCATION:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 145
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->PAGE:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 144
    :cond_3
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    goto :goto_0

    .line 143
    :cond_4
    sget-object p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    :goto_0
    return-object p0
.end method

.method public static final ksdkRulerColorTypeToIndex(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)I
    .locals 1

    const-string/jumbo v0, "rulerColorType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$10:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final ksdkRulerSizeTypeToIndex(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)I
    .locals 2

    const-string/jumbo v0, "rulerSizeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final ksdkRulerStyleTypeToIndex(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)I
    .locals 2

    const-string/jumbo v0, "rulerStyleType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$11:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final ksdkSettingTypeToReaderSettingType(Lcom/amazon/ksdk/presets/AaSettingType;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "settingType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$15:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 310
    :pswitch_0
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_OPEN_IN_GUIDEDVIEW:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 309
    :pswitch_1
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 308
    :pswitch_2
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LETTERBOXING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 307
    :pswitch_3
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 306
    :pswitch_4
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 305
    :pswitch_5
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 304
    :pswitch_6
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 303
    :pswitch_7
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 302
    :pswitch_8
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_STYLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 301
    :pswitch_9
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER_OPACITY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 300
    :pswitch_a
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READING_RULER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 299
    :pswitch_b
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->QH_SELECTION_BUTTONS_DISPLAY_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 298
    :pswitch_c
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->VOLUME_KEYS_PAGE_CONTROLS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 297
    :pswitch_d
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 296
    :pswitch_e
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TIME_DISPLAY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 295
    :pswitch_f
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_ANIMATE_TRANSITIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 294
    :pswitch_10
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED_AUTO_PLAY_ANIMATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 293
    :pswitch_11
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_SECTION_LAYOUT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    :pswitch_12
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 291
    :pswitch_13
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_DISABLE_JUSTIFICATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 290
    :pswitch_14
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 289
    :pswitch_15
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 288
    :pswitch_16
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 287
    :pswitch_17
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 286
    :pswitch_18
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 285
    :pswitch_19
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    :pswitch_1a
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION_ACTIVITY_INFO:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 283
    :pswitch_1b
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 282
    :pswitch_1c
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 281
    :pswitch_1d
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

.method public static final pageMarginModeTypeToReaderMargin(Lcom/amazon/ksdk/presets/PageMarginModeType;)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    const-string/jumbo v0, "pageMarginModeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 94
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 93
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    goto :goto_0

    .line 92
    :cond_2
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    goto :goto_0

    .line 91
    :cond_3
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    :goto_0
    return-object p0
.end method

.method public static final readerAnimationSpeedIndexToKSDKAnimationSpeed(I)F
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :pswitch_1
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :pswitch_2
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :pswitch_3
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_5
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    :pswitch_6
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :pswitch_7
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    :pswitch_9
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final readerColorModeToKSDKPageColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/ksdk/presets/PageColorModeType;
    .locals 1

    const-string v0, "colorModeId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 45
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/amazon/ksdk/presets/PageColorModeType;->NORMAL:Lcom/amazon/ksdk/presets/PageColorModeType;

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object p0, Lcom/amazon/ksdk/presets/PageColorModeType;->SEPIA:Lcom/amazon/ksdk/presets/PageColorModeType;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object p0, Lcom/amazon/ksdk/presets/PageColorModeType;->GREEN:Lcom/amazon/ksdk/presets/PageColorModeType;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object p0, Lcom/amazon/ksdk/presets/PageColorModeType;->BLACK:Lcom/amazon/ksdk/presets/PageColorModeType;

    goto :goto_0

    .line 31
    :pswitch_4
    sget-object p0, Lcom/amazon/ksdk/presets/PageColorModeType;->NIGHT:Lcom/amazon/ksdk/presets/PageColorModeType;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final readerColumnCountToKSDKColumnCountModeType(I)Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 177
    sget-object p0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->INVALID:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    goto :goto_0

    .line 176
    :cond_0
    sget-object p0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->TRIPLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    goto :goto_0

    .line 175
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->DOUBLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    goto :goto_0

    .line 174
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->SINGLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    :goto_0
    return-object p0
.end method

.method public static final readerFooterContentTypeToKSDKReadingProgressModeType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
    .locals 1

    const-string v0, "footerContentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 136
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->TIME_LEFT_IN_CHAPTER:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    goto :goto_0

    .line 135
    :cond_0
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->NONE:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    goto :goto_0

    .line 134
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->LOCATION:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    goto :goto_0

    .line 133
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->PAGE_NUMBER:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    goto :goto_0

    .line 132
    :cond_3
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->TIME_LEFT:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    goto :goto_0

    .line 131
    :cond_4
    sget-object p0, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->TIME_LEFT_IN_CHAPTER:Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    :goto_0
    return-object p0
.end method

.method public static final readerLetterboxColorToKSDKLetterboxColor(Lcom/amazon/android/docviewer/LetterboxingColor;)I
    .locals 1

    const-string v0, "letterboxColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$14:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 239
    sget-object p0, Lcom/amazon/ksdk/presets/LetterboxingType;->NONE:Lcom/amazon/ksdk/presets/LetterboxingType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 238
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/LetterboxingType;->DEFAULT:Lcom/amazon/ksdk/presets/LetterboxingType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto :goto_0

    .line 237
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/LetterboxingType;->BLACK:Lcom/amazon/ksdk/presets/LetterboxingType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final readerLineSpacingOptionToKSDKLineSpacingModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)Lcom/amazon/ksdk/presets/LineSpacingModeType;
    .locals 1

    const-string v0, "lineSpaceOption"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 157
    sget-object p0, Lcom/amazon/ksdk/presets/LineSpacingModeType;->WIDE:Lcom/amazon/ksdk/presets/LineSpacingModeType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 156
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/LineSpacingModeType;->NORMAL:Lcom/amazon/ksdk/presets/LineSpacingModeType;

    goto :goto_0

    .line 155
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/LineSpacingModeType;->NARROW:Lcom/amazon/ksdk/presets/LineSpacingModeType;

    :goto_0
    return-object p0
.end method

.method public static final readerMarginToKSDKPageMarginModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 1

    const-string v0, "margin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 84
    sget-object p0, Lcom/amazon/ksdk/presets/PageMarginModeType;->WIDE:Lcom/amazon/ksdk/presets/PageMarginModeType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 83
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/PageMarginModeType;->NORMAL:Lcom/amazon/ksdk/presets/PageMarginModeType;

    goto :goto_0

    .line 82
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/PageMarginModeType;->NARROW:Lcom/amazon/ksdk/presets/PageMarginModeType;

    :goto_0
    return-object p0
.end method

.method public static final readerOrientationToKSDKPageOrientationModeType(I)Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    .line 109
    sget-object p0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->NONE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    goto :goto_0

    .line 108
    :cond_0
    sget-object p0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE_LEFT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    goto :goto_0

    .line 106
    :cond_1
    sget-object p0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    goto :goto_0

    .line 107
    :cond_2
    sget-object p0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    :goto_0
    return-object p0
.end method
