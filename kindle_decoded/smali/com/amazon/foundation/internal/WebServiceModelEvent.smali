.class public Lcom/amazon/foundation/internal/WebServiceModelEvent;
.super Ljava/lang/Object;
.source "WebServiceModelEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;
    }
.end annotation


# instance fields
.field private model:Lcom/amazon/foundation/internal/WebServiceModel;

.field private type:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;Lcom/amazon/foundation/internal/WebServiceModel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/foundation/internal/WebServiceModelEvent;->type:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    .line 24
    iput-object p2, p0, Lcom/amazon/foundation/internal/WebServiceModelEvent;->model:Lcom/amazon/foundation/internal/WebServiceModel;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/foundation/internal/WebServiceModel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/foundation/internal/WebServiceModelEvent;->model:Lcom/amazon/foundation/internal/WebServiceModel;

    return-object v0
.end method

.method public getType()Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/foundation/internal/WebServiceModelEvent;->type:Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
