.class public final Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;
.super Ljava/lang/Object;
.source "HushpuppyStorageAdapter.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final configuration:Lcom/audible/relationship/db/IConfiguration;

.field private final relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

.field private final syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "relationshipManager cannot be null"

    .line 62
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    iput-object p1, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    const-string p1, "syncFileManager cannot be null"

    .line 63
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/controller/ISyncFileManager;

    iput-object p2, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    const-string p1, "configuration cannot be null"

    .line 64
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/relationship/db/IConfiguration;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->configuration:Lcom/audible/relationship/db/IConfiguration;

    return-void
.end method

.method private convertToOldRelationship(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->createEbookCompanion(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    .line 197
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->createAbookCompanion(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    .line 198
    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v7

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 211
    sget-object v4, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    .line 213
    new-instance p1, Lcom/audible/hushpuppy/common/relationship/Relationship;

    const-string v5, ""

    const-string v6, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/common/relationship/Relationship;-><init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object p1
.end method

.method private createAbookCompanion(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 7

    .line 230
    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 231
    sget-object v2, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    .line 233
    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->getAudioFormat()Ljava/lang/String;

    move-result-object v4

    .line 236
    new-instance p1, Lcom/audible/hushpuppy/common/relationship/Companion;

    const-string v3, ""

    const-string v5, "AUDIO_BOOK"

    const-string v6, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private createEbookCompanion(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 7

    .line 219
    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    .line 225
    new-instance p1, Lcom/audible/hushpuppy/common/relationship/Companion;

    const-string v3, ""

    const-string v4, ""

    const-string v5, "EBOOK"

    const-string v6, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public clearAllRelationships()V
    .locals 2

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing all relationships, sync mappings and session id!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->clearAllRelationships()V

    .line 134
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->syncFileManager:Lcom/audible/relationship/controller/ISyncFileManager;

    invoke-interface {v0}, Lcom/audible/relationship/controller/ISyncFileManager;->clearAllSyncMappings()V

    .line 135
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->configuration:Lcom/audible/relationship/db/IConfiguration;

    invoke-interface {v0}, Lcom/audible/relationship/db/IConfiguration;->clearSessionId()Z

    return-void
.end method

.method public getAllRelationships()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->listAllRelationships()Ljava/util/List;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "All relationship size = %s. Converting to old relationship."

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/relationship/domain/Relationship;

    .line 105
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->convertToOldRelationship(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    sget-object p1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "eBookAsin is blank! Returning null."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    sget-object p2, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Querying relation for ebook %s"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object p2, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Relationship found is %s"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->convertToOldRelationship(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1
.end method

.method public getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 2

    if-eqz p1, :cond_1

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->queryOwnedRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    .line 92
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship found is %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->convertToOldRelationship(Lcom/audible/relationship/domain/Relationship;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    return-object p1

    .line 87
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageAdapter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "IBook is null or ASIN is missing! Returning null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
