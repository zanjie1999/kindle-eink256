.class public Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;
.super Landroid/widget/ImageView;
.source "SeeMoreImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;,
        Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;,
        Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ZOOM:F = 3.0f

.field private static final DEFAULT_MIN_ZOOM:F = 1.0f

.field private static final DEFAULT_SCALING:F = 1.0f

.field private static final IMAGE_TRANSLATION_CENTER:F = 0.5f

.field private static final IMAGE_TRANSLATION_MAX:F = 1.0f

.field private static final IMAGE_TRANSLATION_MIN:F = 0.0f

.field private static final MAX_ZOOM_BOUNCE_BACK_MULTIPLIER:F = 1.25f

.field private static final MIN_ZOOM_BOUNCE_BACK_MULTIPLIER:F = 0.75f


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private drawMatrix:Landroid/graphics/Matrix;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private imageTranslation:Landroid/graphics/PointF;

.field private maxScale:F

.field private minScale:F

.field private normalScale:F

.field private scale:F

.field private scaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    .line 46
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->normalScale:F

    .line 47
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    .line 46
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->normalScale:F

    .line 47
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    .line 61
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    .line 46
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->normalScale:F

    .line 47
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    .line 67
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->translateImageX(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->translateImageY(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;FFF)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scaleImage(FFF)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->animateZoomBounceBackIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->minScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->animateScale(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->maxScale:F

    return p0
.end method

.method private animateScale(F)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "scale"

    .line 381
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 382
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_scale_image_animation_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 383
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateZoomBounceBackIfNeeded()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScale()F

    move-result v0

    .line 369
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMaxZoom()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMaxZoom()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->animateScale(F)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMinZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMinZoom()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->animateScale(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateNormalScale()F
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 141
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 142
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private centerImage()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private getAvailableTranslationX()F
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getAvailableTranslationY()F
    .locals 2

    .line 189
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getBounceBackMaxZoom()F
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    return v0
.end method

.method private getBounceBackMinZoom()F
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMinZoom()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    return v0
.end method

.method private getBoundedTranslation(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_0
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_2
    div-float/2addr p1, p2

    return p1
.end method

.method private getImageHeight()I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScaleFromNormal()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getImageTranslationX()F
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getAvailableTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageTranslationY()F
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getAvailableTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScaleFromNormal()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getViewSize(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->SeeMoreImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    :try_start_0
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->SeeMoreImageView_minZoom:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setMinZoom(F)V

    .line 78
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->SeeMoreImageView_maxZoom:I

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setMaxZoom(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    throw v0

    .line 86
    :cond_0
    :goto_0
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 87
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 88
    new-instance p1, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private scaleImage(FFF)V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScale()F

    move-result p2

    mul-float p2, p2, p1

    .line 351
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getBounceBackMaxZoom()F

    move-result p1

    .line 352
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getBounceBackMinZoom()F

    move-result p3

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, p3

    if-gez p1, :cond_1

    move p2, p3

    .line 363
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setScale(F)V

    return-void
.end method

.method private translateImageX(F)V
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setImageTranslationX(F)V

    return-void
.end method

.method private translateImageY(F)V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationY()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setImageTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getMaxZoom()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->minScale:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 320
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    return v0
.end method

.method public getScaleFromNormal()F
    .locals 2

    .line 345
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    iget v1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->normalScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 217
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 220
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScaleFromNormal()F

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScaleFromNormal()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationX()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 222
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 225
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageTranslationY()F

    move-result v1

    float-to-int v1, v1

    .line 226
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int v4, v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int v5, v2, v3

    .line 227
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    add-int v6, v2, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    add-int v7, v0, v1

    .line 228
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_quiz_card_drop_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v8, p1

    .line 226
    invoke-static/range {v4 .. v9}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->draw(IIIILandroid/graphics/Canvas;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 173
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 174
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 175
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getViewSize(III)I

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v1, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getViewSize(III)I

    move-result p2

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 179
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->resetZoom()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetZoom()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->calculateNormalScale()F

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->normalScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->setScale(F)V

    .line 133
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->centerImage()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->resetZoom()V

    return-void
.end method

.method public setImageTranslationX(F)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getAvailableTranslationX()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getBoundedTranslation(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 200
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageTranslationY(F)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getAvailableTranslationY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getBoundedTranslation(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 211
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->maxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->minScale:F

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 325
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->scale:F

    .line 327
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-ge p1, v0, :cond_0

    .line 329
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getImageHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 334
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->imageTranslation:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 337
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
