.class public interface abstract Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;
.super Ljava/lang/Object;
.source "SeeMoreButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/views/SeeMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Expandable"
.end annotation


# virtual methods
.method public abstract addExpandabilityChangedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
.end method

.method public abstract getExpandableButtonLabel()Ljava/lang/String;
.end method

.method public abstract removeExpandabilityChancedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
.end method

.method public abstract shouldExpand()Z
.end method
