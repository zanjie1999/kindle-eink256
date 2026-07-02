.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;
.super Ljava/lang/Object;
.source "RelationshipSyncData.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private syncData:Lcom/audible/hushpuppy/sync/ISyncData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;)V
    .locals 2

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalAudiobookFileFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    .line 48
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/RelationshipSyncData;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    :cond_0
    return-void
.end method
