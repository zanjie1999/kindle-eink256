.class public final Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;
.super Ljava/lang/Object;
.source "ManifestSerializer.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/ManifestSerializer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestSerializer.kt\ncom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1819#2,2:193\n1517#2:196\n1588#2,3:197\n1#3:195\n*E\n*S KotlinDebug\n*F\n+ 1 ManifestSerializer.kt\ncom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer\n*L\n59#1,2:193\n124#1:196\n124#1,3:197\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    invoke-direct {v0}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getJSONObject(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Lorg/json/JSONObject;
    .locals 0

    .line 49
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "getJSONObject(key.jsonKey)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(key.jsonKey)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;I)Lorg/json/JSONObject;
    .locals 0

    .line 48
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private final put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 47
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deserialize(Lcom/amazon/kindle/download/manifest/MDSManifest;)Ljava/lang/String;
    .locals 11

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    move-result-object v1

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 117
    sget-object v3, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    sget-object v3, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getRevision()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v5, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_REVISION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v4, v2, v5, v3}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getSampling()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_SAMPLING:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v3, v2, v4, v1}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_1
    sget-object v1, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v3, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v0, v3, v2}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResources()Ljava/util/List;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 198
    check-cast v3, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    .line 125
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 127
    sget-object v5, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v6, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_CONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getResponseContext()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v6, v4, v7, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getRequirement()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_REQUIREMENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v6, v4, v7, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getSize()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_SIZE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v7}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    :cond_4
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v6, v4, v7, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_5
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getDeliveryType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_DELIVERYTYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v6, v4, v7, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_6
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    move-result-object v5

    .line 135
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 136
    sget-object v7, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v8, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v5}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getUrl()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "url.toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v8, v9}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget-object v7, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v8, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v5}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v6, v8, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    sget-object v5, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v5, v4, v7, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->getOptimalEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 142
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 143
    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->getDirectUrl()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.directUrl.toString()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5, v7, v8}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    sget-object v6, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_EXPIRATION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->getExpiresAfter()I

    move-result v3

    invoke-direct {v6, v5, v7, v3}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;I)Lorg/json/JSONObject;

    .line 145
    sget-object v3, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    sget-object v6, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v3, v4, v6, v5}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_7
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 124
    :cond_8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 150
    sget-object v2, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCES:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESPONSECONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/MDSManifest;->getResponseContext()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->put(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "json.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public serialize(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ParsingResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/download/manifest/ParsingResult<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "jsonString"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/amazon/kindle/download/manifest/ManifestSerializerKt;->access$getTAG$p()Ljava/lang/String;

    const/4 v0, 0x4

    .line 59
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "manifest.toString(4)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\\r\\n|[\\r\\n]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/download/manifest/ManifestSerializerKt;->access$getTAG$p()Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getJSONObject(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    new-instance v3, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    .line 66
    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v0, v4}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v4

    .line 67
    sget-object v5, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_REVISION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    sget-object v7, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_SAMPLING:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v0, v7, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    sget-object v8, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v0, v8}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {v3, v4, v5, v7, v0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    sget-object v4, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCES:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_1
    if-ge v5, v7, :cond_2

    .line 74
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "resourceBlob"

    .line 75
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v9}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getJSONObject(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Lorg/json/JSONObject;

    move-result-object v9

    .line 76
    new-instance v12, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    .line 77
    new-instance v10, Ljava/net/URI;

    sget-object v11, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v9, v11}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 78
    sget-object v11, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v9, v11}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-direct {v12, v10, v9}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 80
    sget-object v9, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v9}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    sget-object v9, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v9}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getJSONObject(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Lorg/json/JSONObject;

    move-result-object v9

    .line 82
    new-instance v10, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    .line 83
    new-instance v11, Ljava/net/URI;

    sget-object v13, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v9, v13}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v13, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_EXPIRATION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v13}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 82
    invoke-direct {v10, v11, v9}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;-><init>(Ljava/net/URI;I)V

    move-object v13, v10

    goto :goto_2

    :cond_1
    move-object v13, v6

    .line 89
    :goto_2
    new-instance v9, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    .line 90
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v10, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_REQUIREMENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v10, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_CONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v10}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v15

    .line 95
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_SIZE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v10}, Lcom/amazon/kindle/download/manifest/ManifestKeys;->getJsonKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 96
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v10, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 97
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_DELIVERYTYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v8, v10, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->optString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v10, v9

    .line 89
    invoke-direct/range {v10 .. v18}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;-><init>(Ljava/lang/String;Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 100
    :cond_2
    new-instance v4, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    .line 101
    new-instance v5, Lcom/amazon/kindle/download/manifest/MDSManifest;

    .line 104
    sget-object v6, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESPONSECONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-direct {v1, v2, v6}, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->getString(Lorg/json/JSONObject;Lcom/amazon/kindle/download/manifest/ManifestKeys;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-direct {v5, v3, v0, v2}, Lcom/amazon/kindle/download/manifest/MDSManifest;-><init>(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;Ljava/util/List;Ljava/lang/String;)V

    .line 100
    invoke-direct {v4, v5}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 107
    new-instance v4, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-direct {v4, v0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;-><init>(Ljava/lang/Object;)V

    :goto_3
    return-object v4
.end method
