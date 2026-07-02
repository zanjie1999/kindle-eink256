.class public interface abstract Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;
.super Ljava/lang/Object;
.source "PayoffFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/payoff/PayoffFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PayoffListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onBookDetailClicked(Lcom/amazon/bookwizard/service/PayoffRec;)V
.end method

.method public abstract onNext()V
.end method

.method public abstract postNetworkFailureDialog()V
.end method

.method public abstract postSelectionLimitExceededDialog()V
.end method
