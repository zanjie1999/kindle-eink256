.class public Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;
.super Ljava/lang/Object;
.source "SearchResultJsonObjectParser.java"

# interfaces
.implements Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/search/store/parser/IJsonObjectParser<",
        "Ljava/util/List<",
        "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final AUTHORS_KEY:Ljava/lang/String; = "authors"

.field private static final AUTHOR_NAME_SEPARATOR:Ljava/lang/String; = ", "

.field private static final AVERAGE_RATING_KEY:Ljava/lang/String; = "averageRating"

.field private static final BOOK_CATEGORY_KEY:Ljava/lang/String; = "handler"

.field private static final CUSTOMER_REVIEWS_KEY:Ljava/lang/String; = "customerReviewSummary"

.field private static final IFILE_KEY:Ljava/lang/String; = "iFile"

.field private static final IS_KU_KEY:Ljava/lang/String; = "isKU"

.field private static final ITEMS_KEY:Ljava/lang/String; = "items"

.field private static final QUOTE_STRING:Ljava/lang/String; = "\""

.field private static final REVIEW_COUNT_KEY:Ljava/lang/String; = "reviewCount"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.store.parser.SearchResultJsonObjectParser"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatAuthorNames(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7

    const-string v0, "\""

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 94
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 95
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 96
    check-cast v4, Ljava/lang/String;

    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 99
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    sget-object v4, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while trying to parse author names from store results "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, ", "

    .line 106
    invoke-static {v2, p0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseMetadata(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/StoreContentMetadata;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "asin"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "isKU"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v0, 0x0

    const-string v1, "handler"

    .line 63
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "iFile"

    .line 64
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "authors"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;->formatAuthorNames(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "customerReviewSummary"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "averageRating"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v5, v0

    const-string v0, "reviewCount"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Search node result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    new-instance p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/search/store/StoreContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic get(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;->get(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "items"

    .line 46
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 48
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;->parseMetadata(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    sget-object v1, Lcom/amazon/kcp/search/store/parser/SearchResultJsonObjectParser;->TAG:Ljava/lang/String;

    const-string v2, "Error when parsing JSON"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method
