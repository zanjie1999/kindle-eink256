.class Lcom/amazon/kedu/flashcards/views/SwipableView$4;
.super Ljava/lang/Object;
.source "SwipableView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 106
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$300(Lcom/amazon/kedu/flashcards/views/SwipableView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$600(Lcom/amazon/kedu/flashcards/views/SwipableView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$400(Lcom/amazon/kedu/flashcards/views/SwipableView;)Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$400(Lcom/amazon/kedu/flashcards/views/SwipableView;)Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$4;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$500(Lcom/amazon/kedu/flashcards/views/SwipableView;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;->onLongClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
