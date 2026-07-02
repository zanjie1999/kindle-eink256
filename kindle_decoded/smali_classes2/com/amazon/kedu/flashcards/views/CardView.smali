.class public Lcom/amazon/kedu/flashcards/views/CardView;
.super Landroid/widget/RelativeLayout;
.source "CardView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;
    }
.end annotation


# instance fields
.field private backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

.field private eventListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

.field private frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/CardView;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p3}, Lcom/amazon/kedu/flashcards/views/CardView;->initialize(I)V

    return-void
.end method

.method private initialize(I)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->front_side:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/views/CardSideView;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    .line 40
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->back_side:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/views/CardSideView;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    .line 42
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setCardSideEventListener(Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setCardSideEventListener(Lcom/amazon/kedu/flashcards/views/CardSideView$CardSideEventListener;)V

    return-void
.end method


# virtual methods
.method protected getBackSideView()Lcom/amazon/kedu/flashcards/views/CardSideView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    return-object v0
.end method

.method public getContentSize(Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/graphics/Point;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getBodySize()Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getBodySize()Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method protected getFrontSideView()Lcom/amazon/kedu/flashcards/views/CardSideView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    return-object v0
.end method

.method public hideFromAccessibilityService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickedEdit(Lcom/amazon/kedu/flashcards/views/CardSideView;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->eventListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getSide()Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;->onClickedEdit(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V

    :cond_0
    return-void
.end method

.method public onClickedSeeMore(Lcom/amazon/kedu/flashcards/views/CardSideView;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->eventListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getSide()Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;->onClickedSeeMore(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V

    :cond_0
    return-void
.end method

.method public setCardEventListener(Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->eventListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    return-void
.end method

.method public setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;
    .locals 1

    .line 87
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;Landroid/view/View;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->frontSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardView;->backSideView:Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method
