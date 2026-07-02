.class Lcom/amazon/android/widget/PagingButtonWidgetAttrs;
.super Ljava/lang/Object;
.source "PagingButtonWidgetAttrs.java"


# instance fields
.field final mButtonColor:I

.field final mButtonDivider:Landroid/graphics/drawable/Drawable;

.field final mButtonTextColor:I

.field final mWidgetStrokeColor:I

.field final mWidgetStrokeWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1010031

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x1010036

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v4, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget:[I

    invoke-virtual {p1, p2, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    :try_start_0
    sget p2, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget_buttonColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 61
    sget p2, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget_buttonTextColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 62
    sget p2, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget_buttonDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 63
    sget v4, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget_widgetStrokeColor:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 64
    sget v4, Lcom/amazon/kindle/wl/R$styleable;->PagingButtonWidget_widgetStrokeWidth:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw p2

    :cond_0
    const/4 p2, 0x0

    .line 70
    :goto_0
    iput v0, p0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonColor:I

    .line 71
    iput v1, p0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonTextColor:I

    .line 72
    iput-object p2, p0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    .line 73
    iput v3, p0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mWidgetStrokeColor:I

    .line 74
    iput v2, p0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mWidgetStrokeWidth:I

    return-void
.end method

.method private getColorFromAttribute(Landroid/content/Context;I)I
    .locals 3

    .line 84
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 90
    iget p2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 91
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return p2
.end method
