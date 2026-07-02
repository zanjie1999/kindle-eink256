.class public Lcom/amazon/kedu/flashcards/CardPileAdapter;
.super Lcom/amazon/kedu/flashcards/DeckAdapter;
.source "CardPileAdapter.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckAdapter;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v2, " "

    if-ne p1, v1, :cond_0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_front:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_back:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCardSideContent(Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
    .locals 3

    .line 93
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/views/CardView;->hideFromAccessibilityService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_quiz_card_behind_content_ghl:I

    invoke-virtual {p3, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    goto :goto_0

    .line 102
    :cond_0
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_quiz_card_content_ghl:I

    invoke-virtual {p3, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 105
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentWidth(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentHeight(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result v2

    invoke-virtual {p3, v0, p2, v1, v2}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->setGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V

    .line 107
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_accessibility_image_content:I

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p3, p1}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 113
    :cond_1
    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/views/CardView;->hideFromAccessibilityService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_quiz_card_behind_content_text:I

    invoke-virtual {p3, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kedu/flashcards/views/LoadableTextView;

    goto :goto_2

    .line 119
    :cond_2
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_3

    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_quiz_card_content_text:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_quiz_card_content_back_text:I

    .line 120
    :goto_1
    invoke-virtual {p3, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kedu/flashcards/views/LoadableTextView;

    .line 123
    :goto_2
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentWidth(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentHeight(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->setText(Ljava/lang/CharSequence;II)V

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p3, p1}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getUndecidedCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getUndecidedCard(I)Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    if-lez p1, :cond_0

    .line 47
    new-instance p3, Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance p3, Lcom/amazon/kedu/flashcards/views/QuizCardView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;-><init>(Landroid/content/Context;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileAdapter;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    invoke-virtual {p3, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardEventListener(Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getUndecidedCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setRemainingCount(I)V

    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadCardWhenReady(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    return-object p3
.end method

.method public isComplete()Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getUndecidedCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWholeDeckEmpty()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getAllCardsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadCardContent(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->loadCardSideContent(Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    .line 88
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->loadCardSideContent(Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    return-void
.end method
