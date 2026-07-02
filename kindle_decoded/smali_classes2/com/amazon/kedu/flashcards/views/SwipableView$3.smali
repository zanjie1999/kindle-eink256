.class Lcom/amazon/kedu/flashcards/views/SwipableView$3;
.super Ljava/lang/Object;
.source "SwipableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/SwipableView;->initialize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$3;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$3;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$300(Lcom/amazon/kedu/flashcards/views/SwipableView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$3;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$400(Lcom/amazon/kedu/flashcards/views/SwipableView;)Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$3;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$400(Lcom/amazon/kedu/flashcards/views/SwipableView;)Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$3;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$500(Lcom/amazon/kedu/flashcards/views/SwipableView;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;->onClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
