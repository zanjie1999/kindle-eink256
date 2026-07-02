.class public Lcom/amazon/kindle/nln/NlnTransitionManager;
.super Ljava/lang/Object;
.source "NlnTransitionManager.java"

# interfaces
.implements Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final magicLutzInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private animatingPageContainer:Landroid/view/ViewGroup;

.field protected animatingRecyclerViewPage:Landroid/view/View;

.field protected cachedViewBackground:Landroid/graphics/drawable/Drawable;

.field protected choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

.field protected destroyed:Z

.field protected fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

.field protected final mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field protected final thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

.field private transitionAnimationPending:Z

.field private transitionInPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private transitionPage:Lcom/amazon/kindle/nln/IThumbnailPage;

.field protected transitionPagePadding:Landroid/graphics/Rect;

.field private transitionView:Landroid/view/View;

.field protected transitioningPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/kindle/nln/NlnTransitionManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/amazon/kindle/nln/NlnTransitionManager$1;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/NlnTransitionManager$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionAnimationPending:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    .line 81
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No docViewer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateSidekickPageIn(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 407
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_2

    .line 408
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 417
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v2, p3

    const-wide/16 v3, 0xc8

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 422
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 423
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getTransitionPagePadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 424
    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .line 425
    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    .line 426
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x0

    aget v5, p3, v5

    sub-int/2addr v6, v5

    .line 427
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    add-float/2addr v0, v7

    float-to-int v0, v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    sub-int/2addr p2, p3

    .line 428
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    float-to-int p3, p3

    .line 429
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 431
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleX(F)V

    .line 432
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    .line 433
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6, p3, v1, v7}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result p3

    invoke-virtual {v5, p3}, Landroid/view/View;->setPivotX(F)V

    .line 434
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, v2, v7}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setPivotY(F)V

    .line 435
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    long-to-float p2, v3

    .line 437
    sget p3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float p2, p2, p3

    float-to-long p2, p2

    .line 439
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 442
    sget-boolean v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v1, :cond_1

    .line 443
    sget-object v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    const-string v2, "Sidekick Page"

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    const/high16 v0, 0x43480000    # 200.0f

    .line 446
    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v1, v1, v0

    float-to-long v0, v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->animateDecoratorsIn(JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private animateTransitionPage(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    .line 268
    iget-object v4, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getAnimatingPageContainer()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v4, :cond_e

    .line 270
    iget-boolean v6, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-nez v6, :cond_e

    if-nez v5, :cond_0

    goto/16 :goto_a

    .line 274
    :cond_0
    iget-object v6, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    if-eqz v2, :cond_d

    if-nez v6, :cond_1

    goto/16 :goto_9

    .line 280
    :cond_1
    iget-object v7, v6, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v8, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v10, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 282
    :goto_0
    iget-object v8, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v8, v6, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v11, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq v8, v11, :cond_3

    iget-object v8, v6, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->originMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq v8, v11, :cond_3

    const/4 v8, 0x4

    .line 287
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_3
    iput-object v2, v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    .line 291
    invoke-virtual {v6, v2}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->setPrimaryAnimatingPage(Landroid/view/View;)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 293
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    if-eqz v7, :cond_4

    move-object v11, v3

    goto :goto_1

    :cond_4
    move-object v11, v0

    .line 296
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v12

    .line 297
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v12

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    iget v14, v12, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    iget v15, v12, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    iget v8, v12, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float/2addr v15, v8

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    div-float/2addr v8, v12

    div-float v12, v15, v13

    .line 304
    invoke-virtual {v6, v12}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->setPageScale(F)V

    if-eqz v7, :cond_5

    const-wide/16 v16, 0xc8

    goto :goto_2

    :cond_5
    const-wide/16 v16, 0x12c

    :goto_2
    move-wide/from16 v18, v16

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getAnimatingPageContainer()Landroid/view/ViewGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/view/View;

    const/4 v9, 0x2

    move/from16 v20, v12

    new-array v12, v9, [I

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    check-cast v6, Landroid/view/View;

    new-array v9, v9, [I

    .line 317
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 318
    invoke-virtual {v10, v12}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v6, :cond_6

    .line 325
    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 328
    :cond_6
    iget v6, v0, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x0

    aget v16, v12, v10

    sub-int v6, v6, v16

    .line 329
    iget v10, v0, Landroid/graphics/Rect;->top:I

    const/16 v17, 0x1

    aget v21, v12, v17

    sub-int v10, v10, v21

    move-object/from16 v21, v4

    .line 330
    iget v4, v3, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget v23, v12, v16

    sub-int v4, v4, v23

    move/from16 v23, v8

    .line 331
    iget v8, v3, Landroid/graphics/Rect;->top:I

    aget v12, v12, v17

    sub-int/2addr v8, v12

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getTransitionPagePadding()Landroid/graphics/Rect;

    move-result-object v12

    move/from16 v24, v8

    .line 334
    iget v8, v12, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move/from16 v25, v4

    .line 335
    iget v4, v12, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    if-eqz v7, :cond_7

    div-float v26, v13, v15

    move/from16 v30, v26

    move/from16 v26, v15

    move/from16 v15, v30

    goto :goto_3

    :cond_7
    move/from16 v26, v15

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_3
    if-eqz v7, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    move/from16 v1, v20

    .line 338
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v20, v10

    .line 339
    iget v10, v12, Landroid/graphics/Rect;->top:I

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    int-to-float v10, v10

    .line 340
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    sub-float v11, v2, v10

    mul-float v10, v10, v15

    mul-float v10, v10, v1

    add-float/2addr v10, v11

    if-eqz v7, :cond_9

    div-float v11, v10, v2

    goto :goto_5

    :cond_9
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_5
    if-eqz v7, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    div-float v7, v10, v2

    .line 346
    :goto_6
    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float v27, v8, v15

    const/high16 v28, 0x3f000000    # 0.5f

    move/from16 v29, v2

    add-float v2, v27, v28

    float-to-int v2, v2

    add-int/2addr v12, v2

    const/4 v2, 0x0

    aget v27, v9, v2

    sub-int v12, v12, v27

    .line 347
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    mul-float v4, v2, v11

    add-float v4, v4, v28

    float-to-int v4, v4

    add-int/2addr v0, v4

    const/4 v4, 0x1

    aget v27, v9, v4

    sub-int v4, v0, v27

    .line 348
    iget v0, v3, Landroid/graphics/Rect;->left:I

    mul-float v8, v8, v1

    add-float v8, v8, v28

    float-to-int v8, v8

    add-int/2addr v0, v8

    const/4 v8, 0x0

    aget v27, v9, v8

    sub-int v8, v0, v27

    .line 349
    iget v0, v3, Landroid/graphics/Rect;->top:I

    mul-float v2, v2, v7

    add-float v2, v2, v28

    float-to-int v2, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    aget v3, v9, v2

    sub-int v2, v0, v3

    .line 351
    invoke-virtual {v5, v13}, Landroid/view/View;->setScaleX(F)V

    .line 352
    invoke-virtual {v5, v14}, Landroid/view/View;->setScaleY(F)V

    int-to-float v0, v6

    .line 353
    invoke-virtual {v5, v0}, Landroid/view/View;->setX(F)V

    move/from16 v0, v20

    int-to-float v0, v0

    .line 354
    invoke-virtual {v5, v0}, Landroid/view/View;->setY(F)V

    const/4 v0, 0x0

    .line 355
    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotX(F)V

    .line 356
    invoke-virtual {v5, v0}, Landroid/view/View;->setPivotY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 357
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v3, p1

    .line 359
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    .line 361
    :try_start_0
    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v1

    move v6, v11

    :goto_7
    move-object/from16 v1, p0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 363
    sget-object v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid parentStartScaleY value. The value of parentStartScaleY was "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v9, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v10, Lcom/amazon/kindle/nln/NlnTransitionManager;->TAG:Ljava/lang/String;

    const-string v11, "AmazonKindle"

    invoke-direct {v9, v11, v10}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 367
    invoke-virtual {v9, v10}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v9

    .line 368
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v10, "InvalidParentStartScaleYValue"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v6

    sget-object v9, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 369
    invoke-virtual {v6, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v6

    .line 365
    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 371
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    move v9, v1

    goto :goto_7

    .line 373
    :goto_8
    invoke-virtual {v1, v12, v8, v15, v9}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 374
    invoke-virtual {v1, v4, v2, v6, v7}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    move-wide/from16 v10, v18

    long-to-float v0, v10

    .line 376
    sget v2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v0, v0, v2

    float-to-long v10, v0

    .line 378
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move/from16 v4, v25

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move/from16 v8, v24

    int-to-float v2, v8

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move/from16 v15, v26

    .line 379
    invoke-virtual {v0, v15}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move/from16 v8, v23

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 380
    sget-boolean v2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v2, :cond_b

    .line 381
    sget-object v2, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_b
    const-string v2, "Transition Page"

    move-object/from16 v4, v22

    .line 383
    invoke-virtual {v1, v0, v4, v2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 388
    sget-boolean v2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v2, :cond_c

    .line 389
    sget-object v2, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_c
    const-string v2, "Animating Recycler View"

    .line 391
    invoke-virtual {v1, v0, v4, v2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    move-object/from16 v2, v21

    .line 393
    iget-object v0, v2, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    const/high16 v2, 0x43480000    # 200.0f

    .line 394
    sget v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v3, v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v2, v3, v10, v11}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->animateDecoratorsIn(JJ)V

    return-void

    .line 277
    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->finishTransition()Landroid/view/ViewPropertyAnimator;

    :cond_e
    :goto_a
    return-void
.end method

.method private computeRectForPage(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 509
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 514
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    const/4 v0, 0x0

    .line 515
    aget v2, v1, v0

    iput v2, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 516
    aget v3, v1, v2

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 519
    aget v0, v1, v0

    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v3

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 520
    aget v0, v1, v2

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_1
    return-void
.end method

.method private disposeTransitionView()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->disposeUnmanagedView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private findPageViewInDirection(Landroid/view/View;I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;
    .locals 5

    .line 682
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 683
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    .line 688
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be 1 or -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 692
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    :cond_3
    add-int/2addr p1, p2

    if-ltz p1, :cond_4

    .line 694
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 695
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 696
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 697
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 698
    check-cast v2, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    return-object v2

    :cond_4
    :goto_1
    return-object v1
.end method

.method private findViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Landroid/view/View;
    .locals 6

    .line 707
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 708
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 712
    :cond_0
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    .line 713
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 714
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 715
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 716
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 717
    check-cast v3, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 718
    invoke-virtual {v3}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 719
    invoke-interface {v4}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 720
    invoke-virtual {v3}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getAnimatingPageContainer()Landroid/view/ViewGroup;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 730
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingPageContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 735
    sget v1, Lcom/amazon/kindle/krl/R$id;->animate_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingPageContainer:Landroid/view/ViewGroup;

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingPageContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getTransitionPagePadding()Landroid/graphics/Rect;
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 761
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 762
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPagePadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 767
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPagePadding:Landroid/graphics/Rect;

    .line 768
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->assets_pfv_page_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 769
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPagePadding:Landroid/graphics/Rect;

    return-object v0

    .line 763
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->addTransitionAnimation(Landroid/view/ViewPropertyAnimator;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addCleanupRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->addCleanupRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_1

    .line 102
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setIsTransitioning(Z)V

    .line 107
    iget-object v1, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->isMoreZoomedOutThan(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z

    move-result p1

    .line 109
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animateTransition(ZZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected cleanupAnimation()V
    .locals 6

    .line 453
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 455
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->cachedViewBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 459
    iget-object v2, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v2, :cond_2

    .line 460
    invoke-virtual {v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->cleanupTransition()V

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 465
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 466
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 467
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_5

    .line 473
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setIsTransitioning(Z)V

    .line 476
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 477
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 478
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 479
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 480
    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    .line 483
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getAnimatingPageContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 485
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 486
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 489
    :cond_7
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    .line 491
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/nln/NlnModeChangeEvent;

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    iget-object v3, v3, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v4, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->END:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;-><init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 493
    :cond_8
    iput-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    .line 496
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->disposeTransitionView()V

    return-void
.end method

.method protected doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 535
    iget-object v3, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v3, :cond_13

    .line 536
    iget-boolean v4, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v4, :cond_0

    goto/16 :goto_9

    .line 540
    :cond_0
    iget-object v4, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    if-eqz v4, :cond_12

    .line 547
    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v2, v5, :cond_1

    .line 548
    new-instance v5, Lcom/amazon/kindle/nln/NlnTransitionManager$2;

    invoke-direct {v5, v0}, Lcom/amazon/kindle/nln/NlnTransitionManager$2;-><init>(Lcom/amazon/kindle/nln/NlnTransitionManager;)V

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->addCleanupRunnable(Ljava/lang/Runnable;)V

    .line 556
    :cond_1
    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 558
    invoke-virtual {v3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getCallingActivityRectangles()Ljava/util/List;

    move-result-object v3

    .line 559
    iget-object v6, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 563
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    if-le v9, v7, :cond_3

    .line 564
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    move-object v9, v10

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    .line 568
    :cond_4
    invoke-direct {v0, v5}, Lcom/amazon/kindle/nln/NlnTransitionManager;->findViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Landroid/view/View;

    move-result-object v10

    .line 571
    :goto_2
    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionView:Landroid/view/View;

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getAnimatingPageContainer()Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 574
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    if-eqz v5, :cond_5

    .line 577
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 579
    instance-of v12, v11, Lcom/amazon/kindle/nln/UnboundedLinearLayout;

    if-eqz v12, :cond_5

    if-eqz v6, :cond_5

    sget-object v12, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-object/from16 v13, p2

    .line 581
    invoke-virtual {v12, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 582
    invoke-virtual {v12, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 585
    check-cast v11, Lcom/amazon/kindle/nln/UnboundedLinearLayout;

    if-eqz v9, :cond_6

    .line 587
    invoke-virtual {v11, v9}, Lcom/amazon/kindle/nln/UnboundedLinearLayout;->forceRemeasureAndLayoutUsingRect(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    move-object/from16 v13, p2

    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    if-eqz v9, :cond_10

    :cond_7
    if-eqz v10, :cond_10

    if-eqz v5, :cond_10

    .line 595
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 596
    invoke-direct {v0, v10, v5}, Lcom/amazon/kindle/nln/NlnTransitionManager;->computeRectForPage(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v6, :cond_8

    goto :goto_4

    .line 609
    :cond_8
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->getFullscreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v16, v9

    move-object v9, v5

    move-object/from16 v5, v16

    .line 612
    :goto_4
    invoke-direct {v0, v1, v9, v5}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateTransitionPage(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v6, :cond_d

    const/4 v10, -0x1

    .line 617
    invoke-direct {v0, v1, v10}, Lcom/amazon/kindle/nln/NlnTransitionManager;->findPageViewInDirection(Landroid/view/View;I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object v10

    .line 618
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 619
    invoke-virtual {v10}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 620
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 621
    invoke-virtual {v10}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v14

    invoke-direct {v0, v14, v12}, Lcom/amazon/kindle/nln/NlnTransitionManager;->computeRectForPage(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 622
    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    if-ne v14, v15, :cond_9

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v11, Landroid/graphics/Rect;->top:I

    if-ne v14, v15, :cond_9

    .line 623
    invoke-direct {v0, v10, v11, v12}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateSidekickPageIn(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5

    .line 625
    :cond_9
    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    if-ne v14, v15, :cond_a

    .line 626
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 627
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 628
    iget v7, v9, Landroid/graphics/Rect;->top:I

    iput v7, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v15

    .line 629
    iput v7, v11, Landroid/graphics/Rect;->bottom:I

    neg-int v7, v14

    .line 630
    iput v7, v11, Landroid/graphics/Rect;->left:I

    .line 631
    iput v8, v11, Landroid/graphics/Rect;->right:I

    .line 632
    invoke-direct {v0, v10, v11, v12}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateSidekickPageIn(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_a
    const/4 v7, 0x0

    :goto_5
    const/4 v10, 0x1

    .line 635
    invoke-direct {v0, v1, v10}, Lcom/amazon/kindle/nln/NlnTransitionManager;->findPageViewInDirection(Landroid/view/View;I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object v1

    const/4 v11, 0x2

    .line 636
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    .line 637
    invoke-virtual {v1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 638
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 639
    invoke-virtual {v1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v12

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/nln/NlnTransitionManager;->computeRectForPage(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 640
    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v14, v11, Landroid/graphics/Rect;->top:I

    if-ne v12, v14, :cond_b

    iget v12, v9, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    if-ne v12, v14, :cond_b

    .line 641
    invoke-direct {v0, v1, v3, v11}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateSidekickPageIn(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    goto :goto_6

    .line 643
    :cond_b
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v12, v11, Landroid/graphics/Rect;->top:I

    if-ne v5, v12, :cond_c

    .line 644
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 645
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 646
    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v12

    .line 647
    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 648
    iget-object v9, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v9, v9, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v5

    .line 649
    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 650
    invoke-direct {v0, v1, v3, v11}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateSidekickPageIn(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 654
    :goto_6
    invoke-virtual {v4, v7, v1}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->setTransitioningFocusPages(ZZ)V

    .line 656
    iget-object v1, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v1, v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v1, :cond_f

    .line 657
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_e

    const/4 v7, 0x1

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    .line 658
    :goto_7
    iget-object v1, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v1, v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-virtual {v1, v6, v7, v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->animateTransition(ZZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    .line 662
    :cond_f
    invoke-virtual {v4}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->animateOutOldFragment()V

    goto :goto_8

    .line 664
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->finishTransition()Landroid/view/ViewPropertyAnimator;

    .line 667
    :goto_8
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    .line 669
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v1

    invoke-interface {v1, v8, v8}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    :cond_11
    return-void

    .line 544
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No transition choreographer found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_9
    return-void
.end method

.method public finishTransition()Landroid/view/ViewPropertyAnimator;
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 120
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getAnimatingPageContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 121
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v5, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v2, v5, :cond_2

    .line 126
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->cachedViewBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/high16 v0, 0x43160000    # 150.0f

    .line 135
    sget v2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v2, v2, v0

    float-to-long v2, v2

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v3
.end method

.method protected getPivotForScaleAnimation(IIFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p3

    sub-float/2addr v0, p4

    sub-float/2addr v0, v1

    .line 744
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    int-to-float p1, p2

    div-float/2addr p1, v0

    :cond_0
    cmpg-float p2, p3, p4

    if-gez p2, :cond_1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    :cond_1
    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->disposeTransitionView()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 142
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    .line 143
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingPageContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    return-void
.end method

.method protected onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionStart(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 0

    .line 150
    check-cast p1, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    .line 151
    iget-object p1, p1, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-void
.end method

.method public runPendingTransitionIn()V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    iget-object v2, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 187
    iget-boolean v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v3, :cond_1

    goto :goto_3

    .line 191
    :cond_1
    iget-boolean v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionAnimationPending:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 192
    iput-boolean v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionAnimationPending:Z

    .line 193
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 194
    sget-object v5, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 196
    sget-object v5, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PREVIOUS_MODE"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_2
    invoke-static {v5}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v4

    .line 201
    iget-object v5, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionInPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v5, :cond_4

    .line 203
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    invoke-virtual {v2, v5, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v2

    .line 206
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 207
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 208
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v6

    if-ne v6, v2, :cond_3

    move-object v1, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, v1, v4, v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public setupTransitionIn(Ljava/lang/Runnable;Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_1

    .line 166
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setIsTransitioning(Z)V

    .line 171
    new-instance v0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-direct {v0, p0, p4, v2, p2}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;-><init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    .line 172
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->addCleanupRunnable(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/nln/NlnTransitionManager;->updateTransitionPage(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 174
    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionInPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 177
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionAnimationPending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setupTransitionOut(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_2

    .line 231
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setIsTransitioning(Z)V

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/nln/NlnTransitionManager;->updateTransitionPage(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 239
    :cond_1
    new-instance p3, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v0, p2, v1}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;-><init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    .line 240
    iget-object p3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 241
    sget-object p1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p2, p1, :cond_2

    .line 242
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToFullPage()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateTransitionPage(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 3

    const/4 v0, 0x0

    .line 775
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 776
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    if-eqz p1, :cond_0

    .line 781
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 782
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->createUnmanagedPageView(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailPage;Lcom/amazon/kindle/nln/IThumbnailManager;F)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitionView:Landroid/view/View;

    :cond_0
    return-void
.end method
