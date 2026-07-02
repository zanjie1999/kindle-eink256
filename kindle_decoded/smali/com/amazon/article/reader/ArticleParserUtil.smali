.class public Lcom/amazon/article/reader/ArticleParserUtil;
.super Ljava/lang/Object;
.source "ArticleParserUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/article/reader/ArticleParserUtil;

    invoke-static {v0}, Lcom/amazon/article/reader/GenericUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/article/reader/ArticleParserUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArticleToOpenFromIntentPayload(Ljava/lang/String;)Lcom/amazon/article/reader/ArticleMetadata;
    .locals 3

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "activeArticleIndex"

    .line 19
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "articleMetadataList"

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 23
    new-instance v0, Lcom/amazon/article/reader/ArticleMetadata;

    const-string/jumbo v1, "logoURL"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "detailPageLink"

    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazon/article/reader/ArticleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 28
    sget-object v0, Lcom/amazon/article/reader/ArticleParserUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid Payload passed to Activity. Unable to Parse"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    sget-object p0, Lcom/amazon/article/reader/ArticleParserUtil;->TAG:Ljava/lang/String;

    const-string v0, "Unable to find article from payload."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
