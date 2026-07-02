.class public Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;
.super Ljava/lang/Object;
.source "UpsellCampaignDeclinedHandler.java"


# static fields
.field private static QUERY_PARAM_CAMPAIGN_ID:Ljava/lang/String; = null

.field private static QUERY_PARAM_METHOD:Ljava/lang/String; = null

.field private static QUERY_PARAM_SRC:Ljava/lang/String; = null

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String;

.field private static WAIT_TIME_MS_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const-string v0, "method=noThanksClicked"

    .line 53
    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_METHOD:Ljava/lang/String;

    const-string/jumbo v0, "src=reader"

    .line 54
    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_SRC:Ljava/lang/String;

    const-string/jumbo v0, "programId="

    .line 55
    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_CAMPAIGN_ID:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 65
    sput v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->WAIT_TIME_MS_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildStoreDeclineURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 284
    invoke-static {p0, p2}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getCEDeclineCampaignEndPoint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    new-instance p2, Ljava/net/URI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_METHOD:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_CAMPAIGN_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->QUERY_PARAM_SRC:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static cacheCampaignIdDeclined(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->loadExistingCampaignIds(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 74
    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p0

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->encodeCampaignIdList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "upsell.campaignid.declined"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static decodeCampaignIdList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const-string v0, ";"

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, ""

    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public static encodeCampaignIdList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 121
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    move-object v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private static fetchJson(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 264
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadExistingCampaignIds(Landroid/content/Context;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p0

    const-string/jumbo v0, "upsell.campaignid.declined"

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, ""

    if-eq p0, v1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->decodeCampaignIdList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static notifyDeclineToStore(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-static {p0, v1, p2, p3, p4}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->notifyStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static notifyDeclineToStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 101
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 102
    :goto_1
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 103
    :goto_2
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 105
    invoke-static {p4}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->loadExistingCampaignIds(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 106
    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    invoke-static {p4, v0, p1, p2, p3}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->notifyDeclineToStore(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 110
    invoke-static {p4}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->encodeCampaignIdList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "upsell.campaignid.declined"

    invoke-virtual {p1, p2, p0}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p4

    const-string v1, "NewsstandContentExplorerCampaign"

    const-string v2, "Failed to notify store about the library banner declined information"

    .line 194
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const-string v1, "No connection detected, store will not be contacted."

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v6

    :cond_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 202
    :try_start_0
    invoke-static {v7, v8, v0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->buildStoreDeclineURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v9, v11, :cond_5

    .line 206
    :try_start_1
    sget-object v12, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sending decline info to URL="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v5, v13}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 208
    invoke-static {v7, v8, v12, v13, v0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->sendStoreHttpRequest(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    const/16 v15, 0x190

    if-eqz v14, :cond_1

    .line 211
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    .line 212
    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    :cond_1
    const/16 v5, 0xc8

    if-ne v15, v5, :cond_3

    .line 216
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->fetchJson(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 217
    new-instance v11, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;

    invoke-direct {v11}, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;-><init>()V

    .line 218
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->parse(Lorg/json/JSONObject;)V

    .line 219
    invoke-virtual {v11}, Lcom/amazon/nwstd/upsell/fetcher/UpsellStoreDeclineResponse;->check()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 220
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const-string v7, "Managed to notify store on library banner declined"

    invoke-static {v0, v5, v7}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v5, "CEStoreConnectionOnDeclineSuccess"

    invoke-virtual {v0, v1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 224
    :cond_2
    sget-object v11, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const/16 v14, 0x10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v14, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v9, 0x1

    if-ne v5, v11, :cond_4

    .line 229
    sget-object v5, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const-string v11, "Failed to send request to store"

    invoke-static {v5, v3, v11}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_1

    .line 234
    :cond_4
    sget-object v5, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to send request to store. Will retry in "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->WAIT_TIME_MS_DEFAULT:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "ms"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v3, v11}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    sget v5, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->WAIT_TIME_MS_DEFAULT:I

    int-to-long v14, v5

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v4, v10

    goto :goto_2

    :cond_5
    move v4, v10

    goto :goto_3

    :catch_1
    move-exception v0

    .line 243
    sget-object v5, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    .line 240
    :goto_2
    sget-object v2, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->TAG:Ljava/lang/String;

    const-string v5, "Store JSON is invalid"

    invoke-static {v2, v3, v5, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v4, :cond_6

    .line 248
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "CEStoreConnectionOnDeclineFailure"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v6
.end method

.method public static sendExistingCampaignIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-static {p3}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->loadExistingCampaignIds(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p3, v0, p0, p1, p2}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->notifyDeclineToStore(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 89
    invoke-static {p3}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->encodeCampaignIdList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "upsell.campaignid.declined"

    invoke-virtual {p1, p2, p0}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
