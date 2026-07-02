.class public Lcom/amazon/kindle/seekbar/SeekBarUtils;
.super Ljava/lang/Object;
.source "SeekBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLayers(Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    if-nez p2, :cond_0

    .line 61
    const-class p0, Lcom/amazon/kindle/seekbar/SeekBarUtils;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tried to populate the seekbar layers with a null context"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->clearLayers()V

    .line 68
    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerBackgroundForThumbnailScrubber;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    .line 69
    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 72
    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerSecondaryProgress;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->SECONDARY_PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 75
    new-instance v0, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/SeekBarLayerProgress;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;)V

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 78
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    .line 81
    new-instance v1, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;

    invoke-direct {v1, p2, v0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerWaypoints;-><init>(Landroid/content/Context;Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Z)V

    .line 83
    sget-object p1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->WAYPOINT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {p1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 84
    sget-object p1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->THUMB_SNAP_EFFECT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {p1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addThumbSnapEffectLayer(Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;F)V

    .line 88
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_thumb_radius:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 89
    new-instance p3, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;

    invoke-direct {p3, p2, p0, p1}, Lcom/amazon/kindle/seekbar/SeekBarLayerKnob;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;F)V

    .line 90
    sget-object p2, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {p2}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setThumbRadius(F)V

    return-void
.end method

.method public static initLayersForVerticalSeekBar(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V
    .locals 2

    if-nez p2, :cond_0

    .line 105
    const-class p0, Lcom/amazon/kindle/seekbar/SeekBarUtils;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tried to populate the seek bar layers with a null context"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->clearLayers()V

    .line 112
    new-instance v0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerContrastBackground;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    .line 113
    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->CONTRAST_BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 116
    new-instance v0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerBackground;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerBackground;-><init>(Landroid/content/Context;Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    .line 117
    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->BACKGROUND_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 120
    new-instance v0, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerProgress;

    invoke-direct {v0, p2, p0}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerProgress;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;)V

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->PROGRESS_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 123
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v1, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerWaypoints;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)V

    .line 126
    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->WAYPOINT_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {v0}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 130
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->vertical_seekbar_knob:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 131
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    .line 132
    new-instance v1, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;

    invoke-direct {v1, p2, p0, p1}, Lcom/amazon/kindle/seekbar/VerticalSeekBarLayerKnob;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 133
    sget-object p1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-static {p1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->access$000(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V

    .line 134
    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setThumbRadius(F)V

    return-void
.end method
