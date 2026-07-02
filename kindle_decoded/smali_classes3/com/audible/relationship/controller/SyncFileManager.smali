.class public final Lcom/audible/relationship/controller/SyncFileManager;
.super Ljava/lang/Object;
.source "SyncFileManager.java"

# interfaces
.implements Lcom/audible/relationship/controller/ISyncFileManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final client:Lcom/audible/relationship/network/client/ICompanionMappingClient;

.field private final syncMappingStorage:Lcom/audible/relationship/db/ISyncMappingStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/SyncFileManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/db/ISyncMappingStorage;Lcom/audible/relationship/network/client/ICompanionMappingClient;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "syncMappingStorage can\'t be null."

    .line 40
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/db/ISyncMappingStorage;

    iput-object p1, p0, Lcom/audible/relationship/controller/SyncFileManager;->syncMappingStorage:Lcom/audible/relationship/db/ISyncMappingStorage;

    const-string p1, "client can\'t be null."

    .line 41
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iput-object p2, p0, Lcom/audible/relationship/controller/SyncFileManager;->client:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    return-void
.end method

.method private querySyncFileAcrFromService(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/ACR;
    .locals 3

    const-string v0, "Service failed to return sync file ACR!"

    const/4 v1, 0x0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/audible/relationship/controller/SyncFileManager;->client:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/audible/relationship/network/client/ICompanionMappingClient;->getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_0
    sget-object p2, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Returning sync file ACR = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 107
    sget-object p2, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private querySyncFileAcrFromStorage(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/audible/relationship/controller/SyncFileManager;->syncMappingStorage:Lcom/audible/relationship/db/ISyncMappingStorage;

    invoke-interface {p1, p2, p3}, Lcom/audible/relationship/db/ISyncMappingStorage;->querySyncMapping(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;

    move-result-object p1

    if-nez p1, :cond_0

    .line 87
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No sync file acr in storage."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getSyncFileAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    .line 92
    sget-object p2, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Returning sync file ACR = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method private saveSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/ACR;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/audible/relationship/domain/SyncMapping;->newBuilder()Lcom/audible/relationship/domain/SyncMapping$EBookStep;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/audible/relationship/domain/SyncMapping$EBookStep;->eBook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;->audiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;->syncFile(Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;

    move-result-object p1

    .line 132
    sget-object p2, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Saving sync mapping to storage for later use [%s]"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object p2, p0, Lcom/audible/relationship/controller/SyncFileManager;->syncMappingStorage:Lcom/audible/relationship/db/ISyncMappingStorage;

    invoke-interface {p2, p1}, Lcom/audible/relationship/db/ISyncMappingStorage;->saveSyncMapping(Lcom/audible/relationship/domain/SyncMapping;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Sync mapping saved successfully."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    sget-object p2, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to save sync mapping "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllSyncMappings()V
    .locals 3

    .line 77
    sget-object v0, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing all sync mappings!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/audible/relationship/controller/SyncFileManager;->syncMappingStorage:Lcom/audible/relationship/db/ISyncMappingStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/ISyncMappingStorage;->deleteAllSyncMappings()I

    move-result v0

    .line 79
    sget-object v1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Number of row deleted is %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 53
    :cond_0
    sget-object v1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting sync file ACR for [E_ASIN:E_GUID:A_ASIN:A_ACR] = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2, p4}, Lcom/audible/relationship/controller/SyncFileManager;->querySyncFileAcrFromStorage(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning sync file ACR from storage - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v1

    .line 62
    :cond_1
    sget-object v1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Storage sync mapping is null. Making a network call to get sync file acr"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/audible/mobile/domain/Format;->AAX_22:Lcom/audible/mobile/domain/Format;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/audible/relationship/controller/SyncFileManager;->querySyncFileAcrFromService(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    if-nez v1, :cond_2

    .line 65
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Failed to query sync file ACR."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/audible/relationship/controller/SyncFileManager;->saveSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/ACR;)V

    .line 70
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning sync file ACR from service - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v1

    .line 49
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/relationship/controller/SyncFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "EBook ASIN or EBook GUID or Audiobook ASIN or Audiobook ACR is null! Returning null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method
