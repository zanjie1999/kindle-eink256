.class public Lcom/amazon/kedu/flashcards/utils/MostRecentlyEditedComparator;
.super Ljava/lang/Object;
.source "MostRecentlyEditedComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)I
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/flashcards/utils/MostRecentlyEditedComparator;->compare(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)I

    move-result p1

    return p1
.end method
