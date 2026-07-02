.class public Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field private isExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded:Z

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    .line 85
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->isExpanded:Z

    return-void
.end method
