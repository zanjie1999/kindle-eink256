.class final Lcom/amazon/kedu/flashcards/models/DeckModel$1;
.super Ljava/lang/Object;
.source "DeckModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/DeckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kedu/flashcards/models/CardModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/models/CardModel;)I
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    check-cast p2, Lcom/amazon/kedu/flashcards/models/CardModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/flashcards/models/DeckModel$1;->compare(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/models/CardModel;)I

    move-result p1

    return p1
.end method
