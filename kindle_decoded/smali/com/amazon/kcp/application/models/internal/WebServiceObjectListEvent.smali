.class public Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent;
.super Ljava/lang/Object;
.source "WebServiceObjectListEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
