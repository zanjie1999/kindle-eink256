.class public Lcom/amazon/e3oseventhandler/PaginationHandler;
.super Ljava/lang/Object;
.source "PaginationHandler.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mPaginator:Lcom/amazon/e3oseventhandler/Paginator;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/PaginationHandler;->getPaginator(Landroid/view/View;)Lcom/amazon/e3oseventhandler/Paginator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/PaginationHandler;->mPaginator:Lcom/amazon/e3oseventhandler/Paginator;

    return-void
.end method


# virtual methods
.method public getPaginator(Landroid/view/View;)Lcom/amazon/e3oseventhandler/Paginator;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 45
    :cond_0
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 46
    new-instance v0, Lcom/amazon/e3oseventhandler/WebView;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/WebView;-><init>(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/PaginationHandler;->mPaginator:Lcom/amazon/e3oseventhandler/Paginator;

    invoke-interface {v0, p1}, Lcom/amazon/e3oseventhandler/Paginator;->doPagination(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/PaginationHandler;->mPaginator:Lcom/amazon/e3oseventhandler/Paginator;

    invoke-interface {v0, p2}, Lcom/amazon/e3oseventhandler/Paginator;->setBundle(Landroid/os/Bundle;)V

    .line 59
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/PaginationHandler;->mPaginator:Lcom/amazon/e3oseventhandler/Paginator;

    invoke-interface {p2, p1}, Lcom/amazon/e3oseventhandler/Paginator;->doPagination(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
