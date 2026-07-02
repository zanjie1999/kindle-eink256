.class public abstract Lcom/amazon/e3oseventhandler/BaseProgressHandler;
.super Ljava/lang/Object;
.source "BaseProgressHandler.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/IE3OSEventHandler;


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mMainView:Landroid/view/View;

.field protected mScrollFilter:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 1

    .line 81
    iput-object p2, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mBundle:Landroid/os/Bundle;

    .line 82
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mMainView:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 71
    new-instance p1, Lcom/amazon/e3oseventhandler/BaseProgressHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/BaseProgressHandler$1;-><init>(Lcom/amazon/e3oseventhandler/BaseProgressHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetView(Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mMainView:Landroid/view/View;

    .line 59
    invoke-interface {p0, p1}, Lcom/amazon/e3oseventhandler/IE3OSEventHandler;->setWidgetViewInternal(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->setFilter(Landroid/view/View;)V

    return-void
.end method
