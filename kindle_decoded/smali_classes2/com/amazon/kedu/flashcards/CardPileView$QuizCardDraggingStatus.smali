.class public Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;
.super Ljava/lang/Object;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/CardPileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuizCardDraggingStatus"
.end annotation


# instance fields
.field private percentCommitted:F

.field private pileSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/CardPileView;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;F)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->pileSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 1246
    iput p3, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->percentCommitted:F

    return-void
.end method


# virtual methods
.method public getPercentCommitted()F
    .locals 1

    .line 1251
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->percentCommitted:F

    return v0
.end method

.method public getPileSection()Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->pileSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    return-object v0
.end method
