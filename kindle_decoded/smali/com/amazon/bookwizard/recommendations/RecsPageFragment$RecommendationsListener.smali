.class public interface abstract Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;
.super Ljava/lang/Object;
.source "RecsPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/recommendations/RecsPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecommendationsListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onCoverClicked(Lcom/amazon/bookwizard/data/Recommendation;)V
.end method

.method public abstract onDownloadClicked(Lcom/amazon/bookwizard/data/Recommendation;Z)V
.end method

.method public abstract onKuSignUpClicked(I)V
.end method

.method public abstract onNext()V
.end method
