.class public Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;
.super Ljava/lang/Object;
.source "AllTodoItemsHandledEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;
    }
.end annotation


# instance fields
.field private todoEvent:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;->todoEvent:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    return-void
.end method


# virtual methods
.method public getTodoEvent()Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;->todoEvent:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
