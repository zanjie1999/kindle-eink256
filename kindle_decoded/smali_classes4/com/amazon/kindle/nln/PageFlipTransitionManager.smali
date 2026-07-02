.class public Lcom/amazon/kindle/nln/PageFlipTransitionManager;
.super Lcom/amazon/kindle/nln/NlnTransitionManager;
.source "PageFlipTransitionManager.java"


# static fields
.field private static final ANIM_CHROME_PIVOT_FACTOR:F = 4.0f

.field private static final ANIM_CHROME_SCALE:F = 1.81f

.field private static final ANIM_PAGE_LEFT_DURATION:J = 0xdcL

.field private static final ANIM_PAGE_RIGHT_DURATION:J = 0x104L

.field private static final ANIM_SEEKER_DURATION:J = 0xdcL

.field private static final ANIM_SEEKER_START_DELAY:J = 0x28L

.field private static final ANIM_TOOLBAR_DURATION:J = 0x104L


# instance fields
.field private animatingPagesEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animatingPagesStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private locationSeeker:Landroid/view/View;

.field private nlnTextBottom:Landroid/view/View;

.field private nlnTextTop:Landroid/view/View;

.field private nlnTitleContainer:Landroid/view/View;

.field private toolbarContainer:Landroid/view/View;

.field private viewsInitialized:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->viewsInitialized:Z

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    return-void
.end method

.method private animateSidePages(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->ensureViewReferences()V

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    .line 231
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v3

    .line 232
    iget-object v4, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v4, v4, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-lt v5, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    .line 238
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v8, :cond_0

    .line 240
    iget-object v10, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p3

    goto :goto_1

    :cond_0
    move-object/from16 v10, p3

    .line 243
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    .line 247
    :cond_1
    iget-object v11, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_3

    .line 255
    iget-object v5, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 256
    iget-object v5, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    :cond_3
    iget-object v6, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v5, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 263
    :cond_4
    :goto_2
    iget-object v5, v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    invoke-interface {v5}, Lcom/amazon/kindle/nln/IThumbnailManager;->getThumbnailScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    div-float v8, v6, v5

    goto :goto_3

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_3
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    div-float/2addr v6, v5

    :goto_4
    const-wide/16 v9, 0x12c

    if-eqz v1, :cond_7

    const-wide/16 v11, 0xdc

    goto :goto_5

    :cond_7
    move-wide v11, v9

    :goto_5
    if-eqz v1, :cond_8

    const-wide/16 v9, 0x104

    :cond_8
    long-to-float v11, v11

    .line 269
    sget v12, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v11, v11, v12

    float-to-long v13, v11

    long-to-float v9, v9

    mul-float v9, v9, v12

    float-to-long v9, v9

    .line 277
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 278
    iget-object v4, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    .line 279
    iget-object v7, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    goto :goto_6

    .line 281
    :cond_9
    iget-object v4, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    .line 282
    iget-object v7, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    .line 285
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-nez v11, :cond_a

    goto :goto_7

    .line 290
    :cond_a
    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleX(F)V

    .line 291
    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleY(F)V

    .line 293
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    if-eqz v1, :cond_b

    neg-int v15, v12

    goto :goto_8

    .line 294
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v15, v15

    :goto_8
    if-eqz v1, :cond_c

    .line 295
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    goto :goto_9

    :cond_c
    neg-int v12, v12

    .line 296
    :goto_9
    invoke-virtual {v0, v15, v12, v8, v6}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setPivotX(F)V

    .line 297
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setPivotY(F)V

    .line 299
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 300
    sget-boolean v15, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v15, :cond_d

    .line 301
    sget-object v15, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 303
    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v4

    const-string v4, "Left Page "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v2, v4}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    move-object/from16 v4, p3

    goto :goto_7

    .line 306
    :cond_e
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_f

    goto :goto_a

    .line 311
    :cond_f
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    .line 312
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleY(F)V

    if-eqz v1, :cond_10

    .line 313
    iget v7, v3, Landroid/graphics/Point;->x:I

    goto :goto_b

    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    float-to-int v7, v7

    :goto_b
    if-eqz v1, :cond_11

    .line 314
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v11

    float-to-int v11, v11

    goto :goto_c

    :cond_11
    iget v11, v3, Landroid/graphics/Point;->x:I

    .line 315
    :goto_c
    invoke-virtual {v0, v7, v11, v8, v6}, Lcom/amazon/kindle/nln/NlnTransitionManager;->getPivotForScaleAnimation(IIFF)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 316
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    .line 318
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 319
    sget-boolean v11, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v11, :cond_12

    .line 320
    sget-object v11, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 322
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Right Page "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v2, v5}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    return-void
.end method

.method private animateTextLabels(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 10

    .line 90
    invoke-direct {p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->ensureViewReferences()V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextTop:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextBottom:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTitleContainer:Landroid/view/View;

    const/4 v3, 0x0

    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :cond_3
    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    const/high16 p1, 0x3f800000    # 1.0f

    long-to-float v4, v4

    .line 115
    sget v5, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v4, v4, v5

    float-to-long v8, v4

    long-to-float v4, v6

    mul-float v4, v4, v5

    float-to-long v4, v4

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-string v6, "Book Title"

    .line 123
    invoke-virtual {p0, v2, p2, v6}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v2, "Chapter Label"

    .line 129
    invoke-virtual {p0, v0, p2, v2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 135
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v0, "Location Text"

    .line 136
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private animateToolbars(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->ensureViewReferences()V

    .line 151
    iget-object v2, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->locationSeeker:Landroid/view/View;

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 155
    :cond_0
    iget-object v3, v1, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    sget-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 157
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 158
    iget-object v1, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->locationSeeker:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 162
    :cond_1
    iget-object v2, v1, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->originMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->isMoreZoomedOutThan(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z

    move-result v2

    const v3, 0x3fe7ae14    # 1.81f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const v6, 0x3fe7ae14    # 1.81f

    goto :goto_0

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-float v9, v3, v6

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eq v2, v9, :cond_5

    div-float v6, v4, v6

    div-float v3, v4, v3

    :cond_5
    if-eqz v2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    if-nez v2, :cond_7

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 172
    :cond_8
    :goto_2
    iget-object v2, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->locationSeeker:Landroid/view/View;

    if-eqz p1, :cond_9

    const-wide/16 v8, 0x28

    goto :goto_3

    :cond_9
    const-wide/16 v8, 0x0

    :goto_3
    const-wide/16 v10, 0x12c

    if-eqz p1, :cond_a

    const-wide/16 v12, 0x104

    goto :goto_4

    :cond_a
    move-wide v12, v10

    :goto_4
    if-eqz p1, :cond_b

    const-wide/16 v10, 0xdc

    :cond_b
    if-eqz p1, :cond_c

    const/4 v14, 0x0

    goto :goto_5

    :cond_c
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_5
    if-eqz p1, :cond_d

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_d
    long-to-float v4, v8

    .line 179
    sget v8, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v4, v4, v8

    move v9, v5

    float-to-long v4, v4

    long-to-float v12, v12

    mul-float v12, v12, v8

    float-to-long v12, v12

    long-to-float v10, v10

    mul-float v10, v10, v8

    float-to-long v10, v10

    .line 183
    iget-object v8, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setScaleX(F)V

    .line 184
    iget-object v8, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setScaleY(F)V

    .line 185
    iget-object v8, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v15, v15, v16

    invoke-virtual {v8, v15}, Landroid/view/View;->setPivotY(F)V

    .line 187
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 188
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotX(F)V

    .line 190
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, -0x3f800000    # -4.0f

    mul-float v6, v6, v8

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    .line 193
    iget-object v6, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 194
    sget-boolean v8, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v8, :cond_e

    .line 195
    sget-object v8, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_e
    if-eqz v7, :cond_f

    .line 198
    iget-object v8, v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-virtual {v8, v14}, Landroid/view/View;->setAlpha(F)V

    .line 199
    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_f
    const-string v8, "PFV Toolbar"

    .line 201
    invoke-virtual {v0, v6, v1, v8}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 203
    sget-boolean v4, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz v4, :cond_10

    .line 204
    sget-object v4, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_10
    if-eqz v7, :cond_11

    .line 207
    invoke-virtual {v2, v14}, Landroid/view/View;->setAlpha(F)V

    .line 208
    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_11
    const-string v2, "PFV Location Seeker"

    .line 210
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addAnimationToChoreographer(Landroid/view/ViewPropertyAnimator;Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-void
.end method

.method private animateWithBirdsEye(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateTextLabels(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateToolbars(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->cachedViewBackground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private ensureViewReferences()V
    .locals 2

    .line 385
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->viewsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 395
    :cond_1
    sget v1, Lcom/amazon/kindle/krl/R$id;->nln_text_primary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextTop:Landroid/view/View;

    .line 396
    sget v1, Lcom/amazon/kindle/krl/R$id;->nln_text_secondary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextBottom:Landroid/view/View;

    .line 397
    sget v1, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTitleContainer:Landroid/view/View;

    .line 398
    sget v1, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    .line 400
    sget v1, Lcom/amazon/kindle/krl/R$id;->location_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 401
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getAnimatableContent()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->locationSeeker:Landroid/view/View;

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->viewsInitialized:Z

    return-void
.end method

.method private resetScaleAndAlpha(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    .line 53
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateWithBirdsEye(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    :cond_0
    return-void
.end method

.method protected cleanupAnimation()V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->cleanupAnimation()V

    .line 333
    invoke-direct {p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->ensureViewReferences()V

    .line 335
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 338
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesStart:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 346
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animatingPagesEnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->locationSeeker:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->resetScaleAndAlpha(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->toolbarContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->resetScaleAndAlpha(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTitleContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->resetScaleAndAlpha(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextTop:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->resetScaleAndAlpha(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->nlnTextBottom:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->resetScaleAndAlpha(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->choreographer:Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    if-eqz v0, :cond_4

    .line 372
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 374
    :goto_0
    sget-boolean v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->enableTransitionAnimation:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq p3, v3, :cond_1

    if-ne p2, v3, :cond_2

    .line 375
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateTextLabels(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    .line 376
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateToolbars(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    .line 377
    invoke-direct {p0, v1, v0, p1}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateSidePages(ZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;Landroid/view/View;)V

    goto :goto_1

    .line 378
    :cond_2
    sget-boolean v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->enableTransitionAnimation:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p2, v1, :cond_3

    .line 379
    invoke-direct {p0, v2, v0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->animateWithBirdsEye(ZLcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    .line 381
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/NlnTransitionManager;->doTransitionAnimation(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-void

    .line 369
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No transition choreographer found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-boolean v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;->cleanupAnimation()V

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onDestroy()V

    return-void
.end method

.method protected onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onTransitionStart(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 61
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionManager;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object p1, p1, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
