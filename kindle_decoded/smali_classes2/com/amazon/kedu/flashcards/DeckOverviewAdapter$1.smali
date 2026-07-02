.class Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;
.super Ljava/lang/Object;
.source "DeckOverviewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;->compare(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)I

    move-result p1

    return p1
.end method
