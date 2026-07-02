.class public final Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;
.super Ljava/lang/Object;
.source "CompanionDataParser.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static companionFromJson(Lorg/json/JSONObject;)Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "asin"

    .line 260
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "acr"

    .line 261
    invoke-static {p0, v1}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assetType"

    .line 262
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "format"

    .line 263
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "sku"

    .line 264
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "version"

    .line 265
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {p0, v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    :goto_0
    move-object v4, p0

    .line 268
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    invoke-direct {p0, v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    :goto_1
    move-object v5, p0

    .line 270
    new-instance p0, Lcom/audible/hushpuppy/common/relationship/Companion;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/audible/hushpuppy/common/relationship/Companion;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;J)Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 144
    invoke-static {p0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->newJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 147
    new-instance p0, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    invoke-direct {p0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;-><init>()V

    return-object p0

    .line 150
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parse(Lorg/json/JSONObject;J)Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;J)Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "add"

    .line 170
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "partialMatchedContent"

    const/4 v5, 0x1

    const-string v6, "matchedRelationships"

    if-eqz v2, :cond_0

    .line 172
    invoke-static {v2, v6, v5, p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parseRelationships(Lorg/json/JSONObject;Ljava/lang/String;ZJ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-static {v2, v4, v3, p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parseRelationships(Lorg/json/JSONObject;Ljava/lang/String;ZJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v2, "delete"

    .line 177
    invoke-static {p0, v2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 179
    invoke-static {p0, v6, v5, p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parseRelationships(Lorg/json/JSONObject;Ljava/lang/String;ZJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-static {p0, v4, v3, p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parseRelationships(Lorg/json/JSONObject;Ljava/lang/String;ZJ)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_1
    new-instance p0, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    invoke-direct {p0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;-><init>()V

    .line 185
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->setRelationshipsToAdd(Ljava/util/List;)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->setRelationshipsToDelete(Ljava/util/List;)V

    return-object p0
.end method

.method private static parseRelationshipFromJson(Lorg/json/JSONObject;ZJ)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 11

    const-string v0, "audioBook"

    .line 234
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->companionFromJson(Lorg/json/JSONObject;)Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    const-string v0, "eBook"

    .line 235
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->companionFromJson(Lorg/json/JSONObject;)Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    const-string v0, "audiobookAmazonAsin"

    .line 236
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "relationshipId"

    .line 237
    invoke-static {p0, v1}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "syncFile"

    .line 238
    invoke-static {p0, v1}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "type"

    .line 239
    invoke-static {p0, v4}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    invoke-direct {p0, v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    :goto_0
    move-object v5, p0

    .line 242
    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    .line 244
    new-instance p0, Lcom/audible/hushpuppy/common/relationship/Relationship;

    move-object v1, p0

    move v8, p1

    move-wide v9, p2

    invoke-direct/range {v1 .. v10}, Lcom/audible/hushpuppy/common/relationship/Relationship;-><init>(Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/hushpuppy/common/relationship/ICompanion;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object p0
.end method

.method private static parseRelationships(Lorg/json/JSONObject;Ljava/lang/String;ZJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZJ)",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p0, p1}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 207
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 210
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    invoke-static {p0, v0}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p2, p3, p4}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parseRelationshipFromJson(Lorg/json/JSONObject;ZJ)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
