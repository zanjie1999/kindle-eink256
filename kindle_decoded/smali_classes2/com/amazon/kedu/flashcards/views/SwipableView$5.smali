.class Lcom/amazon/kedu/flashcards/views/SwipableView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/SwipableView;->animatedUndoDeletion()V
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

    .line 304
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$5;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$5;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$602(Lcom/amazon/kedu/flashcards/views/SwipableView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 308
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView$5;->this$0:Lcom/amazon/kedu/flashcards/views/SwipableView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->access$700(Lcom/amazon/kedu/flashcards/views/SwipableView;ZZ)V

    return-void
.end method
