.class public abstract Lcom/amazon/kedu/flashcards/DeckAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;
    }
.end annotation


# instance fields
.field private backLoadableContentArea:Landroid/graphics/Point;

.field private deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private frontLoadableContentArea:Landroid/graphics/Point;

.field private loadContentCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadContentCallbacks:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-void
.end method

.method private static getLoadableContentHeight(Landroid/graphics/Point;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 44
    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getLoadableContentWidth(Landroid/graphics/Point;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 35
    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private runLoadContentCallbacks()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->frontLoadableContentArea:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->backLoadableContentArea:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadContentCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 143
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadContentCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAllCardsCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result v0

    return v0
.end method

.method protected getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getLoadableContentHeight(Lcom/amazon/kedu/flashcards/utils/Side;)I
    .locals 1

    .line 163
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->frontLoadableContentArea:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentHeight(Landroid/graphics/Point;)I

    move-result p1

    return p1

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->backLoadableContentArea:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentHeight(Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method protected getLoadableContentWidth(Lcom/amazon/kedu/flashcards/utils/Side;)I
    .locals 1

    .line 151
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->frontLoadableContentArea:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentWidth(Landroid/graphics/Point;)I

    move-result p1

    return p1

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->backLoadableContentArea:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentWidth(Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method public getUndecidedCard(I)Lcom/amazon/kedu/flashcards/models/CardModel;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCard(I)Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object p1

    return-object p1
.end method

.method public getUndecidedCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result v0

    return v0
.end method

.method public iterateViaCorrect()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->markCorrect()V

    return-void
.end method

.method public iterateViaDismiss()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->dismiss()V

    return-void
.end method

.method public iterateViaIncorrect()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->markIncorrect()V

    return-void
.end method

.method protected abstract loadCardContent(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
.end method

.method protected loadCardWhenReady(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;-><init>(Lcom/amazon/kedu/flashcards/DeckAdapter;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    .line 176
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->frontLoadableContentArea:Landroid/graphics/Point;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->backLoadableContentArea:Landroid/graphics/Point;

    if-nez p1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->run()V

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadContentCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    .line 120
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoadableContentArea(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->frontLoadableContentArea:Landroid/graphics/Point;

    .line 126
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->backLoadableContentArea:Landroid/graphics/Point;

    .line 128
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->runLoadContentCallbacks()V

    return-void
.end method

.method public shuffle()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->shuffle()V

    .line 113
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
