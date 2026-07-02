.class public Lcom/amazon/kindle/pagecurl/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;
    }
.end annotation


# direct methods
.method public static interpolate(Lcom/amazon/kindle/pagecurl/CurledPageState;)Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;
    .locals 12

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 22
    new-instance v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    invoke-direct {v2}, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;-><init>()V

    long-to-float v3, v0

    .line 23
    iget-wide v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    long-to-float v6, v4

    iget v7, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    add-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_0

    .line 24
    iget-object v3, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 25
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 27
    :cond_0
    iget-object v3, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iput v8, v3, Landroid/graphics/PointF;->x:F

    .line 28
    iget v9, v6, Landroid/graphics/PointF;->y:F

    iput v9, v3, Landroid/graphics/PointF;->y:F

    sub-long v4, v0, v4

    long-to-double v4, v4

    float-to-double v10, v7

    div-double/2addr v4, v10

    double-to-float v4, v4

    .line 31
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    mul-float v7, v7, v4

    add-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/PointF;->x:F

    .line 32
    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v4

    add-float/2addr v9, v5

    iput v9, v3, Landroid/graphics/PointF;->y:F

    .line 35
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animator - Interpolate - new position calculated  animationTargetEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " endDragingPositionCalculated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 38
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startDragingPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 39
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animationSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    .line 40
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animationTarget:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    .line 41
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animationCurrentTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " animationStartTime:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public static rectifyTrajectoryLinearly(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;
    .locals 7

    .line 54
    new-instance p3, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;

    invoke-direct {p3}, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;-><init>()V

    .line 55
    iget-object p4, p3, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object p4, p4, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v0, p5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p4, Landroid/graphics/PointF;->x:F

    .line 56
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iput v1, p4, Landroid/graphics/PointF;->y:F

    .line 57
    iget-object v1, p3, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedStartDrag:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 58
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 61
    iget-object v2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v2, v3, :cond_0

    .line 63
    iget-object v2, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object p2, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object p2, p2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, v5, p2

    div-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    mul-float v3, v3, v0

    add-float/2addr v3, v4

    iput v3, p4, Landroid/graphics/PointF;->y:F

    .line 64
    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 65
    iget p2, v2, Landroid/graphics/PointF;->y:F

    iput p2, v1, Landroid/graphics/PointF;->y:F

    .line 69
    :cond_0
    iget-object p1, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object p2, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, p2, :cond_1

    .line 71
    iget-object p1, p3, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object p1, p1, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget p4, p2, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, p0

    div-float/2addr p4, v2

    iget-object p5, p5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget p5, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p5, p0

    mul-float p4, p4, p5

    add-float/2addr p4, v0

    iput p4, p1, Landroid/graphics/PointF;->y:F

    .line 72
    iget-object p0, p3, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedStartDrag:Landroid/graphics/PointF;

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 73
    iget p1, p2, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object p3
.end method
