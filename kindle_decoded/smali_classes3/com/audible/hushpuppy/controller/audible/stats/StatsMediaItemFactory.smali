.class public final Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;
.super Ljava/lang/Object;
.source "StatsMediaItemFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lcom/audible/application/stats/integration/StatsMediaItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_NARRATION_SPEED:F = 99.0f

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

.field private final relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audibleService can\'t be null."

    .line 51
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "readerStateContext can\'t be null."

    .line 52
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "relationshipSyncData can\'t be null."

    .line 53
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 55
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 56
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    return-void
.end method

.method private getAudiobbokAsin()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 115
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/application/stats/integration/StatsMediaItem;
    .locals 9

    .line 73
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->getAudiobbokAsin()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Playing ASIN is blank! Can\'t create StatsMediaItem."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v2

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDuration()I

    move-result v1
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v3, v1

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-gtz v8, :cond_1

    .line 88
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v5, v7, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration is not greater than 0 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]. Can\'t create StatsMediaItem."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-interface {v0, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v2

    .line 94
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentNarrationSpeed()F

    move-result v2
    :try_end_1
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 98
    sget-object v5, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v6, "Couldn\'t get narration speed from IAudibleService! Use 99 as narration speed instead."

    invoke-interface {v5, v6, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v2, 0x42c60000    # 99.0f

    .line 102
    :goto_0
    iget-object v5, p0, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v5}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-static {v5}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->getAudioConsumptionType(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    move-result-object v5

    sget-object v6, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->IMMERSION_READING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    .line 104
    :cond_2
    new-instance v5, Lcom/audible/application/stats/integration/StatsMediaItem;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v5, v0, v3, v2, v1}, Lcom/audible/application/stats/integration/StatsMediaItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v5

    :catch_1
    move-exception v0

    .line 83
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Couldn\'t get title duration from IAudibleService! Can\'t create StatsMediaItem."

    invoke-interface {v1, v3, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->get()Lcom/audible/application/stats/integration/StatsMediaItem;

    move-result-object v0

    return-object v0
.end method
