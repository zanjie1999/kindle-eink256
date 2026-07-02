.class public final Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;
.super Ljava/lang/Object;
.source "HushpuppySynchronizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LocalAudiobookFileFoundEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;


# direct methods
.method protected constructor <init>(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;->this$0:Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;)V
    .locals 3

    .line 86
    invoke-static {}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Received LocalAudiobookFileFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Current audiobook is not owned, not setting sync data"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;->this$0:Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$102(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;Lcom/audible/hushpuppy/sync/ISyncData;)Lcom/audible/hushpuppy/sync/ISyncData;

    .line 94
    iget-object v0, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;->this$0:Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-static {v0}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$100(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;)Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/sync/ISyncData;->getHiAudiobookPos()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$202(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;I)I

    .line 95
    iget-object v0, p0, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager$LocalAudiobookFileFoundEventHandler;->this$0:Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;->access$302(Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/Asin;

    return-void
.end method
