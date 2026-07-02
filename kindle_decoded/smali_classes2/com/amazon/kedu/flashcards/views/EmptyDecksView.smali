.class public Lcom/amazon/kedu/flashcards/views/EmptyDecksView;
.super Lcom/amazon/kedu/flashcards/views/EmptyView;
.source "EmptyDecksView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/EmptyView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyDecksView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyDecksView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_empty_add_deck:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->setLabelText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->xRayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_empty_add_deck_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_empty_add_deck_description_no_xray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->setDescriptionText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onClickAdd(Landroid/view/View;)V
    .locals 3

    .line 46
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->EMPTY_DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const-string v2, "flashcardOrigin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->setFlashcardCreationData(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
