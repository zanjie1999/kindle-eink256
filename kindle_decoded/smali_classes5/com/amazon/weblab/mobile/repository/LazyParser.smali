.class public Lcom/amazon/weblab/mobile/repository/LazyParser;
.super Ljava/lang/Object;
.source "LazyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;
    }
.end annotation


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

.field private mMarketplaceId:Ljava/lang/String;

.field private mMemoryCache:[B

.field private mNodeIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mSessionId:Ljava/lang/String;

.field private mTreatmentAssignments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

.field private mWeblabClientIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    .line 62
    new-instance p1, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-direct {p1, p0}, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;-><init>(Lcom/amazon/weblab/mobile/repository/LazyParser;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mTreatmentAssignments:Ljava/util/Map;

    .line 64
    new-instance p1, Lcom/amazon/weblab/mobile/repository/BytesUtils;

    invoke-direct {p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;-><init>()V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mNodeIndexes:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/weblab/mobile/repository/LazyParser;)[B
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/weblab/mobile/repository/LazyParser;)Lcom/amazon/weblab/mobile/repository/BytesUtils;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    return-object p0
.end method

.method private buildIndex(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mNodeIndexes:Ljava/util/Map;

    .line 185
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-object v2, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TREATMENT_ASSIGNMENTS:[B

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndPositionOfString([B[BI)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 191
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-byte v3, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->LEFT_BRACKET:B

    invoke-virtual {v1, v2, v3, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findNextDelimiter([BBI)I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    if-eq p1, v0, :cond_4

    .line 198
    iget-object v2, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-byte v4, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->RIGHT_BRACKET:B

    invoke-virtual {v2, v3, v4, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findNextDelimiter([BBI)I

    move-result v2

    if-eq v2, v0, :cond_3

    :goto_0
    if-ge p1, v2, :cond_2

    .line 207
    iget-object v3, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-byte v5, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->LEFT_CURLY_BRACKET:B

    invoke-virtual {v3, v4, v5, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findNextDelimiter([BBI)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 218
    iget-object v3, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-object v5, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->WEBLAB:[B

    invoke-virtual {v3, v4, v5, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getRangeOfStringValue([B[BI)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    invoke-virtual {v4, v5, v3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringFromRange([B[I)Ljava/lang/String;

    move-result-object v4

    .line 227
    aget v3, v3, v1

    .line 228
    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v6, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-byte v7, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->RIGHT_CURLY_BRACKET:B

    invoke-virtual {v5, v6, v7, v3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findNextDelimiter([BBI)I

    move-result v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p1, v5, v6

    aput v3, v5, v1

    .line 230
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mNodeIndexes:Ljava/util/Map;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    aget p1, v5, v1

    goto :goto_0

    .line 220
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Weblab must have a name"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 200
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Cannot find right bracket \']\' for the treatment assignment array"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_4
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Cannot find left bracket \'[\' for the treatment assignment array"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Cannot find treatment_assignments key"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseEmbeddedIdentifiers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-object v2, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->APP_VERSION:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringValue([B[BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mAppVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-object v2, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->SESSION_ID:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringValue([B[BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mUtils:Lcom/amazon/weblab/mobile/repository/BytesUtils;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    sget-object v2, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->MARKETPLACE_ID:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringValue([B[BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMarketplaceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "marketplace_id not found"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "session_id not found"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "app_version not found"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFileBytes(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    iput-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    .line 140
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMemoryCache:[B

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    :cond_0
    throw p1
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplaceId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mMarketplaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mTreatmentAssignments:Ljava/util/Map;

    return-object v0
.end method

.method public parse(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/repository/LazyParser;->readFileBytes(Ljava/io/File;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    .line 106
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v0, "LazyParserFileReadLatency"

    invoke-static {v0, v2, v3, p1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 110
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->parseEmbeddedIdentifiers()V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    .line 112
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v0, "LazyParserParseIdentifiersLatency"

    invoke-static {v0, v2, v3, p1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/repository/LazyParser;->buildIndex(I)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    .line 118
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v0, "LazyParserBuildIndexLatency"

    invoke-static {v0, v2, v3, p1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 122
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mNodeIndexes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    new-instance v3, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mInflator:Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;

    invoke-direct {v3, v4, v5}, Lcom/amazon/weblab/mobile/model/LazyTreatmentAssignment;-><init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;)V

    .line 124
    iget-object v4, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mTreatmentAssignments:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    .line 127
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v0, "LazyParserBuildTreatmentsLatency"

    invoke-static {v0, v2, v3, p1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method
