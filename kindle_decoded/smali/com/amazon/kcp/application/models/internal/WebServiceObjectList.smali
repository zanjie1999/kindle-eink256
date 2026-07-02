.class public Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;
.super Lcom/amazon/foundation/internal/WebServiceModel;
.source "WebServiceObjectList.java"


# static fields
.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private awaitedCount:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/foundation/internal/WebServiceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/amazon/foundation/internal/WebServiceModel;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->awaitedCount:I

    return-void
.end method

.method private onItemUpdated(Lcom/amazon/foundation/internal/WebServiceModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 171
    sget-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_UPDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->sendEvent(Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;I)V

    :cond_0
    return-void
.end method

.method private sendEvent(Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;I)V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent;-><init>(Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;I)V

    .line 37
    sget-object p1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/foundation/internal/WebServiceModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 97
    sget-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_ADDED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->sendEvent(Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;I)V

    .line 98
    sget-object p1, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/WebServiceModel;->sendWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;)V

    goto :goto_0

    .line 100
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t add null item in WebSiteObjectList!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 177
    instance-of v0, p1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lcom/amazon/foundation/internal/WebServiceModel;
    .locals 1

    if-ltz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/foundation/internal/WebServiceModel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isLoaded()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->awaitedCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/WebServiceModelEvent;->getPublisher()Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/WebServiceModelEvent;->getType()Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/WebServiceModelEvent;->getPublisher()Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->onItemUpdated(Lcom/amazon/foundation/internal/WebServiceModel;)V

    :cond_0
    return-void
.end method

.method public setLoaded()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->awaitedCount:I

    return-void
.end method
