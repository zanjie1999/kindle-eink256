.class public Lcom/amazon/kindle/rendering/KRIFSettingsControl;
.super Ljava/lang/Object;
.source "KRIFSettingsControl.java"


# static fields
.field private static final HELVETICA_FOR_YJLR:Ljava/lang/String; = "Helvetica"

.field private static final MASK_COLOR_BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private krifView:Lcom/amazon/kindle/rendering/KRIFView;

.field private landscapeHasStagedChanges:Z

.field private landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

.field private landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private portraitHasStagedChanges:Z

.field private portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

.field private portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private readingRulerHasStagedChanges:Z

.field private readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 87
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 88
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 94
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 95
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->refreshLineSettings(Landroid/content/Context;)V

    .line 96
    new-instance p1, Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-direct {p1}, Lcom/amazon/krf/platform/ReadingRulerSettings;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setAllowPositionChange(Z)V

    return-void
.end method

.method private ensureViewSettings()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v2, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v2, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v1, :cond_2

    .line 195
    monitor-exit v0

    return-void

    .line 193
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "KRIFView did not return a ViewSettings object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getKRFMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)I
    .locals 1

    .line 436
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0xffffff

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/high16 p1, -0x1000000

    return p1
.end method

.method private getLandscapeHorizontalTextBottomMarginId()I
    .locals 1

    .line 1211
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    sget v0, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_bottom_margin_landscape_v2:I

    return v0

    .line 1214
    :cond_0
    sget v0, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_bottom_margin_landscape:I

    return v0
.end method

.method private getPortraitHorizontalTextBottomMarginId()I
    .locals 1

    .line 1204
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    sget v0, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_bottom_margin_portrait_v2:I

    return v0

    .line 1207
    :cond_0
    sget v0, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_bottom_margin_portrait:I

    return v0
.end method

.method private isCurrentMaskColor(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/android/docviewer/LetterboxingColor;)Z
    .locals 3

    .line 448
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$LetterboxingColor:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    return v0

    .line 454
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getMaskColor()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 452
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->useContentDefinedMaskColor()Z

    move-result p1

    return p1

    .line 450
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getMaskColor()I

    move-result p1

    const/high16 p2, -0x1000000

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static measureValueEquals(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setAutoColumnMode(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 1110
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isAutomaticColumnModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 1111
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 1112
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isAutomaticColumnModeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1116
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 1117
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    :cond_1
    return-object p0
.end method

.method private setSafeInsetMarginsForOrientation(IIIII)V
    .locals 2

    .line 884
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 885
    new-instance p1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p3, p3

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p1, p3, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 886
    new-instance p3, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p2, p2

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p3, p2, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 887
    new-instance p2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p4, p4

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p2, p4, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    const/4 p4, 0x1

    if-ne p5, p4, :cond_0

    .line 890
    iput-boolean p4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 891
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p4, p3}, Lcom/amazon/krf/platform/ViewSettings;->setLeftInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 892
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p3, p2}, Lcom/amazon/krf/platform/ViewSettings;->setRightInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 893
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, v0}, Lcom/amazon/krf/platform/ViewSettings;->setTopInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 894
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto :goto_0

    .line 896
    :cond_0
    iput-boolean p4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 897
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p4, p3}, Lcom/amazon/krf/platform/ViewSettings;->setLeftInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 898
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p3, p2}, Lcom/amazon/krf/platform/ViewSettings;->setRightInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 899
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, v0}, Lcom/amazon/krf/platform/ViewSettings;->setTopInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 900
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :goto_0
    return-void
.end method

.method private updateSpacingForDisplayMasks(Landroid/content/Context;)V
    .locals 4

    .line 1081
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1088
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v0

    .line 1089
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMinimumColumnSpacing(Landroid/content/Context;)I

    move-result v1

    .line 1090
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    .line 1091
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1093
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 1094
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getColumnGapSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p1

    .line 1096
    invoke-static {p1, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->measureValueEquals(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1097
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 1098
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setColumnGapSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_1
    return-void
.end method


# virtual methods
.method applyReadingRulerSettings(Z)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->isReadingRulerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    if-eqz p1, :cond_1

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V

    .line 235
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    return-void

    :catchall_0
    move-exception p1

    .line 235
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method applySettings()Z
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v4, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/rendering/KRIFView;->applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 213
    :goto_0
    iget-boolean v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v5, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/rendering/KRIFView;->applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 218
    :cond_1
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 219
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 220
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method createNewViewSettings()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v1}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 143
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v2}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 144
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 145
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to create newViewSettings objects when there are already pending settings changes!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLineSettings(I)Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1131
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    return-object p1

    .line 1133
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    return-object p1
.end method

.method getLineSettingsForCurrentOrientation()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1126
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getLineSettings(I)Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    return-object v0
.end method

.method public getMarginValue()F
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    return v0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    return v0
.end method

.method public getReadingRulerSettings()Lcom/amazon/krf/platform/ReadingRulerSettings;
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    return-object v0
.end method

.method getViewSettings()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/amazon/krf/platform/ViewSettings;",
            "Lcom/amazon/krf/platform/ViewSettings;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasStagedChanges()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method refreshLineSettings(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    .line 110
    new-instance v10, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/renderingmodule/R$array;->yj_page_margins_portrait:I

    .line 113
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextMarginsArrayId()I

    move-result v5

    sget v6, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_top_margin_portrait:I

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getPortraitHorizontalTextBottomMarginId()I

    move-result v7

    .line 116
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextLeftMarginId()I

    move-result v8

    .line 117
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextRightMarginId()I

    move-result v9

    move-object v1, v10

    move v3, v4

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;-><init>(Landroid/content/res/Resources;IIIIIII)V

    iput-object v10, v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    .line 118
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcom/amazon/kindle/renderingmodule/R$array;->yj_page_margins_landscape:I

    .line 121
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextMarginsArrayId()I

    move-result v15

    sget v16, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_top_margin_landscape:I

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getLandscapeHorizontalTextBottomMarginId()I

    move-result v17

    .line 124
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextLeftMarginId()I

    move-result v18

    .line 125
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextRightMarginId()I

    move-result v19

    move-object v11, v1

    move v13, v14

    invoke-direct/range {v11 .. v19}, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;-><init>(Landroid/content/res/Resources;IIIIIII)V

    iput-object v1, v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_0

    .line 651
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 652
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    goto :goto_0

    .line 656
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 657
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 656
    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    .line 668
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 670
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 673
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/theme/ColorTheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 674
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 675
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    .line 678
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/theme/ColorTheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 679
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 680
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    goto :goto_1

    .line 684
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v0

    .line 685
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v2

    .line 686
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getLinkColor()I

    move-result p1

    .line 689
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings;->getTextColor()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 690
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 691
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 692
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setTextColor(I)V

    .line 693
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setTextColor(I)V

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getBackgroundColor()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 697
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 698
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 699
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/ViewSettings;->setBackgroundColor(I)V

    .line 700
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/ViewSettings;->setBackgroundColor(I)V

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLinkColor()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 704
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 705
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 706
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLinkColor(I)V

    .line 707
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLinkColor(I)V

    :cond_6
    :goto_1
    return-object p0
.end method

.method public setColumnCount(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 5

    .line 1049
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 1051
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1057
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getOrientation()I

    move-result v3

    invoke-interface {v2, v3, v1, v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v0

    .line 1059
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-le p1, v3, :cond_1

    const/4 v2, 0x1

    .line 1066
    :cond_1
    invoke-direct {p0, v2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setAutoColumnMode(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_0

    .line 1070
    :cond_2
    invoke-direct {p0, v3}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setAutoColumnMode(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_0

    .line 1061
    :cond_3
    invoke-direct {p0, v2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setAutoColumnMode(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1075
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->updateSpacingForDisplayMasks(Landroid/content/Context;)V

    return-object p0
.end method

.method setContentDecorationSettings(Ljava/util/Collection;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            ">;)",
            "Lcom/amazon/kindle/rendering/KRIFSettingsControl;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 938
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getWordWiseEnabled()Z

    move-result v0

    .line 939
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 940
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 941
    sget-object v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    sget-object p1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    .line 944
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 945
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWiseEnabled(Z)V

    .line 946
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 947
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWiseEnabled(Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 949
    sget-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "word_wise_text_color"

    .line 952
    invoke-virtual {v0, v3}, Lcom/amazon/krf/platform/theme/ColorTheme;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 953
    sget-object v5, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 955
    invoke-virtual {v0, v3, v5}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    const-string v3, "word_wise_chevron_color"

    .line 956
    invoke-virtual {v0, v3, v5}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    .line 957
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 958
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    .line 959
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 960
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 964
    sget-object p1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 965
    sget-object p1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 966
    sget-object v3, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COUNTRY:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getWordWiseProperties()Lcom/amazon/krf/platform/WordWiseProperties;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 969
    invoke-virtual {v1}, Lcom/amazon/krf/platform/WordWiseProperties;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/amazon/krf/platform/WordWiseProperties;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 970
    :cond_4
    new-instance v1, Lcom/amazon/krf/platform/WordWiseProperties;

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/krf/platform/WordWiseProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 971
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 972
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWiseProperties(Lcom/amazon/krf/platform/WordWiseProperties;)V

    .line 973
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 974
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setWordWiseProperties(Lcom/amazon/krf/platform/WordWiseProperties;)V

    :cond_5
    return-object p0
.end method

.method public setContinuousScrollReflowableEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 306
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    .line 308
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    .line 312
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_1
    return-object p0
.end method

.method setDefaultFontFace(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 991
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 993
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v0

    .line 994
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1001
    :cond_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Helvetica"

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1007
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1008
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 1009
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultFontFace(Ljava/lang/String;)V

    .line 1011
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 1012
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultFontFace(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method setDimensions(II)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 1150
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 1154
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1155
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1157
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 1158
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, v0}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 1159
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 1160
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 1163
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result p2

    if-eq p2, v0, :cond_3

    .line 1164
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 1165
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 1166
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_3
    return-object p0
.end method

.method setFontSize(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSize()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    float-to-int v0, v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 269
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 271
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 272
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 273
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_0
    return-object p0
.end method

.method public setForceDisableJustification(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 553
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 555
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setForceDisableJustification(Z)V

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setForceDisableJustification(Z)V

    const/4 p1, 0x1

    .line 557
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 558
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    return-object p0
.end method

.method setKindleIllustratedAutoPlayAnimations(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 626
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getCanAutoplayAnimations()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 627
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 628
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setCanAutoplayAnimations(Z)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getCanAutoplayAnimations()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 632
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 633
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setCanAutoplayAnimations(Z)V

    :cond_1
    return-object p0
.end method

.method setKindleIllustratedSettings(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 602
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getIllustratedContentEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 603
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 604
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setIllustratedContentEnabled(Z)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getIllustratedContentEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 608
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 609
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setIllustratedContentEnabled(Z)V

    :cond_1
    return-object p0
.end method

.method public setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 424
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 425
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->isCurrentMaskColor(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/android/docviewer/LetterboxingColor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getKRFMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)I

    move-result p1

    .line 427
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setMaskColor(I)V

    .line 428
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setMaskColor(I)V

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 430
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_0
    return-object p0
.end method

.method setLineHeightFromFontIndex()Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->TAG:Ljava/lang/String;

    const-string v1, "Cannot set line height from font index calculateLineSpacingInDocViewer() is enabled"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 497
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v0

    .line 500
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 502
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 504
    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 505
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 506
    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getLineSettingsForCurrentOrientation()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result v0

    .line 512
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v0, v0

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, v0, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    return-object p0
.end method

.method setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 911
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 913
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->measureValueEquals(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 915
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->measureValueEquals(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 920
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_1
    return-object p0
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 13

    .line 738
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 740
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance p1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const/4 v0, 0x0

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p1, v0, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 743
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 744
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 745
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 746
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 747
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 748
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 749
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 750
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    return-object p0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    float-to-int v0, v0

    .line 755
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v1

    float-to-int v1, v1

    .line 756
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings;->getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    float-to-int v2, v2

    .line 757
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v3

    float-to-int v3, v3

    .line 759
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v4

    float-to-int v4, v4

    .line 760
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v5}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v5

    float-to-int v5, v5

    .line 761
    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v6}, Lcom/amazon/krf/platform/ViewSettings;->getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v6

    float-to-int v6, v6

    .line 762
    iget-object v7, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v7}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v7

    float-to-int v7, v7

    .line 764
    iget-object v8, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v8}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v8

    .line 765
    sget-object v9, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    const/4 v10, 0x1

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-ne v8, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_6

    .line 769
    iget-object v8, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v8}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLeftMarginValueForVerticalText()I

    move-result v8

    .line 770
    iget-object v9, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v9}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getRightMarginValueForVerticalText()I

    move-result v9

    .line 771
    iget-object v11, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v11, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result v11

    if-ne v0, v8, :cond_3

    if-ne v1, v9, :cond_3

    if-ne v2, v11, :cond_3

    if-eq v3, v11, :cond_4

    .line 777
    :cond_3
    iput-boolean v10, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 778
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v1, v8

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 779
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v2, v9

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 780
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v3, v11

    sget-object v8, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v3, v8}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 781
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 782
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 783
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 784
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 787
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLeftMarginValueForVerticalText()I

    move-result v0

    .line 788
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getRightMarginValueForVerticalText()I

    move-result v1

    .line 789
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    if-ne v4, v0, :cond_5

    if-ne v5, v1, :cond_5

    if-ne v6, p1, :cond_5

    if-eq v7, p1, :cond_c

    .line 795
    :cond_5
    iput-boolean v10, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 796
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v0, v0

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v0, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 797
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v1, v1

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, v1, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 798
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, p1, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 799
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 800
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 801
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 802
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto/16 :goto_2

    .line 807
    :cond_6
    iget-object v8, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v8, p1, v10}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result v8

    .line 808
    iget-object v9, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v9}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForHorizontalText()I

    move-result v9

    .line 809
    iget-object v11, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v11}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForHorizontalText()I

    move-result v11

    .line 811
    iget-object v12, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getContinuousScrollEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 812
    iget-object v9, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v9}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForContinuousScroll()I

    move-result v9

    .line 813
    iget-object v11, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v11}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForContinuousScroll()I

    move-result v11

    .line 817
    iget-object v12, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v12}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 818
    iget-object v12, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v12}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getMarginIncreaseForFastNav()I

    move-result v12

    add-int/2addr v8, v12

    :cond_7
    if-ne v0, v8, :cond_8

    if-ne v1, v8, :cond_8

    if-ne v2, v9, :cond_8

    if-eq v3, v11, :cond_9

    .line 826
    :cond_8
    iput-boolean v10, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 827
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v1, v8

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 828
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v2, v9

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 829
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v3, v11

    sget-object v8, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v3, v8}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 830
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 831
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v3, v0}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 832
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 833
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 836
    :cond_9
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v0, p1, v10}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    .line 837
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForHorizontalText()I

    move-result v0

    .line 838
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForHorizontalText()I

    move-result v1

    .line 840
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getContinuousScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 841
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForContinuousScroll()I

    move-result v0

    .line 842
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForContinuousScroll()I

    move-result v1

    .line 846
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v2}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 847
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getMarginIncreaseForFastNav()I

    move-result v2

    add-int/2addr p1, v2

    :cond_a
    if-ne v4, p1, :cond_b

    if-ne v5, p1, :cond_b

    if-ne v6, v0, :cond_b

    if-eq v7, v1, :cond_c

    .line 855
    :cond_b
    iput-boolean v10, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 856
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, p1, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 857
    new-instance p1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v0, v0

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p1, v0, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 858
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v1, v1

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, v1, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 859
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 860
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 861
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 862
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 866
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->updateSpacingForDisplayMasks(Landroid/content/Context;)V

    return-object p0
.end method

.method setMonospaceFontFace(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 1025
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 1028
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultMonospaceFontFace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1030
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 1031
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultMonospaceFontFace(Ljava/lang/String;)V

    .line 1033
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 1034
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultMonospaceFontFace(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 467
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 470
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getPageTransitionPluginStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 472
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 474
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setPageTransitionPluginStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    .line 475
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setPageTransitionPluginStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    :cond_0
    return-object p0
.end method

.method public setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 567
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    .line 568
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 570
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    return-object p0
.end method

.method public setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V
    .locals 2

    .line 357
    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/Color;->getRed()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/Color;->getBlue()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setReadingRulerEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isReadingRulerEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 323
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setReadingRulerEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setReadingRulerEnabled(Z)V

    :cond_0
    return-object p0
.end method

.method public setReadingRulerOpacity(F)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getOpacity()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setOpacity(F)V

    :cond_0
    return-void
.end method

.method public setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V
    .locals 2

    .line 366
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerNumberOfLinesType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getNumLinesInRuler()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 379
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setNumLinesInRuler(I)V

    :cond_2
    return-void
.end method

.method public setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V
    .locals 2

    .line 341
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$ksdk$presets$ReadingRulerStyleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 347
    sget-object p1, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_BANDED:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    goto :goto_0

    .line 343
    :cond_0
    sget-object p1, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_SOLID:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getStyle()Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 351
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerHasStagedChanges:Z

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->readingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setStyle(Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;)V

    :cond_1
    return-void
.end method

.method setSafeInsetMargins(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 12

    .line 877
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v3

    .line 878
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    .line 877
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSafeInsetMarginsForOrientation(IIIII)V

    .line 879
    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v7

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v8

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v9

    .line 880
    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v10

    const/4 v11, 0x2

    move-object v6, p0

    .line 879
    invoke-direct/range {v6 .. v11}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSafeInsetMarginsForOrientation(IIIII)V

    return-void
.end method

.method public setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 280
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 284
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    goto :goto_0

    .line 289
    :cond_1
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    :goto_0
    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setSectionLayoutMode(Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;)V

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    return-object p0
.end method

.method public setSelectionEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 582
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 584
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setSelectionEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setSelectionEnabled(Z)V

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 587
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    return-object p0
.end method

.method public setShowPageOnEnter(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 402
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getShowFullPageOnEnter()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 404
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 405
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnEnter(Z)V

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnEnter(Z)V

    :cond_0
    return-object p0
.end method

.method public setShowPageOnExit(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 414
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getShowFullPageOnExit()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 416
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 417
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnExit(Z)V

    .line 418
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnExit(Z)V

    :cond_0
    return-object p0
.end method

.method setTapRegionPercentage(F)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 1180
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 1182
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftTapRegionPercentage()F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getRightTapRegionPercentage()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftTapRegionPercentage(F)V

    .line 1184
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightTapRegionPercentage(F)V

    .line 1185
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftTapRegionPercentage()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getRightTapRegionPercentage()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftTapRegionPercentage(F)V

    .line 1190
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightTapRegionPercentage(F)V

    .line 1191
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_3
    return-object p0
.end method

.method public setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 2

    .line 521
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 523
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFSettingsControl$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$TextAlignment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 538
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getTextAlignment()Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    move-result-object p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->JUSTIFIED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    if-eq p1, v1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 540
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->JUSTIFIED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 541
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 542
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getTextAlignment()Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    move-result-object p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    if-eq p1, v1, :cond_1

    .line 527
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 529
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 530
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setTransitionDuration(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 385
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->ensureViewSettings()V

    .line 388
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getPanelTransitionDuration()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitHasStagedChanges:Z

    .line 390
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeHasStagedChanges:Z

    .line 392
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->portraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setPanelTransitionDuration(I)V

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->landscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setPanelTransitionDuration(I)V

    :cond_0
    return-object p0
.end method
