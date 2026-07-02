.class public Lcom/amazon/kindle/sync/SynchronizationManagerEvent;
.super Ljava/lang/Object;
.source "SynchronizationManagerEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;
    }
.end annotation


# instance fields
.field private syncParameters:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

.field private type:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->type:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    .line 25
    iput-object p2, p0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->syncParameters:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    return-void
.end method


# virtual methods
.method public getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->syncParameters:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->type:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
