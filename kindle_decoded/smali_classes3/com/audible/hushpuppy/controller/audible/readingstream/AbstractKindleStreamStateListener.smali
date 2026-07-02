.class public abstract Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;
.super Ljava/lang/Object;
.source "AbstractKindleStreamStateListener.java"


# static fields
.field private static final AUDIOBOOK_ASIN_KEY:Ljava/lang/String; = "AudiobookAsin"

.field private static final AUDIOBOOK_OWNED:Ljava/lang/String; = "Owned"

.field private static final AUDIOBOOK_OWNERSHIP:Ljava/lang/String; = "AudiobookOwnership"

.field private static final AUDIOBOOK_SAMPLE:Ljava/lang/String; = "Sample"

.field private static final CONSUMPTION_TYPE:Ljava/lang/String; = "ConsumptionType"

.field private static final EBOOK_ASIN_KEY:Ljava/lang/String; = "EbookAsin"

.field private static final FAST_METRICS_SCHEMA_NAME:Ljava/lang/String; = "audible_listening"

.field private static final FAST_METRICS_SCHEMA_VERSION:I = 0x0

.field private static final LISTENING_MODE:Ljava/lang/String; = "ListeningMode"


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected final logger:Lcom/audible/hushpuppy/common/logging/ILogger;

.field protected playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

.field protected readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

.field private readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field private relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "kindleReaderSDK cannot be null"

    .line 83
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "audibleService cannot be null"

    .line 84
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "playerStateContext cannot be null"

    .line 85
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "readerStateContext cannot be null"

    .line 86
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "relationshipSyncData cannot be null"

    .line 87
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    .line 89
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 90
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 91
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-void
.end method

.method private getAudiobookOwnership()Ljava/lang/String;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship is null to get abook ownership!!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    const-string v1, "ABook is %s"

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Owned"

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Sample"

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getMaxAudioPosition()I
    .locals 3

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getMaxAvailablePosition()I

    move-result v0
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 230
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error getting maximum available position"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private isValidToLog()Z
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getAudiobookAsin()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid to log audiobbok asin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getEbookAsin()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid to log ebook asin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getAudiobookOwnership()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid to log audiobook ownership :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getEbookPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid to log ebook position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getMaxAudioPosition()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid to log max Audio Position :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected abstract getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
.end method

.method protected final getAudiobookAsin()Ljava/lang/String;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 139
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Audiobook asin is %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Either relationship or abook or asin is null. Returning null"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getEbookAsin()Ljava/lang/String;
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 158
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Ebook asin is %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Either relationship or ebook or asin is null. Returning null"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getEbookPosition()I
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->relationshipSyncData:Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    .line 195
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->getAudioPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getMaxAudioPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getEBookPositionFromAudioPosition(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v0

    return v0
.end method

.method protected final getMetaDataMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Creating metadata for logging"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getAudiobookAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudiobookAsin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getEbookAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EbookAsin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getAudiobookOwnership()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudiobookOwnership"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->getListeningModeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListeningMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-static {v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;->getAudioConsumptionType(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->getConsumptionTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConsumptionType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final logMetric()V
    .locals 11

    .line 100
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->isValidToLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Validation failed. Not Logging the metric"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->getActionName()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getEbookPosition()I

    move-result v7

    .line 107
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getMetaDataMap()Ljava/util/Map;

    move-result-object v8

    .line 109
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v9, "AudibleWfvClient"

    const/4 v10, 0x0

    aput-object v9, v2, v10

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 110
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[READING_STREAM_LOGGING]: Context: %s, Action: %s, EBook pos: %d, Meta data: %s"

    .line 109
    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    const-string v2, "AudibleWfvClient"

    move-object v3, v0

    move v4, v7

    move v5, v7

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 114
    const-class v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v1, :cond_1

    const-string v2, "audible_listening"

    .line 116
    invoke-interface {v1, v2, v10}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    const-string v3, "context"

    .line 117
    invoke-interface {v2, v3, v9}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v3, "action_id"

    .line 118
    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "EbookAsin"

    .line 119
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "ebook_asin"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "AudiobookAsin"

    .line 120
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "audiobook_asin"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "AudiobookOwnership"

    .line 121
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "audiobook_ownership"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "ConsumptionType"

    .line 122
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "consumption_type"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "ListeningMode"

    .line 123
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "listening_mode"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "start_ebook_position"

    .line 124
    invoke-interface {v2, v0, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "end_ebook_position"

    .line 125
    invoke-interface {v2, v0, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 126
    invoke-interface {v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_1
    return-void
.end method
