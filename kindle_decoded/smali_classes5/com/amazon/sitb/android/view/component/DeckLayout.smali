.class public Lcom/amazon/sitb/android/view/component/DeckLayout;
.super Landroid/widget/LinearLayout;
.source "DeckLayout.java"


# instance fields
.field private showResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/view/component/DeckLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/sitb/android/view/component/DeckLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object p3, Lcom/amazon/kindle/sitb/R$styleable;->DeckLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/amazon/kindle/sitb/R$styleable;->DeckLayout_show:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/sitb/android/view/component/DeckLayout;->showResourceId:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    iget v0, p0, Lcom/amazon/sitb/android/view/component/DeckLayout;->showResourceId:I

    if-ltz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/view/component/DeckLayout;->show(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/component/DeckLayout;->showNone()V

    :goto_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    .line 58
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showNone()V
    .locals 3

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
