.class public final Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;
.super Ljava/lang/Object;
.source "AaCoreSettingUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

.field private static final coreSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final nonThemeSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final pluginSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 18
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 20
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 21
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 22
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 23
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 24
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    .line 25
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    .line 26
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    .line 27
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    .line 28
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    .line 29
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    .line 30
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    .line 31
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xd

    aput-object v1, v0, v6

    .line 32
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xe

    aput-object v1, v0, v6

    .line 33
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0xf

    aput-object v1, v0, v6

    .line 34
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x10

    aput-object v1, v0, v6

    .line 35
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x11

    aput-object v1, v0, v6

    .line 36
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x12

    aput-object v1, v0, v6

    .line 37
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x13

    aput-object v1, v0, v6

    .line 38
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x14

    aput-object v1, v0, v6

    .line 39
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x15

    aput-object v1, v0, v6

    .line 40
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x16

    aput-object v1, v0, v6

    .line 41
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v6, 0x17

    aput-object v1, v0, v6

    .line 17
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->coreSettings:Ljava/util/Set;

    new-array v0, v5, [Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 45
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TEXT_TO_SPEECH:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v2

    .line 46
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ABOUT_THIS_BOOK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v3

    .line 47
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->POPULAR_HIGHLIGHTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v4

    .line 44
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->pluginSettings:Ljava/util/Set;

    new-array v0, v5, [Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 51
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_WORD_WISE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v2

    .line 52
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LANGUAGE_FOR_HINTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v3

    .line 53
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MULTIPLE_CHOICE_HINTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    aput-object v1, v0, v4

    .line 50
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->nonThemeSettings:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bookUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 184
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_CHANGE_FONT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026.AA_MENU_KSDK_CHANGE_FONT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 185
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_CHANGE_FONT_SIZE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026ENU_KSDK_CHANGE_FONT_SIZE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 186
    :cond_3
    :goto_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_CHANGE_ALIGNMENT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026ENU_KSDK_CHANGE_ALIGNMENT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 187
    :cond_5
    :goto_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_CHANGE_SPACING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026_MENU_KSDK_CHANGE_SPACING"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public final getCoreSettings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->coreSettings:Ljava/util/Set;

    return-object v0
.end method

.method public final interfaceUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 194
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_SELECT_FONT_SIZE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026ENU_KSDK_SELECT_FONT_SIZE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final isPluginSetting(I)Z
    .locals 2

    .line 173
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->pluginSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 174
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isThemeSetting(I)Z
    .locals 2

    .line 158
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->nonThemeSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 159
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final settingTypeForAaSettingIdentifier(I)Lcom/amazon/ksdk/presets/AaSettingType;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_ID:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->DOWNLOADABLE_FONTS:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 68
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 69
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->CONTINUOUS_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 70
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->VERTICAL_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 71
    :cond_5
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_MARGIN_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 72
    :cond_6
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->LINE_SPACING_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 73
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->JUSTIFICATION_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 74
    :cond_8
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->COLUMN_COUNT_MODE_BOOKS:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 75
    :cond_9
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 78
    :cond_a
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_PRESETS:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 81
    :cond_b
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_PROGRESS_MULTIPLE_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 82
    :cond_c
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_CLOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 83
    :cond_d
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_e

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->TURN_PAGES_WITH_VOLUME_CONTROLS:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 84
    :cond_e
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_f

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_TURN_ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    goto/16 :goto_0

    .line 85
    :cond_f
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_10

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->HIGHLIGHT_MENU:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 86
    :cond_10
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_11

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 87
    :cond_11
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_12

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_PLAY_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 88
    :cond_12
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_13

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 91
    :cond_13
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_14

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->OPEN_IN_GUIDED_VIEW:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 92
    :cond_14
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_15

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_ENTER:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 93
    :cond_15
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_16

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_EXIT:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 96
    :cond_16
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_17

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->LETTERBOXING:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 98
    :cond_17
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->INVALID:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_18

    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->INVALID:Lcom/amazon/ksdk/presets/AaSettingType;

    goto :goto_0

    .line 99
    :cond_18
    sget-object p1, Lcom/amazon/ksdk/presets/AaSettingType;->INVALID:Lcom/amazon/ksdk/presets/AaSettingType;

    :goto_0
    return-object p1
.end method

.method public final tabTypeForAaSettingIdentifier(I)Lcom/amazon/kindle/krx/viewoptions/AaTabType;
    .locals 3

    .line 108
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/amazon/ksdk/presets/BookContentType;->COMIC:Lcom/amazon/ksdk/presets/BookContentType;

    if-ne v0, v2, :cond_2

    .line 109
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFormatType()Lcom/amazon/ksdk/presets/BookFormatType;

    move-result-object v1

    :cond_1
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 112
    :goto_1
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_FAMILY:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 113
    :cond_3
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 114
    :cond_4
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->DOWNLOADABLE_FONTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_5

    :goto_2
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->FONT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto/16 :goto_6

    .line 117
    :cond_5
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_6

    goto :goto_3

    .line 118
    :cond_6
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 119
    :cond_7
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_8

    :goto_3
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->GUIDED_VIEW_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto/16 :goto_6

    .line 122
    :cond_8
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_9

    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LETTERBOXING_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto/16 :goto_6

    .line 125
    :cond_9
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_a

    goto :goto_4

    .line 126
    :cond_a
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_b

    goto :goto_4

    .line 127
    :cond_b
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_c

    goto :goto_4

    .line 128
    :cond_c
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_d

    goto :goto_4

    .line 129
    :cond_d
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_e

    goto :goto_4

    .line 130
    :cond_e
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_f

    goto :goto_4

    .line 131
    :cond_f
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_10

    goto :goto_4

    .line 132
    :cond_10
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_11

    :goto_4
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LAYOUT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto/16 :goto_6

    .line 135
    :cond_11
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_12

    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->THEMES_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto/16 :goto_6

    .line 138
    :cond_12
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_13

    goto :goto_5

    .line 139
    :cond_13
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_14

    goto :goto_5

    .line 140
    :cond_14
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_15

    goto :goto_5

    .line 141
    :cond_15
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_16

    goto :goto_5

    .line 142
    :cond_16
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_17

    goto :goto_5

    .line 143
    :cond_17
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_18

    :goto_5
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto :goto_6

    .line 146
    :cond_18
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_1a

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result p1

    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->GUIDED_VIEW_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto :goto_6

    :cond_19
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto :goto_6

    .line 147
    :cond_1a
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_1c

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-eqz v0, :cond_1b

    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LAYOUT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto :goto_6

    :cond_1b
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    goto :goto_6

    .line 149
    :cond_1c
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    :goto_6
    return-object p1
.end method
