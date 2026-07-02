.class public Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;
.super Ljava/lang/Object;
.source "BookOpenAndCloseAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final animateFromBottomInterpolator:Landroid/view/animation/Interpolator;

.field private animating:Z

.field private final animationParentView:Landroid/view/ViewGroup;

.field private final animationView:Landroid/view/ViewGroup;

.field private final bibInterpolator:Landroid/view/animation/Interpolator;

.field private final cover:Landroid/widget/ImageView;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private final finalCoverHeightRatio:F

.field private final finalCoverWidthRatio:F

.field private final libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private final overlay:Landroid/view/View;

.field private final readerController:Lcom/amazon/kcp/reader/IReaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    .line 93
    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 94
    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->book_open_animation_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationView:Landroid/view/ViewGroup;

    .line 97
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->book_open_overlay:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationView:Landroid/view/ViewGroup;

    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->book_open_cover:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x3dcccccd    # 0.1f

    const p3, 0x3f333333    # 0.7f

    const v0, 0x3e4ccccd    # 0.2f

    .line 99
    invoke-static {p2, p3, v0, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->bibInterpolator:Landroid/view/animation/Interpolator;

    const p2, 0x3ecccccd    # 0.4f

    const/4 p3, 0x0

    .line 100
    invoke-static {p2, p3, p2, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animateFromBottomInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    sget p1, Lcom/amazon/kindle/librarymodule/R$dimen;->book_open_animation_final_cover_height_ratio:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverHeightRatio:F

    .line 102
    sget p1, Lcom/amazon/kindle/librarymodule/R$dimen;->book_open_animation_final_cover_width_ratio:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverWidthRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/reader/IReaderController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/app/Activity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/library/ILibraryController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animating:Z

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private adjustDrawableMaxBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V
    .locals 4

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->shouldScaleAccordingToHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverHeightRatio:F

    sub-float/2addr v1, v3

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p3, p3, p1

    sub-float/2addr v1, p3

    div-float/2addr v1, v2

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverWidthRatio:F

    sub-float/2addr v1, v3

    mul-float v0, v0, v1

    div-float v1, v0, v2

    .line 268
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p3, p3, p1

    sub-float/2addr v0, p3

    div-float/2addr v0, v2

    .line 271
    :goto_0
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 272
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 273
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 274
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private createBookCloseAnimationListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 409
    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;-><init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Landroid/view/View;)V

    return-object v0
.end method

.method private createBookOpenAnimationListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ILjava/util/concurrent/Future;)Landroid/animation/AnimatorListenerAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            "Landroid/view/View;",
            "I",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/Intent;",
            ">;)",
            "Landroid/animation/AnimatorListenerAdapter;"
        }
    .end annotation

    .line 284
    new-instance v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;-><init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Ljava/util/concurrent/Future;I)V

    return-object v6
.end method

.method private getDrawableScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)F
    .locals 1

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->shouldScaleAccordingToHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverHeightRatio:F

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->finalCoverWidthRatio:F

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_0
.end method

.method private getFloat(I)F
    .locals 3

    .line 341
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 343
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    return p1
.end method

.method private setCommonCoverProperties(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 228
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private shouldScaleAccordingToHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z
    .locals 1

    .line 240
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    cmpl-float p1, v0, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startBookOpenAnimation(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;I)V
    .locals 3

    const-wide/16 v0, 0x15e

    .line 249
    invoke-virtual {p4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 253
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->submitOpenReaderItemRequest(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/util/concurrent/Future;

    move-result-object p4

    .line 254
    invoke-direct {p0, p1, p2, p5, p4}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->createBookOpenAnimationListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ILjava/util/concurrent/Future;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iput-object p3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 256
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private submitOpenReaderItemRequest(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;-><init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancelAnimationIfAny()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->book_open_animation_view:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animating:Z

    return v0
.end method

.method public onStop()V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cancelAnimationIfAny()V

    return-void
.end method

.method public openBookFromBottom(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 182
    iget-object v2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 183
    iget v2, v1, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 185
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 186
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    invoke-interface {v1, v3}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_0
    if-eqz v1, :cond_2

    .line 190
    invoke-static {v1}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 193
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 198
    :cond_2
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->getDrawableScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)F

    move-result v1

    .line 199
    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->adjustDrawableMaxBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V

    .line 200
    invoke-direct {p0, p2, v1, v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->setCommonCoverProperties(Landroid/graphics/drawable/Drawable;FF)V

    .line 201
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 202
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 204
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 206
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animateFromBottomInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr p2, v3

    .line 208
    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p2, v4, v2

    const/4 p2, 0x1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    aput v0, v4, p2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p3

    .line 209
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->startBookOpenAnimation(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;I)V

    return-void
.end method

.method public openBookFromView(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p3

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 134
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 136
    iget-object v4, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 137
    iget v4, v3, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 139
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 140
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v4

    iget-object v7, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    invoke-interface {v4, v7}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 141
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_0
    if-eqz v4, :cond_2

    .line 144
    invoke-static {v4}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 147
    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    move-object/from16 v4, p2

    .line 152
    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 153
    iget v7, v3, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 155
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->getDrawableScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)F

    move-result v3

    .line 156
    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->adjustDrawableMaxBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 157
    invoke-direct {p0, v0, v7, v7}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->setCommonCoverProperties(Landroid/graphics/drawable/Drawable;FF)V

    .line 159
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 160
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 162
    iget-object v0, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->bibInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object v0, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v12, v11, [F

    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v12, v5

    iget v13, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v0, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v10, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    sget-object v12, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v13, v11, [F

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v13, v5

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v13, v14

    .line 164
    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v11, [F

    aput v9, v10, v5

    aput v3, v10, v14

    .line 165
    invoke-static {v1, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, v6, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v11, [F

    aput v9, v10, v5

    aput v3, v10, v14

    .line 166
    invoke-static {v1, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    move/from16 v5, p4

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->startBookOpenAnimation(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;I)V

    return-void
.end method

.method public openBookFromView(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 117
    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->openBookFromView(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public startBookCloseAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 353
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 361
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 362
    iget-object v3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 364
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v3

    .line 365
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 366
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 367
    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 369
    iget-object v5, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    :cond_1
    iget v5, v2, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 371
    iget v5, v2, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 374
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_0
    if-eqz v0, :cond_5

    .line 379
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 382
    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 387
    :cond_5
    :goto_1
    invoke-direct {p0, p2, v4}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->getDrawableScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)F

    move-result v0

    .line 388
    invoke-direct {p0, p2, v4, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->adjustDrawableMaxBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V

    .line 389
    invoke-direct {p0, p2, v0, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->setCommonCoverProperties(Landroid/graphics/drawable/Drawable;FF)V

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 399
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 400
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->animationView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->overlay:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 402
    iget-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->cover:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->bibInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 403
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 404
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->createBookCloseAnimationListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
