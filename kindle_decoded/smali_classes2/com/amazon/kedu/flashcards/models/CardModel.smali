.class public Lcom/amazon/kedu/flashcards/models/CardModel;
.super Ljava/lang/Object;
.source "CardModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kedu/flashcards/models/CardModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_QUIZ_SORT_INDEX:Ljava/lang/Double;


# instance fields
.field private back:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

.field private dateCreated:Ljava/lang/Long;

.field private dateEdited:Ljava/lang/Long;

.field private front:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

.field private id:Ljava/lang/String;

.field private quizSortIndex:Ljava/lang/Double;

.field private quizState:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

.field private sortIndex:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/models/CardModel;->DEFAULT_QUIZ_SORT_INDEX:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kedu/flashcards/models/CardModel;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->sortIndex:Ljava/lang/Double;

    .line 18
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;->UNDECIDED:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizState:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    .line 19
    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardModel;->DEFAULT_QUIZ_SORT_INDEX:Ljava/lang/Double;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizSortIndex:Ljava/lang/Double;

    .line 28
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->id:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->setFront(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/amazon/kedu/flashcards/models/CardModel;->setBack(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    .line 31
    invoke-virtual {p0, p4, p5}, Lcom/amazon/kedu/flashcards/models/CardModel;->setDateCreated(J)V

    .line 32
    invoke-virtual {p0, p6, p7}, Lcom/amazon/kedu/flashcards/models/CardModel;->setDateEdited(J)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kedu/flashcards/models/CardModel;)I
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSortIndex()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardSideModel;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getDateCreated()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getDateCreated()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kedu/flashcards/models/CardModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->compareTo(Lcom/amazon/kedu/flashcards/models/CardModel;)I

    move-result p1

    return p1
.end method

.method public getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->back:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/Long;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->dateCreated:Ljava/lang/Long;

    return-object v0
.end method

.method public getDateEdited()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->dateEdited:Ljava/lang/Long;

    return-object v0
.end method

.method public getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->front:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getQuizSortIndex()Ljava/lang/Double;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizSortIndex:Ljava/lang/Double;

    return-object v0
.end method

.method public getQuizState()Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizState:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    return-object v0
.end method

.method public getSide(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    return-object p1
.end method

.method public getSortIndex()Ljava/lang/Double;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->sortIndex:Ljava/lang/Double;

    return-object v0
.end method

.method protected setBack(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->back:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-void
.end method

.method protected setDateCreated(J)V
    .locals 0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->dateCreated:Ljava/lang/Long;

    return-void
.end method

.method protected setDateEdited(J)V
    .locals 0

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->dateEdited:Ljava/lang/Long;

    return-void
.end method

.method protected setFront(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->front:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-void
.end method

.method public setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizSortIndex:Ljava/lang/Double;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;Ljava/lang/Double;)V

    return-void
.end method

.method public setQuizState(Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;Ljava/lang/Double;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizState:Lcom/amazon/kedu/flashcards/models/CardModel$QuizState;

    .line 138
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->quizSortIndex:Ljava/lang/Double;

    return-void
.end method

.method public setSortIndex(Ljava/lang/Double;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->sortIndex:Ljava/lang/Double;

    return-void
.end method

.method public swapSides()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->front:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    .line 38
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->back:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    iput-object v1, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->front:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    .line 39
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/models/CardModel;->back:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    return-void
.end method
