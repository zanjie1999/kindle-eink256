.class public Lcom/amazon/krf/platform/ViewSettings;
.super Ljava/lang/Object;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/ViewSettings$MeasureValue;,
        Lcom/amazon/krf/platform/ViewSettings$ReadingMode;,
        Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;,
        Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;,
        Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewSettings"

.field public static final MASK_COLOR_CONTENT_DEFINED:I = 0xffffff

.field public static final MASK_COLOR_TRANSPARENT:I


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings;->createNativeHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/platform/ViewSettings;->nativeHandle:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-wide p1, p0, Lcom/amazon/krf/platform/ViewSettings;->nativeHandle:J

    return-void
.end method

.method private static native createNativeHandle()J
.end method

.method private native finalizeNative()V
.end method

.method private native getBottomInsetMarginUnit()I
.end method

.method private native getBottomInsetMarginValue()F
.end method

.method private native getBottomMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getBottomMarginValue()F
.end method

.method private native getCanAutoplayAnimationsNative()Z
.end method

.method private native getColorThemeNative()Lcom/amazon/krf/platform/theme/ColorTheme;
.end method

.method private native getColumnGapSpacingUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getColumnGapSpacingValue()F
.end method

.method private native getFontSizeUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getFontSizeValue()F
.end method

.method private native getLeftInsetMarginUnit()I
.end method

.method private native getLeftInsetMarginValue()F
.end method

.method private native getLeftMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getLeftMarginValue()F
.end method

.method private native getLineSpacingUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getLineSpacingValue()F
.end method

.method private native getRightInsetMarginUnit()I
.end method

.method private native getRightInsetMarginValue()F
.end method

.method private native getRightMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getRightMarginValue()F
.end method

.method private native getTopInsetMarginUnit()I
.end method

.method private native getTopInsetMarginValue()F
.end method

.method private native getTopMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.end method

.method private native getTopMarginValue()F
.end method

.method private native getWordWiseEnabledNative()Z
.end method

.method private native getWordWisePropertiesNative()Lcom/amazon/krf/platform/WordWiseProperties;
.end method

.method private native nativeGetPageTransitionPluginStyle()I
.end method

.method private native nativeGetReadingMode()I
.end method

.method private native nativeSetBottomInsetMargin(FI)V
.end method

.method private native nativeSetBottomMargin(FI)V
.end method

.method private native nativeSetColumnGapSpacing(FI)V
.end method

.method private native nativeSetFontSize(FI)V
.end method

.method private native nativeSetLeftInsetMargin(FI)V
.end method

.method private native nativeSetLeftMargin(FI)V
.end method

.method private native nativeSetLineSpacing(FI)V
.end method

.method private native nativeSetRightInsetMargin(FI)V
.end method

.method private native nativeSetRightMargin(FI)V
.end method

.method private native nativeSetSectionLayoutMode(I)V
.end method

.method private native nativeSetTextAlignment(I)V
.end method

.method private native nativeSetTopInsetMargin(FI)V
.end method

.method private native nativeSetTopMargin(FI)V
.end method

.method private native setCanAutoplayAnimationsNative(Z)V
.end method

.method private native setColorThemeNative(Lcom/amazon/krf/platform/theme/ColorTheme;)V
.end method

.method private native setWordWiseEnabledNative(Z)V
.end method

.method private native setWordWisePropertiesNative(Lcom/amazon/krf/platform/WordWiseProperties;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 998
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/ViewSettings;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->finalizeNative()V

    .line 1000
    iput-wide v2, p0, Lcom/amazon/krf/platform/ViewSettings;->nativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1004
    throw v0
.end method

.method public native getBackgroundColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getBottomInsetMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 323
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomInsetMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomInsetMarginUnit()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 279
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public getCanAutoplayAnimations()Z
    .locals 1

    .line 824
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getCanAutoplayAnimationsNative()Z

    move-result v0

    return v0
.end method

.method public getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    .line 716
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getColorThemeNative()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    return-object v0
.end method

.method public native getColumnCount()I
.end method

.method public getColumnGapSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 683
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getColumnGapSpacingValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getColumnGapSpacingUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method native getDPI()F
.end method

.method public native getDefaultFontFace()Ljava/lang/String;
.end method

.method public native getDefaultMonospaceFontFace()Ljava/lang/String;
.end method

.method public native getDefaultSansSerifFontFace()Ljava/lang/String;
.end method

.method public getFontSize()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 339
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSizeValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSizeUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public native getForceDisableJustification()Z
.end method

.method public native getHeight()I
.end method

.method public native getHoverFastPageTransitionInterval()J
.end method

.method public native getHoverLandscapeRegionPercentage()F
.end method

.method public native getHoverPortraitRegionPercentage()F
.end method

.method public native getHoverSlowPageTransitionInterval()J
.end method

.method public native getHoverSlowToFastPageTransitionDelay()J
.end method

.method public native getIllustratedContentEnabled()Z
.end method

.method public getLeftInsetMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 290
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftInsetMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftInsetMarginUnit()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 255
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public native getLeftTapRegionPercentage()F
.end method

.method public native getLineGapSize()F
.end method

.method public getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 331
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacingValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacingUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public native getLinkColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getMaskColor()I
.end method

.method public getPageTransitionPluginStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 3

    .line 756
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->nativeGetPageTransitionPluginStyle()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->createFromInt(I)Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ViewSettings"

    const-string v2, "getPageTransitionPluginStyle exception"

    .line 758
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public native getPanelTransitionDuration()I
.end method

.method public getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    .line 973
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->nativeGetReadingMode()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    return-object v0
.end method

.method public getRightInsetMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 301
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightInsetMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightInsetMarginUnit()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 263
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public native getRightTapRegionPercentage()F
.end method

.method public native getSectionLayoutMode()Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;
.end method

.method public native getShowFullPageOnEnter()Z
.end method

.method public native getShowFullPageOnExit()Z
.end method

.method public native getSpaceBetweenColumns()I
.end method

.method public native getTextAlignment()Lcom/amazon/krf/platform/ViewSettings$TextAlignment;
.end method

.method public native getTextColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getTopInsetMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 312
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopInsetMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopInsetMarginUnit()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 3

    .line 271
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopMarginValue()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopMarginUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    return-object v0
.end method

.method public native getWidth()I
.end method

.method public getWordWiseEnabled()Z
    .locals 1

    .line 721
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getWordWiseEnabledNative()Z

    move-result v0

    return v0
.end method

.method public getWordWiseProperties()Lcom/amazon/krf/platform/WordWiseProperties;
    .locals 1

    .line 731
    invoke-direct {p0}, Lcom/amazon/krf/platform/ViewSettings;->getWordWisePropertiesNative()Lcom/amazon/krf/platform/WordWiseProperties;

    move-result-object v0

    return-object v0
.end method

.method public native isAccessibilityEnabled()Z
.end method

.method public native isAutomaticColumnModeEnabled()Z
.end method

.method public native isReadingRulerEnabled()Z
.end method

.method public native isSelectionEnabled()Z
.end method

.method public native isUseAdaptiveNotes()Z
.end method

.method public native isVerticalScrollEnabled()Z
.end method

.method public native setAccessibilityEnabled(Z)V
.end method

.method public native setAutomaticColumnModeEnabled(Z)V
.end method

.method public native setBackgroundColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setBottomInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 570
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetBottomInsetMargin(FI)V

    return-void
.end method

.method public setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 534
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetBottomMargin(FI)V

    return-void
.end method

.method public setCanAutoplayAnimations(Z)V
    .locals 0

    .line 832
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setCanAutoplayAnimationsNative(Z)V

    return-void
.end method

.method public setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setColorThemeNative(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    return-void
.end method

.method public native setColumnCount(I)V
.end method

.method public setColumnGapSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 674
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetColumnGapSpacing(FI)V

    return-void
.end method

.method native setDPI(F)V
.end method

.method public native setDefaultFontFace(Ljava/lang/String;)V
.end method

.method public native setDefaultMonospaceFontFace(Ljava/lang/String;)V
.end method

.method public native setDefaultSansSerifFontFace(Ljava/lang/String;)V
.end method

.method public native setExpectBookFinishedInitializing(Z)V
.end method

.method public setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 588
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetFontSize(FI)V

    return-void
.end method

.method public native setForceDisableJustification(Z)V
.end method

.method public native setHeight(I)V
.end method

.method public native setHoverFastPageTransitionInterval(J)V
.end method

.method public native setHoverLandscapeRegionPercentage(F)V
.end method

.method public native setHoverPortraitRegionPercentage(F)V
.end method

.method public native setHoverSlowPageTransitionInterval(J)V
.end method

.method public native setHoverSlowToFastPageTransitionDelay(J)V
.end method

.method public native setIllustratedContentEnabled(Z)V
.end method

.method public setLeftInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 543
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetLeftInsetMargin(FI)V

    return-void
.end method

.method public setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 507
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetLeftMargin(FI)V

    return-void
.end method

.method public native setLeftTapRegionPercentage(F)V
.end method

.method public native setLineGapSize(F)V
.end method

.method public setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 579
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetLineSpacing(FI)V

    return-void
.end method

.method public native setLinkColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native setMaskColor(I)V
.end method

.method public native setPageTransitionPluginStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V
.end method

.method public native setPanelTransitionDuration(I)V
.end method

.method public native setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V
.end method

.method public native setReadingRulerEnabled(Z)V
.end method

.method public setRightInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 552
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetRightInsetMargin(FI)V

    return-void
.end method

.method public setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 516
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetRightMargin(FI)V

    return-void
.end method

.method public native setRightTapRegionPercentage(F)V
.end method

.method public setSectionLayoutMode(Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;)V
    .locals 0

    .line 945
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetSectionLayoutMode(I)V

    return-void
.end method

.method public native setSelectionEnabled(Z)V
.end method

.method public native setShowFullPageOnEnter(Z)V
.end method

.method public native setShowFullPageOnExit(Z)V
.end method

.method public native setSpaceBetweenColumns(I)V
.end method

.method public setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V
    .locals 0

    .line 486
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetTextAlignment(I)V

    return-void
.end method

.method public native setTextColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTopInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 561
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetTopInsetMargin(FI)V

    return-void
.end method

.method public setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    .line 525
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->nativeSetTopMargin(FI)V

    return-void
.end method

.method public native setUseAdaptiveNotes(Z)V
.end method

.method public native setVerticalScrollEnabled(Z)V
.end method

.method public native setWidth(I)V
.end method

.method public setWordWiseEnabled(Z)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWiseEnabledNative(Z)V

    return-void
.end method

.method public setWordWiseProperties(Lcom/amazon/krf/platform/WordWiseProperties;)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWisePropertiesNative(Lcom/amazon/krf/platform/WordWiseProperties;)V

    return-void
.end method

.method public native useContentDefinedMaskColor()Z
.end method
