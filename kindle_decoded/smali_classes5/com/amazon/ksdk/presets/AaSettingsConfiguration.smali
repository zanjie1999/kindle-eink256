.class public abstract Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
.super Ljava/lang/Object;
.source "AaSettingsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract aaSettingApplicable(Lcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method public abstract aaSettingEnabled(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z
.end method

.method public abstract aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method public abstract aboutThisBook(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract allDownloadableFonts()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract animations(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract applicableSettings()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract autoBrightness(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract autoPlayMedia(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract bookMentions(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract columnCountModeOptionsBooks()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract columnCountModeOptionsPeriodicals()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract continuousScroll(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract contrastRamp()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cropMargins(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract defaultBrightness(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract defaultColumnCountModeBooks(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method public abstract defaultColumnCountModePeriodicals(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method public abstract defaultContrastIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract defaultFontBoldnessIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract defaultFontId(Lcom/amazon/ksdk/presets/BuiltInPresetType;)J
.end method

.method public abstract defaultFontSizeIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract defaultJustificationMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/JustificationModeType;
.end method

.method public abstract defaultLanguageForHints(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LanguageForHintsType;
.end method

.method public abstract defaultLineSpacingMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LineSpacingModeType;
.end method

.method public abstract defaultPageColorMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageColorModeType;
.end method

.method public abstract defaultPageMarginMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method public abstract defaultPageMarginModePdf(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method public abstract defaultPageOrientationMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageOrientationModeType;
.end method

.method public abstract defaultReadingProgressMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method public abstract defaultReadingProgressMultipleMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract defaultReadingRulerColor(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerColorType;
.end method

.method public abstract defaultReadingRulerNumberOfLines(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
.end method

.method public abstract defaultReadingRulerOpacity(Lcom/amazon/ksdk/presets/BuiltInPresetType;)F
.end method

.method public abstract defaultReadingRulerStyle(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
.end method

.method public abstract enabledSettings(Lcom/amazon/ksdk/presets/ReadingPreset;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/ReadingPreset;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fitToScreen(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract fontBoldnessRamp()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fontOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fontSizeRamp()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)Z
.end method

.method public abstract getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)F
.end method

.method public abstract getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method public abstract highlightMenu(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract hyphenation(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract justificationModeOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/JustificationModeType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract languageForHintsOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/LanguageForHintsType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lineSpacingModeOptions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/LineSpacingModeType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract markFontDownloaded(JZ)Z
.end method

.method public abstract multiChoiceHints(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pageColorModeOptions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageColorModeType;",
            "Lcom/amazon/ksdk/presets/PageColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pageMarginModeOptions(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageMarginModeType;",
            "Lcom/amazon/ksdk/presets/PageMargin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pageMarginModePdfOptions(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageMarginModeType;",
            "Lcom/amazon/ksdk/presets/PageMargin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pageOrientationLock(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pageOrientationModeOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/PageOrientationModeType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pageRefresh(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pageTurnAnimation(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pinyin(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract popularHighlights(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract previewDoublePageSpread(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract publisherFontInfo()Lcom/amazon/ksdk/presets/FontInfo;
.end method

.method public abstract readingClock(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract readingPresets(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract readingProgressModeOptions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readingProgressModeOptionsOrder()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readingRuler(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract readingRulerColorOptions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingRulerColorType;",
            "Lcom/amazon/ksdk/presets/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readingRulerNumberOfLinesOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readingRulerOpacityRange(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/Range;
.end method

.method public abstract readingRulerStyleOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerStyleType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realTimeTextHighlighting(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract refreshUserFonts()V
.end method

.method public abstract setAndroidScreenDensity(Ljava/lang/String;)V
.end method

.method public abstract setAndroidScreenSize(Ljava/lang/String;)V
.end method

.method public abstract setVoiceOverModeEnabled(Z)V
.end method

.method public abstract showMedia(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract turnPagesWithVolumeControls(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract updateBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z
.end method

.method public abstract updateDeviceContext(Lcom/amazon/ksdk/presets/DeviceContext;)Z
.end method

.method public abstract updateViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z
.end method

.method public abstract updateWeblabContext(Lcom/amazon/ksdk/presets/WeblabContext;)Z
.end method

.method public abstract validContrastIndex(I)Z
.end method

.method public abstract validFontBoldnessIndex(I)Z
.end method

.method public abstract validFontSizeIndex(I)Z
.end method

.method public abstract verticalScrolling(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract virtualPanel(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract visibleSettings()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract wordwise(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method
