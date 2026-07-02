.class public Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.super Lcom/amazon/foundation/internal/WebServiceModel;
.source "CAsyncModel.java"


# instance fields
.field private state:Lcom/amazon/kcp/application/models/IAsyncModel$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/amazon/foundation/internal/WebServiceModel;-><init>()V

    .line 19
    sget-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->NONE:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    return-void
.end method


# virtual methods
.method public setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    .line 42
    sget-object p1, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->CHANGE:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/WebServiceModel;->sendWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;)V

    .line 44
    iget-object p1, p0, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    sget-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    if-ne p1, v0, :cond_0

    .line 45
    sget-object p1, Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;->FINISHED:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/WebServiceModel;->sendWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;)V

    :cond_0
    return-void
.end method
