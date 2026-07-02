.class public Lcom/amazon/ku/ui/view/LinkableTextView;
.super Landroid/widget/TextView;
.source "LinkableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;,
        Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ku/ui/view/LinkableTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    .line 40
    new-instance p1, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;-><init>(Lcom/amazon/ku/ui/view/LinkableTextView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 47
    invoke-direct {p0}, Lcom/amazon/ku/ui/view/LinkableTextView;->initializeAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    .line 40
    new-instance p1, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;-><init>(Lcom/amazon/ku/ui/view/LinkableTextView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 55
    invoke-direct {p0}, Lcom/amazon/ku/ui/view/LinkableTextView;->initializeAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    .line 40
    new-instance p1, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;-><init>(Lcom/amazon/ku/ui/view/LinkableTextView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 63
    invoke-direct {p0}, Lcom/amazon/ku/ui/view/LinkableTextView;->initializeAccessibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    return-object p0
.end method

.method private initializeAccessibility()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->exploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onAfterSetText()V
    .locals 9

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 84
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 85
    iget-object v2, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 86
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 87
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 88
    iget-object v5, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    new-instance v6, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    invoke-direct {v6, v4, v7, v8}, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;-><init>(Ljava/lang/CharSequence;Landroid/graphics/Rect;Lcom/amazon/ku/ui/view/LinkableTextView$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    instance-of p1, p1, Landroid/text/Spanned;

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spanned;

    .line 103
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p2

    const-class p3, Landroid/text/style/URLSpan;

    const/4 p4, 0x0

    invoke-interface {p1, p4, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    .line 104
    array-length p3, p2

    iget-object p5, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-eq p3, p5, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/amazon/ku/ui/view/LinkableTextView;->onAfterSetText()V

    .line 108
    :cond_1
    :goto_0
    array-length p3, p2

    if-ge p4, p3, :cond_3

    .line 109
    aget-object p3, p2, p4

    .line 110
    iget-object p5, p0, Lcom/amazon/ku/ui/view/LinkableTextView;->children:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;

    iget-object p5, p5, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->bounds:Landroid/graphics/Rect;

    .line 112
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 113
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p3

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0, p5}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-eq v0, p3, :cond_2

    .line 123
    iget p3, p5, Landroid/graphics/Rect;->right:I

    int-to-float v2, p3

    .line 126
    :cond_2
    iget p3, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p5, Landroid/graphics/Rect;->top:I

    .line 127
    iget p3, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    .line 128
    iget p3, p5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, v2

    sub-float/2addr p3, v1

    float-to-int p3, p3

    .line 129
    iput p3, p5, Landroid/graphics/Rect;->right:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
