.class Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;
.super Ljava/lang/Object;
.source "CurledPageStateContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;,
        Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$CurledPageStateIterator;
    }
.end annotation


# static fields
.field private static final BUFFER_BETWEEN_PAGES:F = 0.05f


# instance fields
.field private curledPageCount:I

.field private curledPageStateToRecycle:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/pagecurl/CurledPageState;",
            ">;"
        }
    .end annotation
.end field

.field private final glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

.field private mCurledPage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/pagecurl/CurledPageState;",
            ">;"
        }
    .end annotation
.end field

.field private modCount:I

.field private selfAnimatedPageCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 77
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    .line 78
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)Ljava/util/Vector;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    return p0
.end method

.method private updatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p3

    .line 523
    sget-object v16, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 524
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curled Page Container - Update position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v2, " is "

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 532
    iget-object v4, v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 533
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Curled Page Container - Update position - Previous page of:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curled Page Container - Update position - There is no previous page to page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_2
    move-object v4, v3

    .line 539
    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 540
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 541
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curled Page Container - Update position - Next page of:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    move-object v3, v1

    goto :goto_1

    .line 544
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curled Page Container - Update position - There is no next page to page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 549
    :cond_6
    :goto_1
    iget-boolean v1, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    const/4 v14, 0x0

    if-nez v1, :cond_b

    const v1, 0x3d4ccccd    # 0.05f

    if-eqz v4, :cond_8

    .line 550
    iget-object v2, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    .line 551
    iget-boolean v2, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    if-nez v2, :cond_a

    .line 552
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curled Page Container - Update position - Collision detected with curled previous page:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 554
    :cond_7
    iget-object v2, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v5, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v5, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_a

    .line 556
    iget-object v2, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_a

    .line 557
    iget-boolean v2, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    if-nez v2, :cond_a

    .line 558
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curled Page Container - Update position - Collision detected with curled next page:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 560
    :cond_9
    iget-object v2, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v5, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v5, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/PointF;->x:F

    :cond_a
    :goto_2
    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    .line 564
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/pagecurl/Animator;->rectifyTrajectoryLinearly(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;

    move-result-object v1

    .line 565
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v3, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 566
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 567
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v1, v1, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedStartDrag:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 568
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v2, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    .line 570
    :goto_3
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 571
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v9, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v10, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v11, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-interface/range {v8 .. v14}, Lcom/amazon/kindle/pagecurl/IMesh;->updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    const-string v1, "ERROR !!! We should not have a left and right page curled at the same time. This is not supported for now !!!!"

    const-string v2, "Curled Page Container - Update position - setting the back visibility of the page "

    const-string v5, "Curled Page Container - Update position - setting the front visibility of the page "

    const-string v13, " to invisible"

    if-eqz v4, :cond_17

    .line 576
    iget-object v8, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v8, v8, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_c

    iget-object v8, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v9, v8

    if-gtz v8, :cond_17

    iget-object v8, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v9, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v8, v9, :cond_17

    .line 578
    :cond_c
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curled Page Container - Update position - Collision detected with curled previous page which require merging. Previous page:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curled Page Container - Update position - Merging current page (Mesh count:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") with previous page (Mesh count:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 586
    :cond_d
    iget-object v3, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v3, v6, :cond_f

    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v15, v3, :cond_e

    goto :goto_4

    .line 591
    :cond_e
    iget-object v3, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v3, v14}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 592
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 587
    :cond_f
    :goto_4
    iget-object v3, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v3, v14}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 588
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_10
    :goto_5
    const/4 v3, 0x0

    .line 596
    :goto_6
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 597
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iget-object v6, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v5, v6, :cond_12

    .line 598
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_7

    .line 599
    :cond_11
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 600
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_12
    sget-object v16, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 609
    :goto_7
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v5, v6, :cond_14

    sget-object v5, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v15, v5, :cond_13

    goto :goto_8

    .line 614
    :cond_13
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v5, v14}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 615
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 610
    :cond_14
    :goto_8
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v5, v14}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 611
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 618
    :cond_15
    :goto_9
    iget-object v5, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v9, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v10, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v11, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-object/from16 v12, p3

    move-object v5, v13

    move-object/from16 v13, p4

    const/4 v6, 0x0

    move-object/from16 v14, p5

    invoke-interface/range {v8 .. v14}, Lcom/amazon/kindle/pagecurl/IMesh;->updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v3, v3, 0x1

    move-object v13, v5

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 622
    :cond_16
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto/16 :goto_11

    :cond_17
    move-object v14, v13

    const/4 v13, 0x0

    if-eqz v3, :cond_23

    .line 626
    iget-object v8, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v8, v8, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_18

    iget-object v8, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_23

    iget-object v8, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v9, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v8, v9, :cond_23

    .line 628
    :cond_18
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "Curled Page Container - Update position - Merging current page with previous page"

    .line 629
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curled Page Container - Update position - Collision detected with curled previous page which require merging. Next page"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 636
    :cond_19
    iget-object v4, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v4, v6, :cond_1b

    sget-object v4, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v15, v4, :cond_1a

    goto :goto_a

    .line 641
    :cond_1a
    iget-object v4, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v4, v13}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 642
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 637
    :cond_1b
    :goto_a
    iget-object v4, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v4, v13}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 638
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 646
    :cond_1c
    :goto_b
    iget-object v4, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iget-object v6, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v4, v6, :cond_1e

    .line 647
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_c

    .line 648
    :cond_1d
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 649
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_1e
    sget-object v1, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-object/from16 v16, v1

    .line 655
    :goto_c
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_22

    .line 659
    iget-object v4, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v4, v6, :cond_20

    sget-object v4, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v15, v4, :cond_1f

    goto :goto_e

    .line 664
    :cond_1f
    iget-object v4, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v4, v13}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 665
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 660
    :cond_20
    :goto_e
    iget-object v4, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v4, v13}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 661
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 668
    :cond_21
    :goto_f
    iget-object v4, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v13}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 670
    iget-object v4, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v9, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v10, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v11, v3, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-object/from16 v12, p3

    const/16 v17, 0x0

    move-object/from16 v13, p4

    move-object v4, v14

    move-object/from16 v14, p5

    invoke-interface/range {v8 .. v14}, Lcom/amazon/kindle/pagecurl/IMesh;->updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, -0x1

    move-object v14, v4

    const/4 v13, 0x0

    goto/16 :goto_d

    .line 673
    :cond_22
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_11

    :cond_23
    const/16 v17, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    .line 675
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/pagecurl/Animator;->rectifyTrajectoryLinearly(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurledPageState;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;

    move-result-object v1

    .line 676
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v3, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 677
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v1, v1, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedStartDrag:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v1, 0x0

    .line 679
    :goto_10
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 680
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v9, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v10, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v11, v7, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-interface/range {v8 .. v14}, Lcom/amazon/kindle/pagecurl/IMesh;->updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    :goto_11
    return-object v16
.end method


# virtual methods
.method public addCurledPageForPointerID(ILcom/amazon/kindle/pagecurl/CurledPageState;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 158
    iget-object v0, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 159
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - WARNING !! A page with a number of mesh different from 1 can\'t be added into the Page container"

    .line 160
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 161
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 165
    :cond_1
    :goto_0
    iput p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    .line 167
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 168
    iget-object p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 169
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - Adding a page at the beginning of the curled page vector"

    .line 170
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 172
    :cond_3
    iget-object p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 173
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - WARNING !! The new page front index is contained within the first curled or self animated page. Should not happend"

    .line 174
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 175
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 177
    :cond_5
    iget-object p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    if-le p1, v0, :cond_7

    .line 178
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - Adding a page at the end of the curled page vector"

    .line 179
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 181
    :cond_7
    iget-object p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    if-le p1, v0, :cond_9

    .line 182
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - WARNING !! The new page front index is contained within the last curled or self animated page. Should not happend"

    .line 183
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 184
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/4 p1, 0x1

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    iget-object v2, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v2

    if-le v0, v2, :cond_b

    .line 190
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curled Page Container - Add Curled Page State For PointerID - Adding a page in the curled page vector at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    .line 195
    :cond_b
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    iget-object v2, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v2

    if-le v0, v2, :cond_d

    .line 196
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - WARNING !! The new page front index is contained within a curled or self animated merged page. Should not happend"

    .line 197
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 198
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 205
    :cond_e
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "Curled Page Container - Add Curled Page State For PointerID - Adding the first curled or self animated page in the curled page vector"

    .line 206
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 207
    :cond_f
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_10
    :goto_3
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    .line 211
    iget-boolean p1, p2, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    if-eqz p1, :cond_11

    .line 212
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    goto :goto_4

    .line 214
    :cond_11
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 216
    :goto_4
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Curled Page Container - Add Curled Page State For PointerID - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public animateCurledPage(Lcom/amazon/kindle/pagecurl/CurledPageState;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 290
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Animate Curled Page - Animating curled page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 294
    iput v0, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    const/4 v1, 0x1

    .line 295
    iput-boolean v1, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    .line 297
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, v0, :cond_1

    .line 298
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 299
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    .line 300
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Curled Page Container - Animate Curled Page - ERROR ! we are trying to update a state which is not present in the vector"

    .line 303
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 305
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curled Page Container - Animate Curled Page - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public animationUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 6

    .line 467
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/Animator;->interpolate(Lcom/amazon/kindle/pagecurl/CurledPageState;)Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    move-result-object v2

    .line 468
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Update position - self updating position of page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurledPageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 470
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->updatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object p1

    return-object p1
.end method

.method public clearAll()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->clearCurledPageState()V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->clearRecycledState()V

    return-void
.end method

.method public clearCurledPageState()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 223
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Clear Curled Pages - Clearing all pages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 227
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 229
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    return-void
.end method

.method public clearRecycledState()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 281
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Clear Recycle Page Vector - clearing recycle vector (size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 101
    iget-object v3, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, v3, :cond_0

    .line 102
    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curled Page Container - Compute ongoing Curl - There is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoing curled or self animated pages on side "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public countToString()Ljava/lang/String;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of ongoing curl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Number of selft animated curl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 6

    .line 498
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/Animator;->interpolate(Lcom/amazon/kindle/pagecurl/CurledPageState;)Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    move-result-object v2

    .line 499
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Update position - Ending updating position of page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurledPageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->updatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object p2

    .line 504
    iget-object p3, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 505
    iget-object p4, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p4

    const/4 v0, 0x1

    if-le p4, v0, :cond_4

    sget-object p4, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    if-ne p2, p4, :cond_4

    const-string p4, "Page at position "

    const-string v1, "Curled Page Container - End Update position - ERROR !!!! Page at position "

    const-string v2, " ("

    if-lez p3, :cond_2

    .line 506
    iget-object v3, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v4, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v3, v4, :cond_2

    .line 507
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 508
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") can\'t settle while there is previous page still curled"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 509
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") can settle while there is previous page still curled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p3, v3, :cond_4

    iget-object v0, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v0, v3, :cond_4

    .line 512
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 513
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") can\'t settle while there is next page still curled"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 514
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") can settle while there is next page still curled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return-object p2
.end method

.method public getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 142
    iget v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    if-ne v2, p1, :cond_0

    .line 143
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curled Page Container - Get Page State For PointerID - Found a page for the pointer ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", so returning it."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCurledPageIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/pagecurl/CurledPageState;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Get Curled Page Iterator - returning curled page iterator, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 356
    :cond_0
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$2;-><init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V

    return-object v0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/pagecurl/CurledPageState;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Get Page Iterator - returing a global page iterator, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 337
    :cond_0
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$1;-><init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V

    return-object v0
.end method

.method public getLastCurledPage()Lcom/amazon/kindle/pagecurl/CurledPageState;
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 435
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getNewCurledPageState()Lcom/amazon/kindle/pagecurl/CurledPageState;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 266
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - Get curled page state - Recycling a page state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from the recycling bin. Whoohoo !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 271
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    invoke-direct {v0}, Lcom/amazon/kindle/pagecurl/CurledPageState;-><init>()V

    .line 272
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - Get curled page state - Creating a new curled page ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") state beuhhh !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getOrCreateCurledPageState(I)Lcom/amazon/kindle/pagecurl/CurledPageState;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getNewCurledPageState()Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    .line 132
    iput p1, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    :cond_0
    return-object v0
.end method

.method public getSelfAnimatedPageIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/pagecurl/CurledPageState;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Get Self Animated Page Iterator - returning selft animated page iterator, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 379
    :cond_0
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$3;-><init>(Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;)V

    return-object v0
.end method

.method public recycle(Lcom/amazon/kindle/pagecurl/CurledPageState;)V
    .locals 2

    .line 240
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - recycle page - recycling page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 245
    iget-boolean v0, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    goto :goto_0

    .line 248
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 251
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    .line 257
    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurledPageState;->clear()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageStateToRecycle:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    .line 253
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    const-string v0, "Curled Page Container - recycle page - WARNING !!!!! trying to recycle a state which is not in any of the internal vector"

    if-eqz p1, :cond_3

    .line 254
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 2

    .line 483
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Update position - Scroll updating position of page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurledPageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 485
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->updatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object p1

    return-object p1
.end method

.method public startUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 2

    .line 453
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Update position - Starting updating position of page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurledPageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 455
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->updatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object p1

    return-object p1
.end method

.method public stopAnimatingPage(Lcom/amazon/kindle/pagecurl/CurledPageState;I)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 311
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curled Page Container - Stop Animate Page - Stop animating curled page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 314
    :cond_0
    iput p2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    const/4 p2, 0x0

    .line 315
    iput-boolean p2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    .line 317
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->mCurledPage:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    .line 318
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->selfAnimatedPageCount:I

    .line 319
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->curledPageCount:I

    .line 320
    iget p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->modCount:I

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Curled Page Container - Animate Curled Page - ERROR ! we are trying to update a state which is not present in the vector"

    .line 323
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 326
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Curled Page Container - Animate Curled Page - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
