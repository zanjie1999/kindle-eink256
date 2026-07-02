.class Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;
.super Ljava/lang/Object;
.source "QuizDeckModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/models/QuizDeckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/models/QuizDeckModel;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/models/QuizDeckModel;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;->this$0:Lcom/amazon/kedu/flashcards/models/QuizDeckModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/models/CardModel;)I
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;->this$0:Lcom/amazon/kedu/flashcards/models/QuizDeckModel;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->access$001(Lcom/amazon/kedu/flashcards/models/QuizDeckModel;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizSortIndex()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getQuizSortIndex()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    check-cast p2, Lcom/amazon/kedu/flashcards/models/CardModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$1;->compare(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/models/CardModel;)I

    move-result p1

    return p1
.end method
