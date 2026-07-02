.class Lcom/amazon/kedu/flashcards/views/SwipableListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/SwipableListView;->animateRowRemoval(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SwipableListView;

.field final synthetic val$finalObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/SwipableListView;Ljava/lang/Object;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableListView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->val$finalObject:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 85
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableListView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->val$finalObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->deleteItem(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableListView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->access$000(Lcom/amazon/kedu/flashcards/views/SwipableListView;)Landroid/widget/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
