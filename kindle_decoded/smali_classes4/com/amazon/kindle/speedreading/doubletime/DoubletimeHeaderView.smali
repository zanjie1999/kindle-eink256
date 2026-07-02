.class public Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;
.super Landroid/widget/LinearLayout;
.source "DoubletimeHeaderView.java"


# instance fields
.field params:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeHeaderView;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    return p1
.end method
