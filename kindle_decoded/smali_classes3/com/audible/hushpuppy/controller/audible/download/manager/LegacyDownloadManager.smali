.class public final Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;
.super Ljava/lang/Object;
.source "LegacyDownloadManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;
.implements Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
        ">;",
        "Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

.field private final service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 52
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    .line 53
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 3

    .line 127
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin %s not present in the library, queueing request for retry"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->getDownloadRetryManager()Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->enqueueRelationshipDownloadRequest(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)Z

    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Asin is present in the user\'s library, requesting download"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->handleOwnedDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->handleSampleDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    :goto_0
    return-void
.end method

.method private declared-synchronized getDownloadRetryManager()Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
    .locals 3

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;-><init>(Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleOwnedDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 2

    .line 143
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 145
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for full pair"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    .line 147
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getPreferredAudiobookDownloadFormat(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 146
    invoke-interface {p2, p3, v1, v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadPair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 149
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for full audio"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getPreferredAudiobookDownloadFormat(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v0

    .line 151
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 150
    invoke-interface {p2, p3, v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for full sync data"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    :goto_0
    return-void
.end method

.method private handleSampleDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 2

    .line 160
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 162
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for sample pair"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p2, p3, v0, v1, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSamplePair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 165
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for sample audio"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    sget-object v0, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    invoke-interface {p2, p3, p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSampleAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Requesting download for sample sync data"

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p3

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public downloadAudioContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, v0, v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public execute(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V
    .locals 2

    .line 113
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DownloadRetryManager has finished processing, attempting to trigger download now."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->isDownloadAudioFile()Z

    move-result v1

    .line 115
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->isDownloadAudioFile()Z

    move-result p1

    .line 114
    invoke-direct {p0, v0, v1, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->handleOwnedDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/LegacyDownloadManager;->execute(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V

    return-void
.end method

.method public pauseEvents()V
    .locals 0

    return-void
.end method

.method public resumeEvents()V
    .locals 0

    return-void
.end method
