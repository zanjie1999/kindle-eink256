.class final Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;
.super Lcom/amazon/ksdk/presets/ReadingPreset;
.source "ReadingPreset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/presets/ReadingPreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 333
    const-class v0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 339
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ReadingPreset;-><init>()V

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 341
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    return-void

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_aboutThisBook(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_active(J)Z
.end method

.method private native native_animations(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_autoBrightness(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_autoPlayMedia(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_bookMentions(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_brightness(J)I
.end method

.method private native native_brightnessMetricValue(J)I
.end method

.method private native native_builtInType(J)Lcom/amazon/ksdk/presets/BuiltInPresetType;
.end method

.method private native native_columnCountModeBooks(J)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method private native native_columnCountModePeriodicals(J)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method private native native_columnCountValueBooks(J)I
.end method

.method private native native_columnCountValuePeriodicals(J)I
.end method

.method private native native_continuousScroll(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_contrast(J)I
.end method

.method private native native_contrastIndex(J)I
.end method

.method private native native_cropMargins(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_fitToScreen(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_fontBoldness(J)F
.end method

.method private native native_fontBoldnessIndex(J)I
.end method

.method private native native_fontBoldnessIndexStorage(J)I
.end method

.method private native native_fontFamilyName(J)Ljava/lang/String;
.end method

.method private native native_fontId(J)J
.end method

.method private native native_fontSize(J)F
.end method

.method private native native_fontSizeIndex(J)I
.end method

.method private native native_fontSizeValue(J)I
.end method

.method private native native_fontType(J)Lcom/amazon/ksdk/presets/FontOriginType;
.end method

.method private native native_fontsForAllLanguages(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native native_getBoolForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method private native native_getFloatForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)F
.end method

.method private native native_getLongForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)I
.end method

.method private native native_highlightMenu(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_hyphenation(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_id(J)I
.end method

.method private native native_justificationMode(J)Lcom/amazon/ksdk/presets/JustificationModeType;
.end method

.method private native native_languageForHints(J)Lcom/amazon/ksdk/presets/LanguageForHintsType;
.end method

.method private native native_lineSpacingMode(J)Lcom/amazon/ksdk/presets/LineSpacingModeType;
.end method

.method private native native_lineSpacingValue(J)F
.end method

.method private native native_multiChoiceHints(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_name(J)Ljava/lang/String;
.end method

.method private native native_orientationMode(J)Lcom/amazon/ksdk/presets/PageOrientationModeType;
.end method

.method private native native_pageColorMode(J)Lcom/amazon/ksdk/presets/PageColorModeType;
.end method

.method private native native_pageColorValue(J)Lcom/amazon/ksdk/presets/PageColor;
.end method

.method private native native_pageMarginMode(J)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method private native native_pageMarginModePdf(J)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method private native native_pageMarginPdfValue(J)Lcom/amazon/ksdk/presets/PageMargin;
.end method

.method private native native_pageMarginValue(J)Lcom/amazon/ksdk/presets/PageMargin;
.end method

.method private native native_pageOrientationLock(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pageRefresh(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pageTurnAnimation(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pinyin(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_popularHighlights(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_previewDoublePageSpread(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_publisherFontSelected(J)Z
.end method

.method private native native_readingClock(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_readingProgressCurDisplayedMode(J)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method private native native_readingProgressMode(J)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method private native native_readingProgressMultipleMode(J)I
.end method

.method private native native_readingRuler(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_readingRulerColor(J)Lcom/amazon/ksdk/presets/ReadingRulerColorType;
.end method

.method private native native_readingRulerColorValue(J)Lcom/amazon/ksdk/presets/Color;
.end method

.method private native native_readingRulerNumberOfLines(J)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
.end method

.method private native native_readingRulerOpacity(J)F
.end method

.method private native native_readingRulerStyle(J)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
.end method

.method private native native_realTimeTextHighlighting(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_setAboutThisBook(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setAnimations(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setAutoBrightness(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setAutoPlayMedia(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setBookMentions(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setBoolForSetting(JZLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method private native native_setBrightness(JI)Z
.end method

.method private native native_setColumnCountModeBooks(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Z
.end method

.method private native native_setColumnCountModePeriodicals(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Z
.end method

.method private native native_setContinuousScroll(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setContrastIndex(JI)Z
.end method

.method private native native_setCropMargins(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setFitToScreen(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setFloatForSetting(JFLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method private native native_setFontBoldnessIndex(JI)Z
.end method

.method private native native_setFontId(JJ)Z
.end method

.method private native native_setFontSizeIndex(JI)Z
.end method

.method private native native_setHighlightMenu(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setHyphenation(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setJustificationMode(JLcom/amazon/ksdk/presets/JustificationModeType;)Z
.end method

.method private native native_setLanguageForHints(JLcom/amazon/ksdk/presets/LanguageForHintsType;)Z
.end method

.method private native native_setLineSpacingMode(JLcom/amazon/ksdk/presets/LineSpacingModeType;)Z
.end method

.method private native native_setLongForSetting(JILcom/amazon/ksdk/presets/AaSettingType;Z)Z
.end method

.method private native native_setMultiChoiceHints(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setOrientationMode(JLcom/amazon/ksdk/presets/PageOrientationModeType;)Z
.end method

.method private native native_setPageColorMode(JLcom/amazon/ksdk/presets/PageColorModeType;)Z
.end method

.method private native native_setPageMarginMode(JLcom/amazon/ksdk/presets/PageMarginModeType;)Z
.end method

.method private native native_setPageMarginModePdf(JLcom/amazon/ksdk/presets/PageMarginModeType;)Z
.end method

.method private native native_setPageOrientationLock(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setPageRefresh(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setPageTurnAnimation(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setPinyin(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setPopularHighlights(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setPreviewDoublePageSpread(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setReadingClock(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setReadingProgress(JLcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
.end method

.method private native native_setReadingProgressCurDisplayedMode(JLcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
.end method

.method private native native_setReadingProgressMultipleMode(JI)Z
.end method

.method private native native_setReadingRuler(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setReadingRulerColor(JLcom/amazon/ksdk/presets/ReadingRulerColorType;)Z
.end method

.method private native native_setReadingRulerNumberOfLines(JLcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)Z
.end method

.method private native native_setReadingRulerOpacity(JF)Z
.end method

.method private native native_setReadingRulerStyle(JLcom/amazon/ksdk/presets/ReadingRulerStyleType;)Z
.end method

.method private native native_setRealTimeTextHighlighting(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setShowMedia(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setTurnPagesWithVolumeControls(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setVerticalScrolling(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setVirtualPanel(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_setWordwise(JLcom/amazon/ksdk/presets/ToggleStatus;)Z
.end method

.method private native native_showMedia(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_turnPagesWithVolumeControls(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_type(J)Lcom/amazon/ksdk/presets/ReadingPresetType;
.end method

.method private native native_verticalScrolling(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_virtualPanel(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_visible(J)Z
.end method

.method private native native_wordwise(J)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method public aboutThisBook()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 903
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_aboutThisBook(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public active()Z
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_active(J)Z

    move-result v0

    return v0
.end method

.method public animations()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 887
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_animations(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public autoBrightness()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 919
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_autoBrightness(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public autoPlayMedia()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 935
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_autoPlayMedia(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public bookMentions()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 951
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_bookMentions(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public brightness()I
    .locals 2

    .line 423
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_brightness(J)I

    move-result v0

    return v0
.end method

.method public brightnessMetricValue()I
    .locals 2

    .line 543
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_brightnessMetricValue(J)I

    move-result v0

    return v0
.end method

.method public builtInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;
    .locals 2

    .line 391
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_builtInType(J)Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    return-object v0
.end method

.method public columnCountModeBooks()Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 2

    .line 551
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_columnCountModeBooks(J)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object v0

    return-object v0
.end method

.method public columnCountModePeriodicals()Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 2

    .line 575
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_columnCountModePeriodicals(J)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object v0

    return-object v0
.end method

.method public columnCountValueBooks()I
    .locals 2

    .line 567
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_columnCountValueBooks(J)I

    move-result v0

    return v0
.end method

.method public columnCountValuePeriodicals()I
    .locals 2

    .line 591
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_columnCountValuePeriodicals(J)I

    move-result v0

    return v0
.end method

.method public continuousScroll()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 967
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_continuousScroll(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public contrast()I
    .locals 2

    .line 471
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_contrast(J)I

    move-result v0

    return v0
.end method

.method public contrastIndex()I
    .locals 2

    .line 455
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_contrastIndex(J)I

    move-result v0

    return v0
.end method

.method public cropMargins()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 983
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_cropMargins(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->_djinni_private_destroy()V

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 359
    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public fitToScreen()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 999
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fitToScreen(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public fontBoldness()F
    .locals 2

    .line 503
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontBoldness(J)F

    move-result v0

    return v0
.end method

.method public fontBoldnessIndex()I
    .locals 2

    .line 479
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontBoldnessIndex(J)I

    move-result v0

    return v0
.end method

.method public fontBoldnessIndexStorage()I
    .locals 2

    .line 487
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontBoldnessIndexStorage(J)I

    move-result v0

    return v0
.end method

.method public fontFamilyName()Ljava/lang/String;
    .locals 2

    .line 623
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontFamilyName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fontId()J
    .locals 2

    .line 599
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public fontSize()F
    .locals 2

    .line 527
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontSize(J)F

    move-result v0

    return v0
.end method

.method public fontSizeIndex()I
    .locals 2

    .line 511
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontSizeIndex(J)I

    move-result v0

    return v0
.end method

.method public fontSizeValue()I
    .locals 2

    .line 535
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontSizeValue(J)I

    move-result v0

    return v0
.end method

.method public fontType()Lcom/amazon/ksdk/presets/FontOriginType;
    .locals 2

    .line 615
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontType(J)Lcom/amazon/ksdk/presets/FontOriginType;

    move-result-object v0

    return-object v0
.end method

.method public fontsForAllLanguages()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_fontsForAllLanguages(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z
    .locals 2

    .line 1287
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_getBoolForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    return p1
.end method

.method public getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)F
    .locals 2

    .line 1319
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_getFloatForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)F

    move-result p1

    return p1
.end method

.method public getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I
    .locals 2

    .line 1303
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_getLongForSetting(JLcom/amazon/ksdk/presets/AaSettingType;)I

    move-result p1

    return p1
.end method

.method public highlightMenu()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1031
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_highlightMenu(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public hyphenation()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1015
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_hyphenation(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public id()I
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_id(J)I

    move-result v0

    return v0
.end method

.method public justificationMode()Lcom/amazon/ksdk/presets/JustificationModeType;
    .locals 2

    .line 639
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_justificationMode(J)Lcom/amazon/ksdk/presets/JustificationModeType;

    move-result-object v0

    return-object v0
.end method

.method public languageForHints()Lcom/amazon/ksdk/presets/LanguageForHintsType;
    .locals 2

    .line 655
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_languageForHints(J)Lcom/amazon/ksdk/presets/LanguageForHintsType;

    move-result-object v0

    return-object v0
.end method

.method public lineSpacingMode()Lcom/amazon/ksdk/presets/LineSpacingModeType;
    .locals 2

    .line 671
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_lineSpacingMode(J)Lcom/amazon/ksdk/presets/LineSpacingModeType;

    move-result-object v0

    return-object v0
.end method

.method public lineSpacingValue()F
    .locals 2

    .line 687
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_lineSpacingValue(J)F

    move-result v0

    return v0
.end method

.method public multiChoiceHints()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1047
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_multiChoiceHints(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_name(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public orientationMode()Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 2

    .line 767
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_orientationMode(J)Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object v0

    return-object v0
.end method

.method public pageColorMode()Lcom/amazon/ksdk/presets/PageColorModeType;
    .locals 2

    .line 695
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageColorMode(J)Lcom/amazon/ksdk/presets/PageColorModeType;

    move-result-object v0

    return-object v0
.end method

.method public pageColorValue()Lcom/amazon/ksdk/presets/PageColor;
    .locals 2

    .line 711
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageColorValue(J)Lcom/amazon/ksdk/presets/PageColor;

    move-result-object v0

    return-object v0
.end method

.method public pageMarginMode()Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 2

    .line 719
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageMarginMode(J)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object v0

    return-object v0
.end method

.method public pageMarginModePdf()Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 2

    .line 743
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageMarginModePdf(J)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object v0

    return-object v0
.end method

.method public pageMarginPdfValue()Lcom/amazon/ksdk/presets/PageMargin;
    .locals 2

    .line 759
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageMarginPdfValue(J)Lcom/amazon/ksdk/presets/PageMargin;

    move-result-object v0

    return-object v0
.end method

.method public pageMarginValue()Lcom/amazon/ksdk/presets/PageMargin;
    .locals 2

    .line 735
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageMarginValue(J)Lcom/amazon/ksdk/presets/PageMargin;

    move-result-object v0

    return-object v0
.end method

.method public pageOrientationLock()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1063
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageOrientationLock(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public pageRefresh()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1079
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageRefresh(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public pageTurnAnimation()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1095
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pageTurnAnimation(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public pinyin()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1111
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_pinyin(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public popularHighlights()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1127
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_popularHighlights(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public previewDoublePageSpread()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1143
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_previewDoublePageSpread(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public publisherFontSelected()Z
    .locals 2

    .line 415
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_publisherFontSelected(J)Z

    move-result v0

    return v0
.end method

.method public readingClock()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1159
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingClock(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public readingProgressCurDisplayedMode()Lcom/amazon/ksdk/presets/ReadingProgressModeType;
    .locals 2

    .line 815
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingProgressCurDisplayedMode(J)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v0

    return-object v0
.end method

.method public readingProgressMode()Lcom/amazon/ksdk/presets/ReadingProgressModeType;
    .locals 2

    .line 783
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingProgressMode(J)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v0

    return-object v0
.end method

.method public readingProgressMultipleMode()I
    .locals 2

    .line 799
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingProgressMultipleMode(J)I

    move-result v0

    return v0
.end method

.method public readingRuler()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1175
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRuler(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerColor()Lcom/amazon/ksdk/presets/ReadingRulerColorType;
    .locals 2

    .line 831
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRulerColor(J)Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerColorValue()Lcom/amazon/ksdk/presets/Color;
    .locals 2

    .line 847
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRulerColorValue(J)Lcom/amazon/ksdk/presets/Color;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerNumberOfLines()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
    .locals 2

    .line 871
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRulerNumberOfLines(J)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerOpacity()F
    .locals 2

    .line 439
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRulerOpacity(J)F

    move-result v0

    return v0
.end method

.method public readingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
    .locals 2

    .line 855
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_readingRulerStyle(J)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v0

    return-object v0
.end method

.method public realTimeTextHighlighting()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1191
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_realTimeTextHighlighting(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public setAboutThisBook(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 911
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setAboutThisBook(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setAnimations(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 895
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setAnimations(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setAutoBrightness(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 927
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setAutoBrightness(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setAutoPlayMedia(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 943
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setAutoPlayMedia(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setBookMentions(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 959
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setBookMentions(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z
    .locals 2

    .line 1295
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setBoolForSetting(JZLcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    return p1
.end method

.method public setBrightness(I)Z
    .locals 2

    .line 431
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setBrightness(JI)Z

    move-result p1

    return p1
.end method

.method public setColumnCountModeBooks(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z
    .locals 2

    .line 559
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setColumnCountModeBooks(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Z

    move-result p1

    return p1
.end method

.method public setColumnCountModePeriodicals(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z
    .locals 2

    .line 583
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setColumnCountModePeriodicals(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Z

    move-result p1

    return p1
.end method

.method public setContinuousScroll(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 975
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setContinuousScroll(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setContrastIndex(I)Z
    .locals 2

    .line 463
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setContrastIndex(JI)Z

    move-result p1

    return p1
.end method

.method public setCropMargins(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 991
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setCropMargins(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setFitToScreen(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1007
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setFitToScreen(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setFloatForSetting(FLcom/amazon/ksdk/presets/AaSettingType;)Z
    .locals 2

    .line 1327
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setFloatForSetting(JFLcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    return p1
.end method

.method public setFontBoldnessIndex(I)Z
    .locals 2

    .line 495
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setFontBoldnessIndex(JI)Z

    move-result p1

    return p1
.end method

.method public setFontId(J)Z
    .locals 2

    .line 607
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setFontId(JJ)Z

    move-result p1

    return p1
.end method

.method public setFontSizeIndex(I)Z
    .locals 2

    .line 519
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setFontSizeIndex(JI)Z

    move-result p1

    return p1
.end method

.method public setHighlightMenu(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1039
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setHighlightMenu(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setHyphenation(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1023
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setHyphenation(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setJustificationMode(Lcom/amazon/ksdk/presets/JustificationModeType;)Z
    .locals 2

    .line 647
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setJustificationMode(JLcom/amazon/ksdk/presets/JustificationModeType;)Z

    move-result p1

    return p1
.end method

.method public setLanguageForHints(Lcom/amazon/ksdk/presets/LanguageForHintsType;)Z
    .locals 2

    .line 663
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setLanguageForHints(JLcom/amazon/ksdk/presets/LanguageForHintsType;)Z

    move-result p1

    return p1
.end method

.method public setLineSpacingMode(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Z
    .locals 2

    .line 679
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setLineSpacingMode(JLcom/amazon/ksdk/presets/LineSpacingModeType;)Z

    move-result p1

    return p1
.end method

.method public setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z
    .locals 6

    .line 1311
    iget-wide v1, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setLongForSetting(JILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    move-result p1

    return p1
.end method

.method public setMultiChoiceHints(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1055
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setMultiChoiceHints(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setOrientationMode(Lcom/amazon/ksdk/presets/PageOrientationModeType;)Z
    .locals 2

    .line 775
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setOrientationMode(JLcom/amazon/ksdk/presets/PageOrientationModeType;)Z

    move-result p1

    return p1
.end method

.method public setPageColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Z
    .locals 2

    .line 703
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageColorMode(JLcom/amazon/ksdk/presets/PageColorModeType;)Z

    move-result p1

    return p1
.end method

.method public setPageMarginMode(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z
    .locals 2

    .line 727
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageMarginMode(JLcom/amazon/ksdk/presets/PageMarginModeType;)Z

    move-result p1

    return p1
.end method

.method public setPageMarginModePdf(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z
    .locals 2

    .line 751
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageMarginModePdf(JLcom/amazon/ksdk/presets/PageMarginModeType;)Z

    move-result p1

    return p1
.end method

.method public setPageOrientationLock(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1071
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageOrientationLock(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setPageRefresh(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1087
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageRefresh(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setPageTurnAnimation(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1103
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPageTurnAnimation(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setPinyin(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1119
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPinyin(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setPopularHighlights(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1135
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPopularHighlights(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setPreviewDoublePageSpread(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1151
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setPreviewDoublePageSpread(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setReadingClock(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1167
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingClock(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setReadingProgress(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
    .locals 2

    .line 791
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingProgress(JLcom/amazon/ksdk/presets/ReadingProgressModeType;)Z

    move-result p1

    return p1
.end method

.method public setReadingProgressCurDisplayedMode(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z
    .locals 2

    .line 823
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingProgressCurDisplayedMode(JLcom/amazon/ksdk/presets/ReadingProgressModeType;)Z

    move-result p1

    return p1
.end method

.method public setReadingProgressMultipleMode(I)Z
    .locals 2

    .line 807
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingProgressMultipleMode(JI)Z

    move-result p1

    return p1
.end method

.method public setReadingRuler(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1183
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingRuler(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setReadingRulerColor(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)Z
    .locals 2

    .line 839
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingRulerColor(JLcom/amazon/ksdk/presets/ReadingRulerColorType;)Z

    move-result p1

    return p1
.end method

.method public setReadingRulerNumberOfLines(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)Z
    .locals 2

    .line 879
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingRulerNumberOfLines(JLcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)Z

    move-result p1

    return p1
.end method

.method public setReadingRulerOpacity(F)Z
    .locals 2

    .line 447
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingRulerOpacity(JF)Z

    move-result p1

    return p1
.end method

.method public setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)Z
    .locals 2

    .line 863
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setReadingRulerStyle(JLcom/amazon/ksdk/presets/ReadingRulerStyleType;)Z

    move-result p1

    return p1
.end method

.method public setRealTimeTextHighlighting(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1199
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setRealTimeTextHighlighting(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setShowMedia(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1215
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setShowMedia(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setTurnPagesWithVolumeControls(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1231
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setTurnPagesWithVolumeControls(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setVerticalScrolling(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1247
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setVerticalScrolling(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setVirtualPanel(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1263
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setVirtualPanel(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public setWordwise(Lcom/amazon/ksdk/presets/ToggleStatus;)Z
    .locals 2

    .line 1279
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_setWordwise(JLcom/amazon/ksdk/presets/ToggleStatus;)Z

    move-result p1

    return p1
.end method

.method public showMedia()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1207
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_showMedia(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public turnPagesWithVolumeControls()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1223
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_turnPagesWithVolumeControls(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_type(J)Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    return-object v0
.end method

.method public verticalScrolling()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1239
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_verticalScrolling(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public virtualPanel()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1255
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_virtualPanel(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method

.method public visible()Z
    .locals 2

    .line 407
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_visible(J)Z

    move-result v0

    return v0
.end method

.method public wordwise()Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 1271
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset$CppProxy;->native_wordwise(J)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object v0

    return-object v0
.end method
