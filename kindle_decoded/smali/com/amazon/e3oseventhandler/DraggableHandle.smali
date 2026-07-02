.class public Lcom/amazon/e3oseventhandler/DraggableHandle;
.super Ljava/lang/Object;
.source "DraggableHandle.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INTERNAL_TAG:Ljava/lang/String; = "com.amazon.e3oseventhandler.DraggableHandle"


# instance fields
.field private mDraggble:Lcom/amazon/e3oseventhandler/IDraggable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/DraggableHandle;->getDragger(Landroid/view/View;)Lcom/amazon/e3oseventhandler/IDraggable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/DraggableHandle;->mDraggble:Lcom/amazon/e3oseventhandler/IDraggable;

    return-void
.end method


# virtual methods
.method public getDragger(Landroid/view/View;)Lcom/amazon/e3oseventhandler/IDraggable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lcom/amazon/e3oseventhandler/DraggableHandle;->INTERNAL_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid view object found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/e3oseventhandler/DraggableHandle;->INTERNAL_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class so default touch event will be applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 45
    :cond_0
    instance-of v1, p1, Landroid/widget/RatingBar;

    if-eqz v1, :cond_1

    .line 46
    new-instance v0, Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/RatingBarControl;-><init>(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/DraggableHandle;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/DraggableHandle;->mDraggble:Lcom/amazon/e3oseventhandler/IDraggable;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    invoke-interface {p2, p1}, Lcom/amazon/e3oseventhandler/IDraggable;->doDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
