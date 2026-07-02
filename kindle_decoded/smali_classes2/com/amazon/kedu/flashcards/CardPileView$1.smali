.class Lcom/amazon/kedu/flashcards/CardPileView$1;
.super Ljava/lang/Object;
.source "CardPileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->setAccessibilityView(Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/CardPileView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$1;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$1;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$100(Lcom/amazon/kedu/flashcards/CardPileView;)Lcom/amazon/kedu/flashcards/views/QuizCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->flip()V

    return-void
.end method
