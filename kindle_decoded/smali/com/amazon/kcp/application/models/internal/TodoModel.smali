.class public Lcom/amazon/kcp/application/models/internal/TodoModel;
.super Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.source "TodoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
    }
.end annotation


# instance fields
.field private nextPullTime:Ljava/lang/String;

.field private resultList:Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;-><init>()V

    .line 123
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    .line 135
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    return-object v0
.end method

.method public onWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/WebServiceModelEvent;->getPublisher()Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->resultList:Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/WebServiceModelEvent;->getType()Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/amazon/foundation/internal/WebServiceModel;->sendWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;)V

    :cond_0
    return-void
.end method

.method public setNextPullTime(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoModel;->nextPullTime:Ljava/lang/String;

    return-void
.end method
