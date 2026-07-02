.class public Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;
.super Ljava/lang/Object;
.source "CurlRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;
    }
.end annotation


# static fields
.field private static final USE_PERSPECTIVE_PROJECTION:Z = false


# instance fields
.field private leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

.field private mBackgroundColor:I

.field private mCurlMeshes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/pagecurl/IMesh;",
            ">;"
        }
    .end annotation
.end field

.field private mCurlViewBackListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

.field private mHideLeftRightPage:Z

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mMargins:Landroid/graphics/RectF;

.field private mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

.field private mPMatrix:[F

.field private mPageBackgroundColor:I

.field private mPageRectLeft:Landroid/graphics/RectF;

.field private mPageRectRight:Landroid/graphics/RectF;

.field private mVMatrix:[F

.field private mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

.field private mViewRect:Landroid/graphics/RectF;

.field private mViewportHeight:I

.field private mViewportWidth:I

.field private program:I

.field private rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

.field private shader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;

.field private shadowProgram:I

.field private shadowShader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;Landroid/content/Context;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    const/high16 v0, -0x1000000

    .line 58
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 72
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    new-array v1, v0, [F

    .line 73
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMMatrix:[F

    new-array v1, v0, [F

    .line 74
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mVMatrix:[F

    new-array v0, v0, [F

    .line 75
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPMatrix:[F

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mHideLeftRightPage:Z

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    .line 85
    new-instance p1, Ljava/util/TreeMap;

    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$1;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    .line 96
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    .line 99
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    sget v0, Lcom/amazon/kindle/krl/R$raw;->vertex_shader:I

    sget v1, Lcom/amazon/kindle/krl/R$raw;->fragment_shader:I

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;-><init>(IILandroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    .line 100
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    sget v0, Lcom/amazon/kindle/krl/R$raw;->vertex_shader:I

    sget v1, Lcom/amazon/kindle/krl/R$raw;->shadow_fragment_shader:I

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;-><init>(IILandroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowShader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    return-void
.end method

.method private updatePageRects()V
    .locals 5

    .line 480
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v2, :cond_1

    .line 483
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 484
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 485
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 486
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 487
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 489
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 490
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 494
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;->onPageSizeChanged(II)V

    goto/16 :goto_0

    .line 495
    :cond_1
    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_2

    .line 496
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 497
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 498
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 499
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 500
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 502
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 503
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 504
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 506
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;->onPageSizeChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addCurlMesh(Ljava/lang/Integer;Lcom/amazon/kindle/pagecurl/IMesh;)V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLeftMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V
    .locals 0

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRigthMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V
    .locals 0

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 118
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearAllCurlMeshes()V
    .locals 1

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 384
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public getPageRect(I)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyHideLeftRightPage()V
    .locals 1

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mHideLeftRightPage:Z

    return-void
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;->onDrawFrame()V

    .line 140
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mVMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 141
    iget-object v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPMatrix:[F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 143
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 145
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 146
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 147
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 144
    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 v2, 0x4100

    .line 149
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 151
    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    const-string v4, "uMVPMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 152
    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 155
    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 156
    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 157
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 158
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    iget v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    .line 159
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 156
    invoke-static {v3, v4, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 160
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 161
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 163
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 164
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMVPMatrix:[F

    invoke-static {v1, v5, v6, v3, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Curl renderer - Draw frame - What\'s going on, there is nothing to draw ???"

    .line 168
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p1, 0x0

    .line 172
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 173
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 174
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    goto/16 :goto_4

    :cond_1
    const/16 v0, 0xb71

    .line 176
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x203

    .line 177
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 178
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v2, :cond_3

    .line 179
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl renderer - Draw frame - drawing left page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    invoke-interface {v2, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackgroundColor(I)V

    .line 183
    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 184
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v2, "GL Draw Left page"

    .line 185
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 187
    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 188
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20SelfShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 189
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20DropShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v2, "GL Draw Left page shadow"

    .line 190
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v2, :cond_5

    .line 194
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl renderer - Draw frame - drawing right page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    invoke-interface {v2, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackgroundColor(I)V

    .line 198
    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 199
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v2, "GL Draw Right page"

    .line 200
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 203
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20SelfShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 204
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20DropShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v2, "GL Draw Right page shadow"

    .line 205
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Integer;

    .line 209
    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 211
    iget v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 212
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    add-int/lit8 v4, v2, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_6

    .line 214
    aget-object v7, v3, v5

    .line 216
    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v7, p1, v8}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20DropShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v7, "GL Draw Curled page shadow"

    .line 217
    invoke-static {v7}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 221
    :cond_6
    iget v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 222
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 223
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    const/4 v1, 0x0

    :goto_1
    const/4 v5, -0x1

    if-ge v1, v2, :cond_a

    .line 225
    aget-object v7, v3, v1

    .line 226
    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v8}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v8

    .line 227
    iget-object v9, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v9, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v9}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v9

    if-lt v8, v9, :cond_7

    if-ne v9, v5, :cond_9

    .line 232
    :cond_7
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Curl renderer - Draw frame - drawing curled page :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 234
    :cond_8
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    invoke-interface {v5, v8}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackgroundColor(I)V

    .line 235
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-interface {v5, p1, v7}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v5, "GL Draw Curled page"

    .line 236
    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    move v1, v4

    :goto_2
    if-ltz v1, :cond_d

    .line 241
    aget-object v2, v3, v1

    .line 242
    iget-object v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v7, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v7}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v7

    .line 243
    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v8, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v8}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v8

    if-le v7, v8, :cond_c

    if-eq v8, v5, :cond_c

    .line 248
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Curl renderer - Draw frame - drawing curled page :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v8, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 250
    :cond_b
    iget-object v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v7, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v8, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    invoke-interface {v7, v8}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackgroundColor(I)V

    .line 251
    iget-object v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v7, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v7, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-interface {v2, p1, v7}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v2, "GL Draw Curled page"

    .line 252
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 257
    :cond_d
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 258
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_3
    if-ltz v4, :cond_e

    .line 260
    aget-object v0, v3, v4

    .line 262
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/pagecurl/IMesh;->drawOpenGLES20SelfShadow(Ljavax/microedition/khronos/opengles/GL10;I)V

    const-string v0, "GL Draw Curled page shadow"

    .line 263
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 268
    :cond_e
    :goto_4
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mHideLeftRightPage:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlViewBackListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    if-eqz p1, :cond_f

    .line 269
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlViewBackListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/BackgroundViewListener;->onHideLeftRightPageProcessed()V

    .line 271
    :cond_f
    iput-boolean v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mHideLeftRightPage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10

    .line 277
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Curl renderer - onSurfaceChanged - openGL Call to onSurfaceChanged."

    .line 278
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 280
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float v0, p2

    int-to-float v1, p3

    div-float v5, v0, v1

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Landroid/graphics/RectF;->top:F

    const/high16 v6, -0x40800000    # -1.0f

    .line 284
    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v4, v5

    .line 285
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 286
    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 309
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPMatrix:[F

    const/4 v3, 0x0

    const/high16 v8, -0x3fe00000    # -2.5f

    const/high16 v9, 0x40200000    # 2.5f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mVMatrix:[F

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 313
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMMatrix:[F

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 315
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Curl renderer - onSurfaceChanged - received twice onSurfaceChanged, ignoring the second one !"

    .line 325
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_2
    :goto_0
    iput p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    .line 317
    iput p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    .line 319
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->updatePageRects()V

    .line 322
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;->onSurfaceChanged(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/4 p1, -0x1

    .line 333
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    .line 334
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    .line 336
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Curl renderer - onSurfaceCreated - openGL Call to onSurfaceCreated."

    .line 337
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->getProgram()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    .line 339
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowShader:Lcom/amazon/kindle/pagecurl/opengles20/Shader;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->getProgram()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->shadowProgram:I

    .line 341
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glGetAttribLocation glUseProgram program"

    .line 342
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 344
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 345
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 p1, 0xb71

    .line 346
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x203

    .line 347
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    const/16 p1, 0xbd0

    .line 348
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 350
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mObserver:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;

    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;->onSurfaceCreated()V

    return-void
.end method

.method public declared-synchronized removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 359
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->leftMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    if-ne v0, p1, :cond_1

    .line 362
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->rightMesh:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 369
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 374
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlMeshes:Ljava/util/TreeMap;

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 377
    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 392
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurlRenderer - setBackgroundColor - setting the bg color "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 394
    :cond_0
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mBackgroundColor:I

    return-void
.end method

.method public setCurlViewBackgroundListener(Lcom/amazon/kindle/pagecurl/BackgroundViewListener;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mCurlViewBackListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    return-void
.end method

.method public declared-synchronized setMargins(FFFF)V
    .locals 1

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 412
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 413
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p4, p1, Landroid/graphics/RectF;->bottom:F

    .line 415
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->updatePageRects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPageBackgroundColor(I)V
    .locals 2

    .line 401
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurlRenderer - setPageBackgroundColor - setting the page bg color "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 403
    :cond_0
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mPageBackgroundColor:I

    return-void
.end method

.method public declared-synchronized setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V
    .locals 1

    monitor-enter p0

    .line 423
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne p1, v0, :cond_0

    .line 424
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 425
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->updatePageRects()V

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne p1, v0, :cond_1

    .line 427
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 428
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->updatePageRects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public translate(Landroid/graphics/PointF;)V
    .locals 1

    .line 436
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->translateX(F)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 437
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->translateY(F)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public translateX(F)F
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, p1

    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public translateY(F)F
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p1

    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportHeight:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method public untranslateX(F)F
    .locals 3

    .line 464
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewportWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    mul-float v0, v0, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method
