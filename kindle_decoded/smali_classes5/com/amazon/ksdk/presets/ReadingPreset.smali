.class public abstract Lcom/amazon/ksdk/presets/ReadingPreset;
.super Ljava/lang/Object;
.source "ReadingPreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract aboutThisBook()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract active()Z
.end method

.method public abstract animations()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract autoBrightness()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract autoPlayMedia()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract bookMentions()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract brightness()I
.end method

.method public abstract brightnessMetricValue()I
.end method

.method public abstract builtInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;
.end method

.method public abstract columnCountModeBooks()Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method public abstract columnCountModePeriodicals()Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method public abstract columnCountValueBooks()I
.end method

.method public abstract columnCountValuePeriodicals()I
.end method

.method public abstract continuousScroll()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract contrast()I
.end method

.method public abstract contrastIndex()I
.end method

.method public abstract cropMargins()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract fitToScreen()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract fontBoldness()F
.end method

.method public abstract fontBoldnessIndex()I
.end method

.method public abstract fontBoldnessIndexStorage()I
.end method

.method public abstract fontFamilyName()Ljava/lang/String;
.end method

.method public abstract fontId()J
.end method

.method public abstract fontSize()F
.end method

.method public abstract fontSizeIndex()I
.end method

.method public abstract fontSizeValue()I
.end method

.method public abstract fontType()Lcom/amazon/ksdk/presets/FontOriginType;
.end method

.method public abstract fontsForAllLanguages()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method public abstract getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)F
.end method

.method public abstract getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I
.end method

.method public abstract highlightMenu()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract hyphenation()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract id()I
.end method

.method public abstract justificationMode()Lcom/amazon/ksdk/presets/JustificationModeType;
.end method

.method public abstract languageForHints()Lcom/amazon/ksdk/presets/LanguageForHintsType;
.end method

.method public abstract lineSpacingMode()Lcom/amazon/ksdk/presets/LineSpacingModeType;
.end method

.method public abstract lineSpacingValue()F
.end method

.method public abstract multiChoiceHints()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract orientationMode()Lcom/amazon/ksdk/presets/PageOrientationModeType;
.end method

.method public abstract pageColorMode()Lcom/amazon/ksdk/presets/PageColorModeType;
.end method

.method public abstract pageColorValue()Lcom/amazon/ksdk/presets/PageColor;
.end method

.method public abstract pageMarginMode()Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method public abstract pageMarginModePdf()Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method public abstract pageMarginPdfValue()Lcom/amazon/ksdk/presets/PageMargin;
.end method

.method public abstract pageMarginValue()Lcom/amazon/ksdk/presets/PageMargin;
.end method

.method public abstract pageOrientationLock()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pageRefresh()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pageTurnAnimation()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract pinyin()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract popularHighlights()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract previewDoublePageSpread()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract publisherFontSelected()Z
.end method

.method public abstract readingClock()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract readingProgressCurDisplayedMode()Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method public abstract readingProgressMode()Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method public abstract readingProgressMultipleMode()I
.end method

.method public abstract readingRuler()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract readingRulerColor()Lcom/amazon/ksdk/presets/ReadingRulerColorType;
.end method

.method public abstract readingRulerColorValue()Lcom/amazon/ksdk/presets/Color;
.end method

.method public abstract readingRulerNumberOfLines()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
.end method

.method public abstract readingRulerOpacity()F
.end method

.method public abstract readingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
.end method

.method public abstract realTimeTextHighlighting()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract setAboutThisBook(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setAnimations(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setAutoBrightness(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setAutoPlayMedia(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setBookMentions(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method public abstract setBrightness(I)Z
.end method

.method public abstract setColumnCountModeBooks(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z
.end method

.method public abstract setColumnCountModePeriodicals(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z
.end method

.method public abstract setContinuousScroll(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setContrastIndex(I)Z
.end method

.method public abstract setCropMargins(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setFitToScreen(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setFloatForSetting(FLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method public abstract setFontBoldnessIndex(I)Z
.end method

.method public abstract setFontId(J)Z
.end method

.method public abstract setFontSizeIndex(I)Z
.end method

.method public abstract setHighlightMenu(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setHyphenation(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setJustificationMode(Lcom/amazon/ksdk/presets/JustificationModeType;)Z
.end method

.method public abstract setLanguageForHints(Lcom/amazon/ksdk/presets/LanguageForHintsType;)Z
.end method

.method public abstract setLineSpacingMode(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Z
.end method

.method public abstract setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z
.end method

.method public abstract setMultiChoiceHints(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setOrientationMode(Lcom/amazon/ksdk/presets/PageOrientationModeType;)Z
.end method

.method public abstract setPageColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Z
.end method

.method public abstract setPageMarginMode(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z
.end method

.method public abstract setPageMarginModePdf(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z
.end method

.method public abstract setPageOrientationLock(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setPageRefresh(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setPageTurnAnimation(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setPinyin(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setPopularHighlights(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setPreviewDoublePageSpread(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setReadingClock(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setReadingProgress(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
.end method

.method public abstract setReadingProgressCurDisplayedMode(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
.end method

.method public abstract setReadingProgressMultipleMode(I)Z
.end method

.method public abstract setReadingRuler(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setReadingRulerColor(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)Z
.end method

.method public abstract setReadingRulerNumberOfLines(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)Z
.end method

.method public abstract setReadingRulerOpacity(F)Z
.end method

.method public abstract setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)Z
.end method

.method public abstract setRealTimeTextHighlighting(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setShowMedia(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setTurnPagesWithVolumeControls(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setVerticalScrolling(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setVirtualPanel(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract setWordwise(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method public abstract showMedia()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract turnPagesWithVolumeControls()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract type()Lcom/amazon/ksdk/presets/ReadingPresetType;
.end method

.method public abstract verticalScrolling()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract virtualPanel()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method public abstract visible()Z
.end method

.method public abstract wordwise()Lcom/amazon/ksdk/presets/ToggleStatus;
.end method
