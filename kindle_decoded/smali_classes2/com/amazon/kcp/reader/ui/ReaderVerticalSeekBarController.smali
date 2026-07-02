.class public final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;
.super Ljava/lang/Object;
.source "ReaderVerticalSeekBarController.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ReaderVerti\u2026arController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->TAG:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public final getOverlayAnimators(ZZJ)[Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-wide/from16 v6, p3

    .line 159
    iget-object v4, v0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v4, :cond_1

    const/4 v1, 0x3

    new-array v9, v1, [Landroid/animation/Animator;

    .line 165
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v2, 0x64

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 168
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v5, 0xff

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v8, 0x0

    if-nez p1, :cond_0

    .line 171
    iput v8, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 174
    iput v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 177
    :goto_0
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getAlphaLayers()Ljava/util/TreeMap;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [I

    aput v2, v12, v8

    .line 181
    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v13, 0x1

    aput v2, v12, v13

    .line 180
    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v12, "contrastBackgroundAnimator"

    .line 182
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    new-instance v12, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;

    invoke-direct {v12, v10, v1, v4}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$1$1;-><init>(Ljava/util/TreeMap;Lkotlin/jvm/internal/Ref$IntRef;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v2, v9, v8

    new-array v1, v11, [I

    aput v5, v1, v8

    .line 197
    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aput v2, v1, v13

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-string v1, "animator"

    .line 198
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    new-instance v12, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;

    move-object v1, v12

    move-object v2, v10

    move v5, p1

    move-wide/from16 v6, p3

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getOverlayAnimators$$inlined$let$lambda$1;-><init>(Ljava/util/TreeMap;Lkotlin/jvm/internal/Ref$IntRef;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;ZJZ)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v11, v9, v13

    return-object v9

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getSeekBar()Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    return-object v0
.end method

.method public final getSeekBarCoordinateValues(I)Landroid/graphics/Point;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getSeekBarCoordinateValues(I)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getSeekBarTop()Ljava/lang/Integer;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSeekBarWidth()Ljava/lang/Integer;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized getThumbAnimator(ZLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "animatorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbAnimator visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getAlphaLayers()Ljava/util/TreeMap;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v3}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0xff

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 118
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thumbLayer current alpha: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " endAlpha: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {v2}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->getAlpha()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v5, v1, v4

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 124
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v3, "thumbAnimator"

    .line 125
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$integer;->thumb_show_hide_animation_duration:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance v3, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;

    invoke-direct {v3, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$1$1;-><init>(Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController$getThumbAnimator$$inlined$let$lambda$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;ZLandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-object v1

    .line 121
    :cond_5
    :goto_3
    monitor-exit p0

    return-object v1

    .line 149
    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "readerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method

.method public final isTouchInsideSeekBar(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->clearLayers()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->clearOnSeekBarChangeListeners()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onDestroy()V

    :cond_2
    return-void
.end method

.method public final onLayoutChange(IIII)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->cs_vertical_seek_bar_right_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p3, v0

    .line 51
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p3, v0

    .line 52
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/widget/SeekBar;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method

.method public final setSeekBarToNormalState()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setMinVisibleLayerIndex(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)V

    :cond_0
    return-void
.end method

.method public final setSeekBarToThumbState()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_1

    .line 239
    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setMinVisibleLayerIndex(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)V

    .line 240
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getAlphaLayers()Ljava/util/TreeMap;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 241
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public final updateSeekBarProgress(IZ)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSeekBarProgress progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oldProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->seekBar:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setProgressWithAnimation(IZ)V

    :cond_2
    return-void
.end method
