.class public final Lcom/amazon/kcp/home/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kcp/home/util/ViewUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/home/util/ViewUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateBackgroundWithShadow(Landroid/view/View;IIIII)Landroid/graphics/drawable/Drawable;
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int v4, p4

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p0, p2}, Lcom/amazon/kcp/home/util/ViewUtils;->resolveAttribute(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object p2

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p4, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p0, p1}, Lcom/amazon/kcp/home/util/ViewUtils;->resolveAttribute(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p4, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 41
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 42
    iput v4, p4, Landroid/graphics/Rect;->left:I

    .line 43
    iput v4, p4, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p5, v0, :cond_1

    const/16 v0, 0x30

    if-eq p5, v0, :cond_0

    .line 57
    iput v4, p4, Landroid/graphics/Rect;->top:I

    mul-int/lit8 p5, v4, 0x2

    .line 58
    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p5, v4

    goto :goto_0

    :cond_0
    mul-int/lit8 p5, v4, 0x2

    .line 52
    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 53
    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    const/4 p5, -0x1

    int-to-float p5, p5

    int-to-float v0, v4

    mul-float p5, p5, v0

    :goto_0
    int-to-float v0, v2

    div-float/2addr p5, v0

    goto :goto_1

    .line 47
    :cond_1
    iput v4, p4, Landroid/graphics/Rect;->top:I

    .line 48
    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    const/4 p5, 0x0

    .line 62
    :goto_1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 63
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    const-string/jumbo v3, "paint"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float p4, v2

    div-float p4, p3, p4

    invoke-virtual {p1, p4, v1, p5, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 p1, 0x8

    new-array p2, p1, [F

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p1, :cond_2

    .line 66
    aput p3, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    new-array p1, p2, [Landroid/graphics/drawable/ShapeDrawable;

    aput-object v0, p1, p4

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    mul-int/lit8 v5, v4, 0x2

    move-object v0, p0

    move v2, v4

    move v3, v5

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p0
.end method

.method public static final resolveAttribute(Landroid/view/View;I)Landroid/util/TypedValue;
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "view.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-object v0
.end method
