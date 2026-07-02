.class public Lcom/amazon/kindle/krx/events/LocalBookItemEvent;
.super Ljava/lang/Object;
.source "LocalBookItemEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;
    }
.end annotation


# instance fields
.field private syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

.field private type:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->type:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    .line 53
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    return-void
.end method


# virtual methods
.method public getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->type:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
