.class public interface abstract Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;
.super Ljava/lang/Object;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/CardPileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuizPileAnimatorListener"
.end annotation


# virtual methods
.method public abstract onPileAnimationEnd()V
.end method

.method public abstract onPileAnimationStart()V
.end method

.method public abstract onQuizCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
.end method

.method public abstract onQuizCardDraggingFinish(Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
.end method
