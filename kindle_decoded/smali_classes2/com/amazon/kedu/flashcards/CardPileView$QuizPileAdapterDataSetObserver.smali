.class Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/CardPileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuizPileAdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/CardPileView;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/CardPileView$1;)V
    .locals 0

    .line 1217
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1222
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1223
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1800(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1229
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1230
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1800(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method
