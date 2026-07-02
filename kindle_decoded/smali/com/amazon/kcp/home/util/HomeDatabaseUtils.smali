.class public final Lcom/amazon/kcp/home/util/HomeDatabaseUtils;
.super Ljava/lang/Object;
.source "HomeDatabaseUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeDatabaseUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeDatabaseUtils.kt\ncom/amazon/kcp/home/util/HomeDatabaseUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n734#2:393\n825#2,2:394\n734#2:396\n825#2,2:397\n734#2:399\n825#2,2:400\n734#2:402\n825#2,2:403\n734#2:405\n825#2,2:406\n734#2:408\n825#2,2:409\n734#2:411\n825#2,2:412\n734#2:414\n825#2,2:415\n734#2:417\n825#2,2:418\n734#2:420\n825#2,2:421\n*E\n*S KotlinDebug\n*F\n+ 1 HomeDatabaseUtils.kt\ncom/amazon/kcp/home/util/HomeDatabaseUtils\n*L\n138#1:393\n138#1,2:394\n142#1:396\n142#1,2:397\n146#1:399\n146#1,2:400\n150#1:402\n150#1,2:403\n154#1:405\n154#1,2:406\n158#1:408\n158#1,2:409\n162#1:411\n162#1,2:412\n166#1:414\n166#1,2:415\n170#1:417\n170#1,2:418\n174#1:420\n174#1,2:421\n*E\n"
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field public static final INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/home/model/HomeAction;
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argsData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->GSON:Lcom/google/gson/Gson;

    sget-object v1, Lcom/amazon/kcp/home/util/StringStringMap;->INSTANCE:Lcom/amazon/kcp/home/util/StringStringMap;

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "GSON.fromJson(argsData, StringStringMap.type)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Map;

    .line 267
    new-instance v0, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final buildZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kindle/home/model/HomeZone;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;)",
            "Lcom/amazon/kindle/home/model/HomeZone;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-class v4, Lcom/amazon/kindle/home/model/BookEntityListZone;

    const-string v5, "cardTemplateId"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "zoneName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actions"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v5, Lcom/amazon/kcp/home/models/CardType;->Companion:Lcom/amazon/kcp/home/models/CardType$Companion;

    invoke-virtual {v5, v0}, Lcom/amazon/kcp/home/models/CardType$Companion;->typeForId(Ljava/lang/String;)Lcom/amazon/kcp/home/models/CardType;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/CardType;->getZoneMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_a

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-class v6, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "json.getString(KEY_TEXT)"

    const-string/jumbo v8, "text"

    if-eqz v6, :cond_0

    new-instance v5, Lcom/amazon/kindle/home/model/TextZone;

    .line 205
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {v5, v3, v0}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_0
    const-class v6, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "json.getString(KEY_IMAGE_AUTHOR)"

    const-string v10, "imageAuthor"

    const-string v11, "json.getString(KEY_IMAGE_TITLE)"

    const-string v12, "imageTitle"

    const-string v13, "json.getString(KEY_IMAGE_ASIN)"

    const-string v14, "imageAsin"

    const-string v15, "json.getString(KEY_IMAGE_URL)"

    const-string v5, "imageUrl"

    const-string v2, "json.getString(KEY_IMAGE_ALT_TEXT)"

    move-object/from16 v16, v4

    const-string v4, "imageAltText"

    if-eqz v6, :cond_1

    new-instance v7, Lcom/amazon/kindle/home/model/ImageZone;

    .line 207
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, p4

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v10

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/home/model/ImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    goto/16 :goto_0

    .line 212
    :cond_1
    const-class v6, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 p2, v9

    const-string v9, "json.getString(KEY_IMAGE_URL_DARK)"

    move-object/from16 v17, v10

    const-string v10, "darkImageUrl"

    move-object/from16 v18, v11

    const-string v11, "json.getString(KEY_IMAGE_URL_LIGHT)"

    move-object/from16 v19, v12

    const-string v12, "lightImageUrl"

    if-eqz v6, :cond_2

    new-instance v5, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 213
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {v5, v3, v0, v2, v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_2
    const-class v6, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lcom/amazon/kindle/home/model/ButtonZone;

    .line 217
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "altText"

    .line 218
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {v5, v3, v0, v1}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_3
    const-class v6, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    const-string/jumbo v0, "textOne"

    .line 220
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "json.getString(KEY_TEXT_ONE)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textTwo"

    .line 221
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "json.getString(KEY_TEXT_TWO)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "altTextOne"

    .line 222
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "altTextTwo"

    .line 223
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, p4

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto/16 :goto_0

    .line 224
    :cond_4
    const-class v6, Lcom/amazon/kindle/home/model/ColorZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, Lcom/amazon/kindle/home/model/ColorZone;

    const-string/jumbo v0, "primaryColor"

    .line 225
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(KEY_COLOR)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {v5, v3, v0}, Lcom/amazon/kindle/home/model/ColorZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_5
    const-class v6, Lcom/amazon/kindle/home/model/WebViewZone;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v0, Lcom/amazon/kindle/home/model/WebViewZone;

    const-string/jumbo v2, "url"

    .line 227
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "json.getString(KEY_URL)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "payload"

    const/4 v6, 0x0

    .line 228
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/home/model/WebViewZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    .line 229
    const-class v7, Lcom/amazon/kindle/home/model/ArticleZone;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "json.getString(KEY_INTRO)"

    const-string v6, "intro"

    const-string v3, "json.getString(KEY_TITLE)"

    move-object/from16 v20, v13

    const-string/jumbo v13, "title"

    if-eqz v7, :cond_7

    new-instance v9, Lcom/amazon/kindle/home/model/ArticleZone;

    const-string v0, "articleImageUrl"

    .line 230
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "json.getString(KEY_ARTICLE_IMAGE_URL)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articleImageAltText"

    .line 231
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "json.getString(KEY_ARTICLE_IMAGE_ALT_TEXT)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "publisherImageUrl"

    .line 232
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "json.getString(KEY_PUBLISHER_IMAGE_URL)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "publisherImageAltText"

    .line 233
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "json.getString(KEY_PUBLISHER_IMAGE_ALT_TEXT)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, p4

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    .line 229
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/home/model/ArticleZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    goto/16 :goto_0

    .line 236
    :cond_7
    const-class v7, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v14, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 237
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landingPageUrlDisplayText"

    .line 242
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "json.getString(KEY_LANDING_PAGE_URL_DISPLAY_TEXT)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p4

    move-object v2, v5

    move-object v4, v7

    move-object v5, v9

    move-object v7, v8

    .line 236
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    goto/16 :goto_0

    :cond_8
    move-object/from16 v3, v16

    .line 243
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->GSON:Lcom/google/gson/Gson;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/kindle/home/model/HomeZone;

    goto/16 :goto_0

    .line 244
    :cond_9
    const-class v3, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v11, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    .line 245
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 248
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v17

    .line 249
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurb"

    .line 250
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "json.getString(KEY_BLURB)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurbByLine"

    .line 251
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "json.getString(KEY_BLURB_BY_LINE)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurbAltText"

    .line 252
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "json.getString(KEY_BLURB_ALT_TEXT)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurbByLineAltText"

    .line 253
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "json.getString(KEY_BLURB_BY_LINE_ALT_TEXT)"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, p4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    .line 244
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/home/model/DescriptionImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v11

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    :goto_0
    return-object v5
.end method

.method public final isActionInvalid(Lcom/amazon/kcp/home/database/HomeActionData;)Z
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeActionData;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeActionData;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isCardInvalid(Lcom/amazon/kcp/home/database/HomeCardData;)Z
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeCardData;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeCardData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isDescriptionImageZoneInvalid(Lcom/amazon/kindle/home/model/DescriptionImageZone;)Z
    .locals 1

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbByLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbAltText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbByLineAltText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isTemplateValid(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/home/model/HomeZone;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "templateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zones"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/amazon/kcp/home/models/CardType;->Companion:Lcom/amazon/kcp/home/models/CardType$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/models/CardType$Companion;->typeForId(Ljava/lang/String;)Lcom/amazon/kcp/home/models/CardType;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v2, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x5

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    .line 420
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 174
    instance-of v4, v4, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    if-eqz v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_15

    goto/16 :goto_a

    .line 417
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 170
    instance-of v4, v4, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_15

    goto/16 :goto_a

    .line 414
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 166
    instance-of v4, v4, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    if-eqz v4, :cond_5

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_15

    goto/16 :goto_a

    .line 411
    :pswitch_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/home/model/HomeZone;

    .line 162
    instance-of v3, v3, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_15

    goto/16 :goto_a

    .line 408
    :pswitch_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 158
    instance-of v4, v4, Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v4, :cond_9

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 408
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_15

    goto/16 :goto_a

    .line 405
    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 154
    instance-of v4, v4, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v4, :cond_b

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 405
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_15

    goto/16 :goto_a

    .line 402
    :pswitch_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/home/model/HomeZone;

    .line 150
    instance-of v3, v3, Lcom/amazon/kindle/home/model/WebViewZone;

    if-eqz v3, :cond_d

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 402
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_15

    goto/16 :goto_a

    .line 399
    :pswitch_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/home/model/HomeZone;

    .line 146
    instance-of v3, v3, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v3, :cond_f

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 399
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_15

    goto :goto_a

    .line 396
    :pswitch_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/home/model/HomeZone;

    .line 142
    instance-of v4, v4, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v4, :cond_11

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 396
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_15

    goto :goto_a

    .line 393
    :pswitch_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/home/model/HomeZone;

    .line 138
    instance-of v3, v3, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v3, :cond_13

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    :goto_a
    const/4 v0, 0x1

    :cond_15
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isZoneInvalid(Lcom/amazon/kcp/home/database/HomeZoneData;)Z
    .locals 3

    const-string/jumbo v0, "zoneData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeZoneData;->toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;

    move-result-object p1

    .line 77
    instance-of v0, p1, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_1

    .line 80
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_1

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_1

    .line 86
    :cond_2
    instance-of v0, p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz v0, :cond_4

    .line 87
    check-cast p1, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextOne()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextTwo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 89
    :cond_4
    instance-of v0, p1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v0, :cond_5

    .line 90
    check-cast p1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    .line 92
    :cond_5
    instance-of v0, p1, Lcom/amazon/kindle/home/model/ColorZone;

    if-eqz v0, :cond_6

    .line 93
    check-cast p1, Lcom/amazon/kindle/home/model/ColorZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ColorZone;->getPrimaryColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_1

    .line 95
    :cond_6
    instance-of v0, p1, Lcom/amazon/kindle/home/model/WebViewZone;

    if-eqz v0, :cond_7

    .line 96
    check-cast p1, Lcom/amazon/kindle/home/model/WebViewZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WebViewZone;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_1

    .line 98
    :cond_7
    instance-of v0, p1, Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v0, :cond_8

    .line 99
    check-cast p1, Lcom/amazon/kindle/home/model/ArticleZone;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ArticleZone;->getArticleImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ArticleZone;->getPublisherImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ArticleZone;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 101
    :cond_8
    instance-of v0, p1, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    if-eqz v0, :cond_9

    .line 102
    check-cast p1, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getLightImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/WaysToReadBlock;->getImageAltText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 105
    :cond_9
    instance-of v0, p1, Lcom/amazon/kindle/home/model/BookEntityListZone;

    if-eqz v0, :cond_a

    goto/16 :goto_0

    .line 109
    :cond_a
    instance-of v0, p1, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    if-eqz v0, :cond_c

    .line 110
    check-cast p1, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->isDescriptionImageZoneInvalid(Lcom/amazon/kindle/home/model/DescriptionImageZone;)Z

    move-result v1

    :cond_b
    :goto_1
    return v1

    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final serializeArgs(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GSON.toJson(args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final serializeZoneData(Lcom/amazon/kcp/home/database/HomeZoneData;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->GSON:Lcom/google/gson/Gson;

    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeZoneData;->toHomeZone()Lcom/amazon/kindle/home/model/HomeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GSON.toJson(zone.toHomeZone())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
