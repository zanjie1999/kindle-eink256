.class public Lcom/amazon/kedu/flashcards/views/CardSideView;
.super Landroid/widget/RelativeLayout;
.source "CardSideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;
    }
.end annotation


# static fields
.field private static final INVALID_RESOURCE_ID:I


# instance fields
.field private body:Landroid/widget/FrameLayout;

.field private editButton:Landroid/view/View;

.field private eventListener:Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;

.field private seeMoreButton:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

.field private side:Lcom/amazon/kedu/flashcards/utils/Side;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setAttributes(Ljava/lang/Integer;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;->initialize(ILcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setAttributes(Ljava/lang/Integer;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(ILcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getBody()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getSeeMoreButton()Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->seeMoreButton:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    .line 93
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getEditButton()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->editButton:Landroid/view/View;

    .line 95
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setSide(Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->seeMoreButton:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->editButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setAttributes(Ljava/lang/Integer;Landroid/util/AttributeSet;)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->CardSideView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 51
    :try_start_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/utils/Side;->values()[Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$styleable;->CardSideView_side:I

    sget-object v3, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    aget-object v0, v0, v1

    if-nez p1, :cond_0

    .line 55
    sget p1, Lcom/amazon/kedu/flashcards/R$styleable;->CardSideView_layoutResource:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->initialize(ILcom/amazon/kedu/flashcards/utils/Side;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    throw p1
.end method


# virtual methods
.method protected getBody()Landroid/widget/FrameLayout;
    .locals 1

    .line 83
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->body:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getBodySize()Landroid/graphics/Point;
    .locals 3

    .line 68
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method protected getEditButton()Landroid/view/View;
    .locals 1

    .line 78
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->edit_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getSeeMoreButton()Lcom/amazon/kedu/flashcards/views/SeeMoreButton;
    .locals 1

    .line 73
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->see_more_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    return-object v0
.end method

.method public getSide()Lcom/amazon/kedu/flashcards/utils/Side;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->side:Lcom/amazon/kedu/flashcards/utils/Side;

    return-object v0
.end method

.method public inflateBodyView(IZ)Landroid/view/View;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->eventListener:Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->seeMoreButton:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    if-ne p1, v1, :cond_0

    .line 150
    invoke-interface {v0, p0}, Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;->onClickedSeeMore(Lcom/amazon/kedu/flashcards/views/CardSideView;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->editButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 154
    invoke-interface {v0, p0}, Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;->onClickedEdit(Lcom/amazon/kedu/flashcards/views/CardSideView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->seeMoreButton:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    if-eqz v1, :cond_1

    .line 128
    check-cast p1, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->setTarget(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;)V

    :cond_1
    return-void
.end method

.method public setCardSideEventListener(Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->eventListener:Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;

    return-void
.end method

.method public setSide(Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardSideView;->side:Lcom/amazon/kedu/flashcards/utils/Side;

    return-void
.end method
