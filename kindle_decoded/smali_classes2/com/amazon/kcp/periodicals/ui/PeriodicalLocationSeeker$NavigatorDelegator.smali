.class public interface abstract Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;
.super Ljava/lang/Object;
.source "PeriodicalLocationSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigatorDelegator"
.end annotation


# virtual methods
.method public abstract getArticleTitle()Ljava/lang/String;
.end method

.method public abstract gotoAllArticles()V
.end method

.method public abstract isFirstArticle()Z
.end method

.method public abstract isLastArticle()Z
.end method

.method public abstract navigateToNextChapter()V
.end method

.method public abstract navigateToPreviousChapter()V
.end method
