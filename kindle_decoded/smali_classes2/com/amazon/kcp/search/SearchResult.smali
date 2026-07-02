.class public abstract Lcom/amazon/kcp/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchResult$ClickHandler;
    }
.end annotation


# instance fields
.field private clickHandler:Lcom/amazon/kcp/search/SearchResult$ClickHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public abstract getViewType()I
.end method

.method protected notifyClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchResult;->clickHandler:Lcom/amazon/kcp/search/SearchResult$ClickHandler;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1}, Lcom/amazon/kcp/search/SearchResult$ClickHandler;->onClick(Lcom/amazon/kcp/search/SearchResult;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setClickHandler(Lcom/amazon/kcp/search/SearchResult$ClickHandler;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchResult;->clickHandler:Lcom/amazon/kcp/search/SearchResult$ClickHandler;

    return-void
.end method
