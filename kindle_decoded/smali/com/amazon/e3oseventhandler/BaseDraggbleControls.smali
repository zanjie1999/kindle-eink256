.class public Lcom/amazon/e3oseventhandler/BaseDraggbleControls;
.super Ljava/lang/Object;
.source "BaseDraggbleControls.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/IDraggable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mMainView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseDraggbleControls;->isSupported(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseDraggbleControls;->mMainView:Landroid/view/View;

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseDraggbleControls;->setFilter(Landroid/view/View;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public doDrag(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFilter(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
