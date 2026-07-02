.class public Lcom/amazon/kindle/speedreading/SnappableScrubberBar;
.super Landroid/widget/SeekBar;
.source "SnappableScrubberBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isPressed:Z

.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private rangeEnd:I

.field private rangeStart:I

.field private snappingThresh:F

.field private speedBumpRadius:F

.field private speedBumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method private drawSpeedBumpOnProgressBar(Landroid/graphics/Canvas;FF)V
    .locals 7

    .line 270
    iget v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->speedBumpRadius:F

    sub-float v2, p2, v0

    sub-float v3, p3, v0

    add-float v4, p2, v0

    add-float v5, p3, v0

    iget-object v6, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findSnapCandidate(F)I
    .locals 7

    .line 225
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getSpeedBumps()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 229
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v5, v4

    .line 232
    invoke-direct {p0, v5}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getXForSpeedBump(F)F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    sub-float v5, p1, v5

    .line 236
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_0

    .line 237
    iget v6, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->snappingThresh:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    move v1, v4

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getPositionFromProgress(I)I
    .locals 1

    .line 81
    iget v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->rangeStart:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getProgressFromPosition(I)I
    .locals 1

    .line 91
    iget v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->rangeStart:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private getSpeedBumps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->speedBumps:Ljava/util/List;

    return-object v0
.end method

.method private getXForSpeedBump(F)F
    .locals 5

    .line 280
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 281
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 284
    iget v2, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->rangeStart:I

    iget v3, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->rangeEnd:I

    if-eq v2, v3, :cond_0

    int-to-float v4, v2

    sub-float/2addr p1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float v2, v1, v0

    mul-float p1, p1, v2

    add-float/2addr p1, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    :cond_2
    return p1
.end method

.method private snap(F)Z
    .locals 2

    .line 197
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->findSnapCandidate(F)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getProgressFromPosition(I)I

    move-result p1

    .line 202
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 206
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 99
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getPositionFromProgress(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPressed()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->isPressed:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 116
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 118
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getSpeedBumps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 127
    invoke-direct {p0, v3}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getXForSpeedBump(F)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 131
    invoke-direct {p0, p1, v3, v0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->drawSpeedBumpOnProgressBar(Landroid/graphics/Canvas;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->isPressed:Z

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->snap(F)Z

    move-result v2

    goto :goto_0

    .line 157
    :cond_2
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->isPressed:Z

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->snap(F)Z

    move-result v2

    goto :goto_0

    .line 145
    :cond_3
    iput-boolean v3, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->isPressed:Z

    :goto_0
    if-eqz v2, :cond_5

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getProgress()I

    move-result v4

    invoke-interface {v0, p0, v4, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 184
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 186
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return v2
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 71
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->getProgressFromPosition(I)I

    move-result p1

    .line 107
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setSpeedBumps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/SnappableScrubberBar;->speedBumps:Ljava/util/List;

    return-void
.end method
