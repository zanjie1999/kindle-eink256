.class public Lcom/amazon/ea/sidecar/parsing/SidecarParser;
.super Ljava/lang/Object;
.source "SidecarParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.SidecarParser"

.field private static final TAG_BOTTOM_SHEET_ENABLED:Ljava/lang/String; = "bottom_sheet_enabled"

.field private static final TAG_CLASS:Ljava/lang/String; = "class"

.field private static final TAG_COMMON_DATA:Ljava/lang/String; = "bookInfo"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_LAYOUTS:Ljava/lang/String; = "layouts"

.field private static final TAG_WIDGETS:Ljava/lang/String; = "widgets"

.field private static final VJSON_METADATA_BLOCK_KEY:Ljava/lang/String; = "block"

.field private static final VJSON_METADATA_BLOCK_VAL:Ljava/lang/String; = "metadata"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static buildSidecar(Lcom/amazon/kindle/krx/content/IBook;Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "bookInfo"

    .line 198
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseCommonData(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/CommonData;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "data"

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v2, "widgets"

    .line 208
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseWidgets(Lorg/json/JSONArray;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "layouts"

    .line 213
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseLayouts(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    const-string v0, "bottom_sheet_enabled"

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 220
    new-instance v0, Lcom/amazon/ea/sidecar/def/Sidecar;

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/amazon/ea/sidecar/def/Sidecar;-><init>(Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/List;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public static isSidecarVoltronFormat(Ljava/lang/Object;)Z
    .locals 2

    .line 156
    invoke-static {p0}, Lcom/amazon/ea/util/FileUtil;->readJsonTokenerAsJsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "block"

    .line 162
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "metadata"

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 165
    :catch_0
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->TAG:Ljava/lang/String;

    const-string v1, "Failed parsing Voltron sidecar file as JSON"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    .line 112
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 113
    invoke-static {p0, p1, v0}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parse(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/amazon/ea/util/FileUtil;->readFileAsJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p1

    .line 181
    invoke-static {p0, p1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->buildSidecar(Lcom/amazon/kindle/krx/content/IBook;Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p0

    return-object p0
.end method

.method protected static parseCommonData(Lorg/json/JSONObject;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/CommonData;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/raw/RawSidecarMetadataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;

    move-result-object p0

    .line 235
    invoke-static {p1, p0}, Lcom/amazon/ea/sidecar/parsing/CommonDataParser;->parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;)Lcom/amazon/ea/sidecar/def/CommonData;

    move-result-object p0

    return-object p0
.end method

.method protected static parseData(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "class"

    .line 259
    invoke-static {v3, v4}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 266
    :cond_2
    :try_start_0
    invoke-static {v4, v3}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseDataForType(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    goto :goto_0

    .line 276
    :cond_3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :catch_0
    sget-object v2, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception caught while trying to parse data for type, ignoring. [type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static parseDataForType(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "authorBio"

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/AuthorBioDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "authorBioList"

    .line 298
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/AuthorBioListDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorBioListData;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "authorSubscriptionInfo"

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/AuthorSubscriptionDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "authorSubscriptionInfoList"

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/AuthorSubscriptionListDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionListData;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "blurbCardData"

    .line 307
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/BlurbCardDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "communityReview"

    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/CommunityReviewDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "customerProfile"

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/CustomerProfileDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "dynamicButton"

    .line 316
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/DynamicButtonDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "dynamicText"

    .line 319
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/DynamicTextDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "featuredRecommendation"

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/FeaturedRecommendationDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "featuredRecommendationList"

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 326
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/FeaturedRecommendationListDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationListData;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "goodReadsReview"

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 329
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/GoodreadsReviewDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "goodReadsShelfInfo"

    .line 331
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 332
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/GoodreadsShelfDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move-result-object p0

    return-object p0

    :cond_c
    const-string/jumbo v0, "odotAction"

    .line 334
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 335
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/OdotActionDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/OdotActionData;

    move-result-object p0

    return-object p0

    :cond_d
    const-string/jumbo v0, "personalizationRating"

    .line 337
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 338
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/PersonalizationRatingDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    move-result-object p0

    return-object p0

    :cond_e
    const-string/jumbo v0, "publicSharedRating"

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 341
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/PublicSharedRatingDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-result-object p0

    return-object p0

    :cond_f
    const-string/jumbo v0, "pages"

    .line 343
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 344
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/ReadingPagesDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/ReadingPagesData;

    move-result-object p0

    return-object p0

    :cond_10
    const-string/jumbo v0, "time"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 347
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/ReadingTimeDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;

    move-result-object p0

    return-object p0

    :cond_11
    const-string/jumbo v0, "recommendation"

    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 350
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/RecommendationDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p0

    return-object p0

    :cond_12
    const-string/jumbo v0, "recommendationList"

    .line 352
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 353
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/RecommendationListDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/RecommendationListData;

    move-result-object p0

    return-object p0

    :cond_13
    const-string/jumbo v0, "seriesPosition"

    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 356
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/SeriesPositionDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    move-result-object p0

    return-object p0

    :cond_14
    const-string/jumbo v0, "urlAction"

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 359
    invoke-static {p1}, Lcom/amazon/ea/sidecar/parsing/data/URLActionDataParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/URLActionData;

    move-result-object p0

    return-object p0

    .line 363
    :cond_15
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 364
    sget-object p1, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown data type. cannot parse. [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Object;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 0

    .line 126
    invoke-static {p1}, Lcom/amazon/ea/util/FileUtil;->readJsonTokenerAsJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 127
    invoke-static {p0, p1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->buildSidecar(Lcom/amazon/kindle/krx/content/IBook;Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p0

    return-object p0
.end method

.method private static parseLayoutForType(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;->type:Ljava/lang/String;

    const-string v1, "groupedLayoutWithFooter"

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/layouts/GroupLayoutDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "verticalList"

    .line 417
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/layouts/VerticalListLayoutDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v1, "verticalListWithPanel"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/layouts/VerticalListWithPanelLayoutDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo v1, "verticalListWithShareAction"

    .line 423
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/layouts/VerticalListWithShareActionLayoutDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;

    move-result-object p0

    return-object p0

    .line 427
    :cond_3
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 428
    sget-object p0, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown layout type. cannot parse. [type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static parseLayouts(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 382
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 383
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 388
    :cond_1
    invoke-static {v3}, Lcom/amazon/ea/sidecar/parsing/raw/RawLayoutDefParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 393
    :cond_2
    invoke-static {v3}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseLayoutForType(Lcom/amazon/ea/sidecar/def/raw/RawLayoutDef;)Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 398
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private static parseWidgetForType(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Lcom/amazon/ea/sidecar/def/CommonData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->type:Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->isBlurbCardWidget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 487
    invoke-static {}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;->isBlurbCardAvailableAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "audible"

    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/AudibleWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "authors"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorBioListWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "followTheAuthor"

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorSubscriptionsWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "authorNames"

    .line 499
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/AuthorTextListWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v1, "blurbCard"

    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 503
    invoke-static {p0, p2}, Lcom/amazon/readingactions/sidecar/parsing/widgets/BlurbCardWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v1, "bookDetail"

    .line 505
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 506
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/BookDetailWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v1, "bookGrid"

    .line 508
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 509
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/BookGridWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v1, "featuredList"

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 512
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/BookRecommendationsWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    move-result-object p0

    return-object p0

    :cond_8
    const-string/jumbo v1, "singleRec"

    .line 514
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 515
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/BuyBookWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v1, "dynamicButtonWidget"

    .line 517
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 518
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/DynamicButtonWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v1, "expandingText"

    .line 520
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 521
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/ExpandingTextWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v1, "featuredRec"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 524
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/FeaturedBookWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v1, "grokRateAndReview"

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 527
    invoke-static {p0, p1, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/GrokRatingAndReviewWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v1, "grokTeaser"

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 530
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/GrokTeaserWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v1, "header"

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 533
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/HeaderWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object p0

    return-object p0

    :cond_f
    const-string/jumbo v1, "markReading"

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 536
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/MarkAsReadingWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    move-result-object p0

    return-object p0

    :cond_10
    const-string/jumbo v1, "positionInSeries"

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 539
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/PositionInSeriesWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    move-result-object p0

    return-object p0

    :cond_11
    const-string/jumbo v1, "rateAndReview"

    .line 541
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 542
    invoke-static {p0, p1, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/RatingAndReviewWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;

    move-result-object p0

    return-object p0

    :cond_12
    const-string/jumbo v1, "ratingBar"

    .line 544
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 545
    invoke-static {p0, p1, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/RatingWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p1, "feedback"

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 548
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/SendFeedbackWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    move-result-object p0

    return-object p0

    :cond_14
    const-string/jumbo p1, "shareBook"

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 551
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/ShareBookWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    move-result-object p0

    return-object p0

    :cond_15
    const-string/jumbo p1, "sharing"

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 554
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/SharingWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/SharingWidgetDef;

    move-result-object p0

    return-object p0

    :cond_16
    const-string/jumbo p1, "shoveler"

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 557
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/ShovelerWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    move-result-object p0

    return-object p0

    :cond_17
    const-string/jumbo p1, "simpleText"

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 560
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/SimpleTextWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;

    move-result-object p0

    return-object p0

    :cond_18
    const-string/jumbo p1, "readingTime"

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 563
    invoke-static {p0, p2}, Lcom/amazon/ea/sidecar/parsing/widgets/TimeToReadWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    move-result-object p0

    return-object p0

    :cond_19
    const-string/jumbo p1, "xrayTeaser"

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 566
    invoke-static {p0}, Lcom/amazon/ea/sidecar/parsing/widgets/XrayTeaserWidgetDefParser;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v2
.end method

.method protected static parseWidgets(Lorg/json/JSONArray;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/amazon/ea/sidecar/def/CommonData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    .line 445
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->anyNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 449
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 450
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 451
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 456
    :cond_1
    invoke-static {v3}, Lcom/amazon/ea/sidecar/parsing/raw/RawWidgetDefParser;->parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 463
    :cond_2
    :try_start_0
    invoke-static {v3, p1, p2}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseWidgetForType(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    goto :goto_1

    .line 474
    :cond_3
    iget-object v4, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 465
    :catch_0
    sget-object v4, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception caught while trying to parse widget for type, ignoring. [type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->type:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public static readSidecarJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Ljava/lang/Object;
    .locals 3

    .line 140
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 141
    invoke-static {p0, p1, v0}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ea/util/FileUtil;->readFileAsJsonTokener(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
