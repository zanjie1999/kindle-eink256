.class Lcom/amazon/kedu/flashcards/views/SwipableView$2;
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

    .line 84
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$2;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$2;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$100(Lcom/amazon/kedu/flashcards/views/SwipableView;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$200(Lcom/amazon/kedu/flashcards/views/SwipableView;Landroid/view/MotionEvent;)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$2;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
