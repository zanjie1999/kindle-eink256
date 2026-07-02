.class public Lcom/amazon/kedu/flashcards/models/QuizDeckModel;
.super Lcom/amazon/kedu/flashcards/models/DeckModel;
.source "QuizDeckModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;
    }
.end annotation


# instance fields
.field private cardModelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private correctCards:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private incorrectCards:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private undecidedCards:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;-><init>(Lcom/amazon/kedu/flashcards/models/QuizDeckModel;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->cardModelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kedu/flashcards/models/DeckModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 22
    new-instance p1, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;-><init>(Lcom/amazon/kedu/flashcards/models/QuizDeckModel;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->cardModelComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$001(Lcom/amazon/kedu/flashcards/models/QuizDeckModel;)Ljava/util/Comparator;
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getCardModelComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method private moveAllToUndecided(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/models/CardModel;

    .line 90
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    if-eq v2, v3, :cond_0

    .line 92
    invoke-virtual {v1, v3}, Lcom/amazon/kedu/flashcards/models/CardModel;->setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)V

    .line 93
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;

    move-object v4, p0

    check-cast v4, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v3, v4, v1}, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->cardModelComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->updateTimeEdited()V

    return-void
.end method

.method private moveTopUndecidedCard(Ljava/util/Stack;Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;",
            "Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;",
            ")V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/models/CardModel;

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getNextQuizSortIndex(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;Ljava/lang/Double;)V

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance p2, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;

    move-object v1, p0

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    check-cast v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {p2, v1, v0}, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->updateTimeEdited()V

    :cond_0
    return-void
.end method

.method private removeIfInPile(Ljava/lang/Object;Ljava/util/Stack;)Z
    .locals 2

    .line 297
    invoke-virtual {p2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 301
    invoke-virtual {p2, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z
    .locals 3

    .line 245
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    if-ne v0, v2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    if-ne p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->markCorrect()V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->markIncorrect()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->updateTimeEdited()V

    :cond_0
    return-void
.end method

.method public getAllCardsCount()I
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v0

    return v0
.end method

.method public getCorrectCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getIncorrectCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method protected getNextQuizSortIndex(Ljava/util/List;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    .line 150
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizSortIndex()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getTopUndecidedCard()Lcom/amazon/kedu/flashcards/models/CardModel;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/models/CardModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUndecidedCard(I)Lcom/amazon/kedu/flashcards/models/CardModel;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    return-object p1
.end method

.method public getUndecidedCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public isQuizComplete()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuizStarted()Z
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markCorrect()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->CORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->moveTopUndecidedCard(Ljava/util/Stack;Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)V

    return-void
.end method

.method public markIncorrect()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->INCORRECT:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->moveTopUndecidedCard(Ljava/util/Stack;Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .line 273
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/util/Stack;

    .line 275
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    aput-object v5, v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 276
    aget-object v5, v2, v3

    .line 278
    invoke-direct {p0, p1, v5}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->removeIfInPile(Ljava/lang/Object;Ljava/util/Stack;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getCards()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->moveAllToUndecided(Ljava/util/Collection;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 112
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Incorrect:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->moveAllToUndecided(Ljava/util/Collection;)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Correct:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    if-ne p1, v0, :cond_2

    .line 121
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->moveAllToUndecided(Ljava/util/Collection;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInitialCards(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    .line 61
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->cardModelComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 65
    sget-object v2, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$2;->$SwitchMap$com$amazon$kedu$flashcards$models$CardModel$QuizState:[I

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->incorrectCards:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->correctCards:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->undecidedCards:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_3
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setInitialCards(Ljava/util/List;)V

    return-void
.end method

.method public shuffle()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->shuffle()V

    .line 292
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    return-void
.end method
