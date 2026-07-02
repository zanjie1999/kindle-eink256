.class public Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;
.super Lcom/amazon/kindle/nln/NlnTransitionManager;
.source "BirdsEyeTransitionManager.java"


# static fields
.field private static final ANIM_CHROME_DURATION:J = 0x104L

.field private static final ANIM_CHROME_PIVOT_FACTOR:F = 4.0f

.field private static final ANIM_CHROME_SCALE:F = 1.81f

.field private static final ANIM_DURATION_OUT:J = 0x12cL

.field private static final CENTER_PAGE_DURATION:J = 0xdcL

.field private static final CHAPTER_DURATION:J = 0xc8L

.field private static final DURATION_STEP:J = 0x28L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animatingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/view/View;

.field private toolbarShadow:Landroid/view/View;

.field private transitionFocusPoint:[F

.field private viewsToHide:Ljava/util/List;
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

    .line 27
    const-class v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->viewsToHide:Ljava/util/List;

    return-void
.end method

.method private animateSideElements(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;Z)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 97
    iget-object v2, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    iget-object v2, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->viewsToHide:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    iget-object v2, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v2, v2, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 102
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    .line 103
    div-int/lit8 v5, v4, 0x2

    .line 104
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    .line 105
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 112
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-gt v14, v10, :cond_11

    .line 113
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 114
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v11

    if-eqz v10, :cond_10

    if-lt v11, v6, :cond_10

    if-le v11, v7, :cond_0

    goto/16 :goto_a

    .line 119
    :cond_0
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 120
    invoke-static {v10, v2, v9}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->getPageScale()F

    move-result v18

    div-float v18, v17, v18

    goto :goto_1

    :cond_1
    const/high16 v18, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p1, :cond_2

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->getPageScale()F

    move-result v19

    :goto_2
    const/16 v20, 0x0

    if-eqz p1, :cond_3

    const/16 v21, 0x0

    goto :goto_3

    :cond_3
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_3
    if-eqz p1, :cond_4

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/16 v22, 0x0

    .line 129
    :goto_4
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    const/4 v8, 0x1

    if-ne v12, v8, :cond_c

    .line 131
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v11

    .line 132
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v12

    invoke-virtual {v12, v11, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v11

    .line 134
    iget-object v12, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->transitioningPages:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_a

    :cond_5
    if-eqz p3, :cond_8

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_5
    if-gt v12, v8, :cond_9

    if-nez v17, :cond_9

    .line 143
    invoke-virtual {v1, v12}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isFocusPageTransitioning(I)Z

    move-result v20

    if-nez v20, :cond_6

    goto :goto_6

    .line 148
    :cond_6
    iget-object v8, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v8, v12}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 149
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v10, v8, :cond_7

    .line 152
    iget-object v8, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->viewsToHide:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x2

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    :cond_9
    const-wide/16 v24, 0xdc

    sub-int v8, v5, v11

    .line 160
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v12, v2

    move-object/from16 v26, v3

    int-to-long v2, v8

    const-wide/16 v27, 0x28

    mul-long v2, v2, v27

    add-long v2, v2, v24

    if-ge v11, v13, :cond_a

    add-long v15, v15, v27

    :cond_a
    add-long/2addr v2, v15

    if-eqz v17, :cond_b

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v23, v7

    move v13, v11

    move-object/from16 v21, v12

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_b
    move/from16 v17, v4

    move v13, v11

    move/from16 v8, v18

    move/from16 v11, v19

    const/16 v20, 0x1

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v6, v21

    const-wide/16 v4, 0x0

    goto :goto_9

    :cond_c
    move-object v12, v2

    move-object/from16 v26, v3

    const-wide/16 v2, 0xc8

    if-eqz p1, :cond_d

    const-wide/16 v18, 0x49

    goto :goto_8

    :cond_d
    const-wide/16 v18, 0x0

    :goto_8
    move/from16 v17, v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-wide/from16 v29, v18

    move/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v4, v29

    if-nez p1, :cond_e

    const/4 v6, 0x0

    goto :goto_9

    :cond_e
    move/from16 v6, v21

    :goto_9
    long-to-float v2, v2

    .line 187
    sget v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v2, v2, v3

    move-object/from16 v21, v12

    move/from16 v24, v13

    float-to-long v12, v2

    long-to-float v2, v4

    mul-float v2, v2, v3

    float-to-long v2, v2

    .line 189
    iget-object v4, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move/from16 v23, v7

    aget v7, v9, v5

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v10, v4}, Landroid/view/View;->setPivotX(F)V

    .line 191
    iget-object v4, v0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    const/4 v7, 0x1

    aget v4, v4, v7

    aget v7, v9, v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v10, v4}, Landroid/view/View;->setPivotY(F)V

    .line 192
    invoke-virtual {v10, v8}, Landroid/view/View;->setScaleX(F)V

    .line 193
    invoke-virtual {v10, v8}, Landroid/view/View;->setScaleY(F)V

    .line 194
    invoke-virtual {v10, v6}, Landroid/view/View;->setAlpha(F)V

    .line 197
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    move/from16 v6, v22

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 198
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 201
    sget-boolean v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v3, :cond_f

    if-eqz v20, :cond_f

    .line 202
    sget-object v3, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_f
    const-string v3, "Side Elements"

    .line 204
    invoke-virtual {v0, v2, v1, v3}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    move/from16 v13, v24

    goto :goto_b

    :cond_10
    :goto_a
    move-object/from16 v21, v2

    move-object/from16 v26, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v23, v7

    goto/16 :goto_7

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v2, v21

    move/from16 v7, v23

    move-object/from16 v3, v26

    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private animateToolbar(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 6

    .line 217
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->ensureViewReferences()V

    const v0, 0x3fe7ae14    # 1.81f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const v2, 0x3fe7ae14    # 1.81f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    if-eqz p1, :cond_2

    const-wide/16 v3, 0x104

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x12c

    :goto_1
    long-to-float p1, v3

    .line 222
    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float p1, p1, v1

    float-to-long v3, p1

    .line 224
    iget-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 225
    iget-object v1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, -0x3f800000    # -4.0f

    mul-float v1, v1, v5

    .line 226
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    .line 227
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    .line 228
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setPivotX(F)V

    .line 229
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setPivotY(F)V

    .line 232
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    .line 233
    iget-object v5, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    .line 234
    iget-object v2, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 235
    iget-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 238
    iget-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 239
    sget-boolean v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v1, :cond_3

    .line 240
    sget-object v1, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    const-string v1, "BEV Toolbar"

    .line 242
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 245
    sget-boolean v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v0, :cond_4

    .line 246
    sget-object v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    const-string v0, "BEV Toolbar Shadow"

    .line 248
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    return-void
.end method

.method private ensureViewReferences()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    sget v1, Lcom/amazon/kindle/krl/R$id;->bev_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    .line 285
    sget v1, Lcom/amazon/kindle/krl/R$id;->toolbar_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 8

    .line 55
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    .line 56
    invoke-virtual {p2}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->getPrimaryAnimatingPage()Landroid/view/View;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v4, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v3

    .line 63
    iget-object v4, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v5, v5, v0

    add-float/2addr v1, v5

    aput v1, v4, v2

    .line 66
    :cond_0
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v3, p2, v2}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animateSideElements(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;Z)V

    .line 67
    invoke-direct {p0, v3, p2}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animateToolbar(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    return-void
.end method

.method protected cleanupAnimation()V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->cleanupAnimation()V

    .line 257
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->ensureViewReferences()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->viewsToHide:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 265
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->toolbarShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method protected doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 4

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/NlnTransitionManager;->doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    sget-boolean v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->enableTransitionAnimation:Z

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->transitionFocusPoint:[F

    iget-object v2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->animatingRecyclerViewPage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, p2

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animateSideElements(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;Z)V

    .line 81
    iget-object p2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animateToolbar(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->cleanupAnimation()V

    .line 303
    invoke-super {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->animatingViews:Ljava/util/List;

    return-void
.end method

.method protected onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 2

    .line 292
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/nln/BirdsEyeTransitionManager;->viewsToHide:Ljava/util/List;

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

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
