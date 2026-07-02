.class public Lcom/amazon/kedu/flashcards/models/DeckModel;
.super Ljava/lang/Object;
.source "DeckModel.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kedu/flashcards/models/DeckModel;",
        ">;",
        "Ljava/util/Collection<",
        "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
        ">;"
    }
.end annotation


# static fields
.field private static cardModelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private cardsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private dateCreated:Ljava/lang/Long;

.field private dateEdited:Ljava/lang/Long;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sortIndex:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kedu/flashcards/models/DeckModel$1;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel$1;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardModelComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kedu/flashcards/models/DeckModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10

    const-wide/16 v0, 0x0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kedu/flashcards/models/DeckModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Double;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p3, p4}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setDateCreated(J)V

    .line 54
    invoke-virtual {p0, p5, p6}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setDateEdited(J)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setInitialCards(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->setSortIndex(Ljava/lang/Double;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(I)Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->setSortIndex(Ljava/lang/Double;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;)Z"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 209
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 213
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->add(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 264
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public compareTo(Lcom/amazon/kedu/flashcards/models/DeckModel;)I
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kedu/flashcards/models/DeckModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->compareTo(Lcom/amazon/kedu/flashcards/models/DeckModel;)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 192
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Lcom/amazon/kedu/flashcards/models/CardModel;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object p1
.end method

.method protected getCardModelComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/amazon/kedu/flashcards/models/CardModel;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardModelComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected getCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDateCreated()J
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->dateCreated:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateEdited()J
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->dateEdited:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortIndex()Ljava/lang/Double;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->sortIndex:Ljava/lang/Double;

    return-object v0
.end method

.method public indexOf(Lcom/amazon/kedu/flashcards/models/CardModel;)I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 170
    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    .line 171
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->indexOf(Lcom/amazon/kedu/flashcards/models/CardModel;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->removeAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeAt(I)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 241
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->clear()V

    .line 254
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected setDateCreated(J)V
    .locals 0

    .line 299
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->dateCreated:Ljava/lang/Long;

    return-void
.end method

.method protected setDateEdited(J)V
    .locals 0

    .line 309
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->dateEdited:Ljava/lang/Long;

    return-void
.end method

.method public setInitialCards(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    .line 77
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getCardModelComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 81
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cardsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setSortIndex(Ljava/lang/Double;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->sortIndex:Ljava/lang/Double;

    return-void
.end method

.method public shuffle()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 333
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 334
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 335
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v2, v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->setSortIndex(Ljava/lang/Double;)V

    .line 338
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;

    move-object v2, p0

    check-cast v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/DeckModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateTimeEdited()V
    .locals 2

    .line 346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v0

    .line 347
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setDateEdited(J)V

    return-void
.end method
