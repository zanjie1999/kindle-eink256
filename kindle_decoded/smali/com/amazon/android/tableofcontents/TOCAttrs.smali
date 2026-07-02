.class public final Lcom/amazon/android/tableofcontents/TOCAttrs;
.super Ljava/lang/Object;
.source "TOCAttrs.kt"


# instance fields
.field private final closeButtonColor:I

.field private final closeButtonHeight:I

.field private final closeButtonImage:Landroid/graphics/drawable/Drawable;

.field private final closeButtonWidth:I

.field private final dividerColor:I

.field private final textPrimaryColor:I

.field private final textSecondaryColor:I

.field private final tocEntryBackgroundColor:I

.field private final tocHeaderBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocTextPrimaryColor:I

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->textPrimaryColor:I

    .line 31
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocTextSecondaryColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->textSecondaryColor:I

    .line 32
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocHeaderBackgroundColor:I

    const v0, -0xff0001

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->tocHeaderBackgroundColor:I

    .line 33
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocEntryBackgroundColor:I

    const v0, -0xffff01

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->tocEntryBackgroundColor:I

    .line 34
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocDividerColor:I

    const v0, -0xff01

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->dividerColor:I

    .line 35
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocCloseButtonColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonColor:I

    .line 38
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocCloseButtonWidth:I

    .line 39
    sget p4, Lcom/amazon/kindle/toc/R$dimen;->fallback_close_button_size:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 38
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonWidth:I

    .line 40
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocCloseButtonHeight:I

    .line 41
    sget p4, Lcom/amazon/kindle/toc/R$dimen;->fallback_close_button_size:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 40
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonHeight:I

    .line 44
    sget p3, Lcom/amazon/kindle/toc/R$styleable;->TableOfContents_tocCloseButtonImage:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget p3, Lcom/amazon/kindle/toc/R$drawable;->ic_close:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const-string/jumbo p1, "res.getDrawable(R.drawable.ic_close, null)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonImage:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getCloseButtonColor()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonColor:I

    return v0
.end method

.method public final getCloseButtonHeight()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonHeight:I

    return v0
.end method

.method public final getCloseButtonImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCloseButtonWidth()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->closeButtonWidth:I

    return v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->dividerColor:I

    return v0
.end method

.method public final getTextPrimaryColor()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->textPrimaryColor:I

    return v0
.end method

.method public final getTextSecondaryColor()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->textSecondaryColor:I

    return v0
.end method

.method public final getTocEntryBackgroundColor()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->tocEntryBackgroundColor:I

    return v0
.end method

.method public final getTocHeaderBackgroundColor()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/android/tableofcontents/TOCAttrs;->tocHeaderBackgroundColor:I

    return v0
.end method
