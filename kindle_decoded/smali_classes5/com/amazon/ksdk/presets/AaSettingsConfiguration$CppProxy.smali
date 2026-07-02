.class final Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;
.super Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
.source "AaSettingsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
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

    .line 292
    const-class v0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 298
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;-><init>()V

    .line 295
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 300
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_aaSettingApplicable(JLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method private native native_aaSettingEnabled(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z
.end method

.method private native native_aaSettingVisible(JLcom/amazon/ksdk/presets/AaSettingType;)Z
.end method

.method private native native_aboutThisBook(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_allDownloadableFonts(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method private native native_animations(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_applicableSettings(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_autoBrightness(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_autoPlayMedia(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_bookMentions(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_columnCountModeOptionsBooks(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native native_columnCountModeOptionsPeriodicals(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native native_continuousScroll(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_contrastRamp(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method private native native_cropMargins(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_defaultBrightness(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_defaultColumnCountModeBooks(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method private native native_defaultColumnCountModePeriodicals(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
.end method

.method private native native_defaultContrastIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_defaultFontBoldnessIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_defaultFontId(JLcom/amazon/ksdk/presets/BuiltInPresetType;)J
.end method

.method private native native_defaultFontSizeIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_defaultJustificationMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/JustificationModeType;
.end method

.method private native native_defaultLanguageForHints(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LanguageForHintsType;
.end method

.method private native native_defaultLineSpacingMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LineSpacingModeType;
.end method

.method private native native_defaultPageColorMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageColorModeType;
.end method

.method private native native_defaultPageMarginMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method private native native_defaultPageMarginModePdf(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
.end method

.method private native native_defaultPageOrientationMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageOrientationModeType;
.end method

.method private native native_defaultReadingProgressMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
.end method

.method private native native_defaultReadingProgressMultipleMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_defaultReadingRulerColor(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerColorType;
.end method

.method private native native_defaultReadingRulerNumberOfLines(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
.end method

.method private native native_defaultReadingRulerOpacity(JLcom/amazon/ksdk/presets/BuiltInPresetType;)F
.end method

.method private native native_defaultReadingRulerStyle(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
.end method

.method private native native_enabledSettings(JLcom/amazon/ksdk/presets/ReadingPreset;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/ksdk/presets/ReadingPreset;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_fitToScreen(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_fontBoldnessRamp(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method private native native_fontOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native native_fontSizeRamp(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method private native native_getBoolForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)Z
.end method

.method private native native_getFloatForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)F
.end method

.method private native native_getLongForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
.end method

.method private native native_highlightMenu(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_hyphenation(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_justificationModeOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/JustificationModeType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_languageForHintsOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/LanguageForHintsType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_lineSpacingModeOptions(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/LineSpacingModeType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method private native native_markFontDownloaded(JJZ)Z
.end method

.method private native native_multiChoiceHints(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pageColorModeOptions(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageColorModeType;",
            "Lcom/amazon/ksdk/presets/PageColor;",
            ">;"
        }
    .end annotation
.end method

.method private native native_pageMarginModeOptions(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageMarginModeType;",
            "Lcom/amazon/ksdk/presets/PageMargin;",
            ">;"
        }
    .end annotation
.end method

.method private native native_pageMarginModePdfOptions(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageMarginModeType;",
            "Lcom/amazon/ksdk/presets/PageMargin;",
            ">;"
        }
    .end annotation
.end method

.method private native native_pageOrientationLock(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pageOrientationModeOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/PageOrientationModeType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_pageRefresh(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pageTurnAnimation(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_pinyin(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_popularHighlights(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_previewDoublePageSpread(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_publisherFontInfo(J)Lcom/amazon/ksdk/presets/FontInfo;
.end method

.method private native native_readingClock(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_readingPresets(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_readingProgressModeOptions(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method private native native_readingProgressModeOptionsOrder(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_readingRuler(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_readingRulerColorOptions(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingRulerColorType;",
            "Lcom/amazon/ksdk/presets/Color;",
            ">;"
        }
    .end annotation
.end method

.method private native native_readingRulerNumberOfLinesOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_readingRulerOpacityRange(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/Range;
.end method

.method private native native_readingRulerStyleOptions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerStyleType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_realTimeTextHighlighting(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_refreshUserFonts(J)V
.end method

.method private native native_setAndroidScreenDensity(JLjava/lang/String;)V
.end method

.method private native native_setAndroidScreenSize(JLjava/lang/String;)V
.end method

.method private native native_setVoiceOverModeEnabled(JZ)V
.end method

.method private native native_showMedia(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_turnPagesWithVolumeControls(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_updateBookContext(JLcom/amazon/ksdk/presets/BookContext;)Z
.end method

.method private native native_updateDeviceContext(JLcom/amazon/ksdk/presets/DeviceContext;)Z
.end method

.method private native native_updateViewContext(JLcom/amazon/ksdk/presets/ViewContext;)Z
.end method

.method private native native_updateWeblabContext(JLcom/amazon/ksdk/presets/WeblabContext;)Z
.end method

.method private native native_validContrastIndex(JI)Z
.end method

.method private native native_validFontBoldnessIndex(JI)Z
.end method

.method private native native_validFontSizeIndex(JI)Z
.end method

.method private native native_verticalScrolling(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_virtualPanel(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method

.method private native native_visibleSettings(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation
.end method

.method private native native_wordwise(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method public aaSettingApplicable(Lcom/amazon/ksdk/presets/AaSettingType;)Z
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_aaSettingApplicable(JLcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    return p1
.end method

.method public aaSettingEnabled(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z
    .locals 2

    .line 398
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_aaSettingEnabled(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z

    move-result p1

    return p1
.end method

.method public aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z
    .locals 2

    .line 390
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_aaSettingVisible(JLcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    return p1
.end method

.method public aboutThisBook(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 806
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_aboutThisBook(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public allDownloadableFonts()Ljava/util/HashMap;
    .locals 2
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

    .line 590
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_allDownloadableFonts(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public animations(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 798
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_animations(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public applicableSettings()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation

    .line 358
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_applicableSettings(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public autoBrightness(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 814
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_autoBrightness(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public autoPlayMedia(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 822
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_autoPlayMedia(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public bookMentions(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 830
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_bookMentions(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public columnCountModeOptionsBooks()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 534
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_columnCountModeOptionsBooks(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public columnCountModeOptionsPeriodicals()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 550
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_columnCountModeOptionsPeriodicals(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public continuousScroll(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 838
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_continuousScroll(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public contrastRamp()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 462
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_contrastRamp(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public cropMargins(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 846
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_cropMargins(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public defaultBrightness(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 430
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultBrightness(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public defaultColumnCountModeBooks(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 2

    .line 526
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultColumnCountModeBooks(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultColumnCountModePeriodicals(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 2

    .line 542
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultColumnCountModePeriodicals(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultContrastIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 454
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultContrastIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public defaultFontBoldnessIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 478
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultFontBoldnessIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public defaultFontId(Lcom/amazon/ksdk/presets/BuiltInPresetType;)J
    .locals 2

    .line 558
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultFontId(JLcom/amazon/ksdk/presets/BuiltInPresetType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public defaultFontSizeIndex(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 502
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultFontSizeIndex(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public defaultJustificationMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/JustificationModeType;
    .locals 2

    .line 606
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultJustificationMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/JustificationModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultLanguageForHints(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LanguageForHintsType;
    .locals 2

    .line 622
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultLanguageForHints(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LanguageForHintsType;

    move-result-object p1

    return-object p1
.end method

.method public defaultLineSpacingMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LineSpacingModeType;
    .locals 2

    .line 638
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultLineSpacingMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/LineSpacingModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultPageColorMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageColorModeType;
    .locals 2

    .line 654
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultPageColorMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageColorModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultPageMarginMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 2

    .line 670
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultPageMarginMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultPageMarginModePdf(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 2

    .line 686
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultPageMarginModePdf(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultPageOrientationMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 2

    .line 702
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultPageOrientationMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultReadingProgressMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingProgressMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object p1

    return-object p1
.end method

.method public defaultReadingProgressMultipleMode(Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 726
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingProgressMultipleMode(JLcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public defaultReadingRulerColor(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerColorType;
    .locals 2

    .line 750
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingRulerColor(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    move-result-object p1

    return-object p1
.end method

.method public defaultReadingRulerNumberOfLines(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
    .locals 2

    .line 782
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingRulerNumberOfLines(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object p1

    return-object p1
.end method

.method public defaultReadingRulerOpacity(Lcom/amazon/ksdk/presets/BuiltInPresetType;)F
    .locals 2

    .line 438
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingRulerOpacity(JLcom/amazon/ksdk/presets/BuiltInPresetType;)F

    move-result p1

    return p1
.end method

.method public defaultReadingRulerStyle(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
    .locals 2

    .line 766
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_defaultReadingRulerStyle(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object p1

    return-object p1
.end method

.method public enabledSettings(Lcom/amazon/ksdk/presets/ReadingPreset;)Ljava/util/ArrayList;
    .locals 2
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

    .line 374
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_enabledSettings(JLcom/amazon/ksdk/presets/ReadingPreset;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->_djinni_private_destroy()V

    .line 314
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 318
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->log:Ljava/util/logging/Logger;

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

.method public fitToScreen(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 854
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_fitToScreen(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public fontBoldnessRamp()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 486
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_fontBoldnessRamp(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public fontOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;"
        }
    .end annotation

    .line 566
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_fontOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public fontSizeRamp()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 510
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_fontSizeRamp(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)Z
    .locals 2

    .line 1006
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_getBoolForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)Z

    move-result p1

    return p1
.end method

.method public getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)F
    .locals 2

    .line 1022
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_getFloatForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)F

    move-result p1

    return p1
.end method

.method public getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)I
    .locals 2

    .line 1014
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_getLongForSetting(JLcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/BuiltInPresetType;)I

    move-result p1

    return p1
.end method

.method public highlightMenu(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 870
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_highlightMenu(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public hyphenation(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 862
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_hyphenation(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public justificationModeOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/JustificationModeType;",
            ">;"
        }
    .end annotation

    .line 614
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_justificationModeOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public languageForHintsOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/LanguageForHintsType;",
            ">;"
        }
    .end annotation

    .line 630
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_languageForHintsOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public lineSpacingModeOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/LineSpacingModeType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 646
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_lineSpacingModeOptions(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public markFontDownloaded(JZ)Z
    .locals 6

    .line 598
    iget-wide v1, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_markFontDownloaded(JJZ)Z

    move-result p1

    return p1
.end method

.method public multiChoiceHints(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 878
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_multiChoiceHints(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public pageColorModeOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/PageColorModeType;",
            "Lcom/amazon/ksdk/presets/PageColor;",
            ">;"
        }
    .end annotation

    .line 662
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageColorModeOptions(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public pageMarginModeOptions(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .locals 2
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

    .line 678
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageMarginModeOptions(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public pageMarginModePdfOptions(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;
    .locals 2
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

    .line 694
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageMarginModePdfOptions(JLcom/amazon/ksdk/presets/ColumnCountModeType;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public pageOrientationLock(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 886
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageOrientationLock(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public pageOrientationModeOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/PageOrientationModeType;",
            ">;"
        }
    .end annotation

    .line 710
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageOrientationModeOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public pageRefresh(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageRefresh(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public pageTurnAnimation(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 902
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pageTurnAnimation(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public pinyin(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 910
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_pinyin(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public popularHighlights(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 918
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_popularHighlights(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public previewDoublePageSpread(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 926
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_previewDoublePageSpread(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public publisherFontInfo()Lcom/amazon/ksdk/presets/FontInfo;
    .locals 2

    .line 574
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_publisherFontInfo(J)Lcom/amazon/ksdk/presets/FontInfo;

    move-result-object v0

    return-object v0
.end method

.method public readingClock(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 934
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingClock(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public readingPresets(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 942
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingPresets(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public readingProgressModeOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 734
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingProgressModeOptions(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public readingProgressModeOptionsOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingProgressModeType;",
            ">;"
        }
    .end annotation

    .line 742
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingProgressModeOptionsOrder(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public readingRuler(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 950
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingRuler(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public readingRulerColorOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/ksdk/presets/ReadingRulerColorType;",
            "Lcom/amazon/ksdk/presets/Color;",
            ">;"
        }
    .end annotation

    .line 758
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingRulerColorOptions(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerNumberOfLinesOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;",
            ">;"
        }
    .end annotation

    .line 790
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingRulerNumberOfLinesOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public readingRulerOpacityRange(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/Range;
    .locals 2

    .line 446
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingRulerOpacityRange(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/Range;

    move-result-object p1

    return-object p1
.end method

.method public readingRulerStyleOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingRulerStyleType;",
            ">;"
        }
    .end annotation

    .line 774
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_readingRulerStyleOptions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public realTimeTextHighlighting(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 958
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_realTimeTextHighlighting(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public refreshUserFonts()V
    .locals 2

    .line 582
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_refreshUserFonts(J)V

    return-void
.end method

.method public setAndroidScreenDensity(Ljava/lang/String;)V
    .locals 2

    .line 414
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_setAndroidScreenDensity(JLjava/lang/String;)V

    return-void
.end method

.method public setAndroidScreenSize(Ljava/lang/String;)V
    .locals 2

    .line 422
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_setAndroidScreenSize(JLjava/lang/String;)V

    return-void
.end method

.method public setVoiceOverModeEnabled(Z)V
    .locals 2

    .line 406
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_setVoiceOverModeEnabled(JZ)V

    return-void
.end method

.method public showMedia(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 966
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_showMedia(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public turnPagesWithVolumeControls(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 974
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_turnPagesWithVolumeControls(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public updateBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_updateBookContext(JLcom/amazon/ksdk/presets/BookContext;)Z

    move-result p1

    return p1
.end method

.method public updateDeviceContext(Lcom/amazon/ksdk/presets/DeviceContext;)Z
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_updateDeviceContext(JLcom/amazon/ksdk/presets/DeviceContext;)Z

    move-result p1

    return p1
.end method

.method public updateViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z
    .locals 2

    .line 342
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_updateViewContext(JLcom/amazon/ksdk/presets/ViewContext;)Z

    move-result p1

    return p1
.end method

.method public updateWeblabContext(Lcom/amazon/ksdk/presets/WeblabContext;)Z
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_updateWeblabContext(JLcom/amazon/ksdk/presets/WeblabContext;)Z

    move-result p1

    return p1
.end method

.method public validContrastIndex(I)Z
    .locals 2

    .line 470
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_validContrastIndex(JI)Z

    move-result p1

    return p1
.end method

.method public validFontBoldnessIndex(I)Z
    .locals 2

    .line 494
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_validFontBoldnessIndex(JI)Z

    move-result p1

    return p1
.end method

.method public validFontSizeIndex(I)Z
    .locals 2

    .line 518
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_validFontSizeIndex(JI)Z

    move-result p1

    return p1
.end method

.method public verticalScrolling(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 982
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_verticalScrolling(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public virtualPanel(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 990
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_virtualPanel(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method

.method public visibleSettings()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;"
        }
    .end annotation

    .line 366
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_visibleSettings(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public wordwise(Lcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 2

    .line 998
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration$CppProxy;->native_wordwise(JLcom/amazon/ksdk/presets/BuiltInPresetType;)Lcom/amazon/ksdk/presets/ToggleStatus;

    move-result-object p1

    return-object p1
.end method
