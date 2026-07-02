.class public Lcom/amazon/kedu/flashcards/views/EmptyDeckView;
.super Lcom/amazon/kedu/flashcards/views/EmptyView;
.source "EmptyDeckView.java"


# instance fields
.field private deckId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/EmptyView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_empty_add_card:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->setLabelText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClickAdd(Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->deckId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "KindleFlashcards"

    const-string v0, "AddCardFromQuizWithBigPlusButton"

    .line 46
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->deckId:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {p1, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setDeckId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->deckId:Ljava/lang/String;

    return-void
.end method
