.class public Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;
.super Ljava/lang/Object;
.source "SyncMetadataParseEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;
    }
.end annotation


# instance fields
.field private final addsVisibleGroups:Z

.field private type:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->type:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    .line 21
    iput-boolean p2, p0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->addsVisibleGroups:Z

    return-void
.end method


# virtual methods
.method public addsVisibleGroups()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->addsVisibleGroups:Z

    return v0
.end method

.method public getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->type:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
