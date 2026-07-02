.class public Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;
.super Ljava/lang/Object;
.source "SearchNodeJSONHandler.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.store.SearchNodeJSONHandler"

.field private static final TOTAL_COUNT_KEY:Ljava/lang/String; = "totalCount"


# instance fields
.field private baseResponseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private query:Ljava/lang/String;

.field searchResultParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/search/store/parser/IJsonObjectParser<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field spellCorrectionJsonObjectParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/search/store/parser/IJsonObjectParser<",
            "Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->query:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->url:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->initializeParser()V

    return-void
.end method

.method private initializeParser()V
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;

    invoke-direct {v0}, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->searchResultParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;

    .line 51
    new-instance v0, Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;

    invoke-direct {v0}, Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->spellCorrectionJsonObjectParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;

    return-void
.end method

.method private isWayFinderClickStreamAttributionMetricsPublishEnabled()Z
    .locals 1

    .line 158
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderClickStreamAttributionMetricsPublishDebugUtils;->isWayFinderClickStreamAttributionMetricsPublishEnabled()Z

    move-result v0

    return v0
.end method

.method private publishCompleteEvent(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 105
    iget-object v2, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->queryId:Ljava/lang/String;

    iget v3, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->httpResponseCode:I

    iget-object v4, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->sessionId:Ljava/lang/String;

    iget-object v5, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->remoteAddress:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->userAgent:Ljava/lang/String;

    iget-object v7, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchAlias:Ljava/lang/String;

    iget v8, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->legalEntityId:I

    iget-object v9, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchPageTypeId:Ljava/lang/String;

    .line 106
    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object v2

    .line 109
    iget-object v3, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->rank:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->setRank(Ljava/lang/String;)V

    .line 111
    iget-object v3, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v4, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;

    iget-object v11, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->query:Ljava/lang/String;

    iget-object v12, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->url:Ljava/lang/String;

    iget v13, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->total:I

    iget-object v14, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->results:Ljava/util/List;

    iget-object v15, v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-object v10, v4

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method getParsedResult(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;
    .locals 3

    .line 79
    new-instance v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;-><init>(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;)V

    :try_start_0
    const-string/jumbo v1, "totalCount"

    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->total:I

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->searchResultParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;->get(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->results:Ljava/util/List;

    .line 83
    iget-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->spellCorrectionJsonObjectParser:Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;->get(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 85
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->isWayFinderClickStreamAttributionMetricsPublishEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->baseResponseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->baseResponseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->httpResponseCode:I

    :cond_0
    const-string v1, "sessionId"

    .line 89
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->sessionId:Ljava/lang/String;

    const-string v1, "ipAddress"

    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->remoteAddress:Ljava/lang/String;

    const-string/jumbo v1, "userAgent"

    .line 91
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->userAgent:Ljava/lang/String;

    const-string v1, "searchAlias"

    .line 92
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchAlias:Ljava/lang/String;

    const-string v1, "legalEntityId"

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->legalEntityId:I

    const-string v1, "queryId"

    .line 94
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->queryId:Ljava/lang/String;

    const-string v1, "node"

    .line 95
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchPageTypeId:Ljava/lang/String;

    const-string v1, "rank"

    .line 96
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->rank:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    sget-object v1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->TAG:Ljava/lang/String;

    const-string v2, "Error when parsing JSON"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;-><init>(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->publishCompleteEvent(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;)V

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->getParsedResult(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->publishCompleteEvent(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->baseResponseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    return-void
.end method

.method public setBaseResponseHandler(Lcom/amazon/kindle/webservices/BaseResponseHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->baseResponseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    return-void
.end method
