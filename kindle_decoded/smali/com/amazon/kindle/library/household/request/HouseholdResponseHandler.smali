.class public final Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "GetHouseholdMembersWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final JSON_CUSTOMER_DIRECT_ID_KEY:Ljava/lang/String;

.field private final JSON_FIRST_NAME_KEY:Ljava/lang/String;

.field private final JSON_HOUSEHOLD_DATA_KEY:Ljava/lang/String;

.field private final JSON_HOUSEHOLD_ROLE_KEY:Ljava/lang/String;

.field private final JSON_MEMBERS_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 59
    const-class v0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(HouseholdResponseHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->TAG:Ljava/lang/String;

    const-string v0, "householdData"

    .line 62
    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_HOUSEHOLD_DATA_KEY:Ljava/lang/String;

    const-string/jumbo v0, "members"

    .line 63
    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_MEMBERS_KEY:Ljava/lang/String;

    const-string v0, "customerDirectedId"

    .line 64
    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_CUSTOMER_DIRECT_ID_KEY:Ljava/lang/String;

    const-string v0, "firstName"

    .line 65
    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_FIRST_NAME_KEY:Ljava/lang/String;

    const-string v0, "householdRole"

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_HOUSEHOLD_ROLE_KEY:Ljava/lang/String;

    return-void
.end method

.method private final getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "jsonObject.optString(key)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "Locale.getDefault()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "null"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isAdult(Lorg/json/JSONObject;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_HOUSEHOLD_ROLE_KEY:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADULT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 14

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 72
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_HOUSEHOLD_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_MEMBERS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "membersData.getJSONArray(JSON_MEMBERS_KEY)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 77
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "jsonMembersList.getJSONObject(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v5}, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->isAdult(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_CUSTOMER_DIRECT_ID_KEY:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    iget-object v7, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->JSON_FIRST_NAME_KEY:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, " "

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-static {v6}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 82
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 91
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "InputStream could not be parsed as JSON"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :catch_1
    iget-object v0, p0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "IOException thrown while converting inputstream of household data to JSONObject"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
