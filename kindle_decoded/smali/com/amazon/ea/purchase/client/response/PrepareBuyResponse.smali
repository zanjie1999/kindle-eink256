.class public Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
.super Ljava/lang/Object;
.source "PrepareBuyResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;
    }
.end annotation


# static fields
.field private static final DEFAULT_TTL:J = 0x36ee80L

.field private static final FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.response.PrepareBuyResponse"


# instance fields
.field public final maxAge:J

.field public final preparedBooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionId:Ljava/lang/String;

.field public final success:Z

.field public final tokens:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v7, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;-><init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

    return-void
.end method

.method private constructor <init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->success:Z

    .line 154
    iput-wide p2, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->maxAge:J

    .line 155
    iput-object p4, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->tokens:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->sessionId:Ljava/lang/String;

    .line 157
    iput-object p6, p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->preparedBooks:Ljava/util/Map;

    return-void
.end method

.method public static parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
    .locals 12

    const-string v0, "PrepareBuyResponseParse"

    .line 50
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->success:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "ServerResponseNonSuccess"

    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 53
    sget-object p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "non-success response from server"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 58
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->json:Lorg/json/JSONObject;

    const-string/jumbo v3, "tokens"

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "session-id"

    .line 60
    invoke-virtual {p0, v3}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getCookieValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getMaxAge()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/32 v3, 0x36ee80

    :goto_1
    move-wide v7, v3

    const-string p0, "customerBorrowingProgram"

    const-string v3, ""

    .line 65
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "KU"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v3, "prices"

    .line 68
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const-string v2, "PricesNull"

    .line 69
    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v1, :cond_4

    .line 70
    sget-object p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "no prices in response"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 74
    :cond_4
    :try_start_2
    new-instance v11, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->parsePriceInfo(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 80
    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 84
    :cond_6
    new-instance p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;-><init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 87
    throw p0
.end method

.method private static parsePriceInfo(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;
    .locals 12

    const-string v0, "PrepareBuyResponseParsePrice"

    .line 102
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    const-string v3, "JsonNull"

    .line 104
    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 105
    sget-object p1, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing price for asin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    :cond_1
    :try_start_1
    const-string v2, "isKuAsin"

    .line 110
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const-string v2, "buyable"

    .line 113
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const-string v4, "BookUnbuyable"

    .line 114
    invoke-static {v2, v4}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v2, :cond_5

    .line 115
    new-instance p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;-><init>(ZZZLjava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_5
    :try_start_2
    const-string/jumbo v2, "ourPriceAmount"

    .line 119
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ourPriceCurrency"

    .line 120
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "k"

    .line 121
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    const-string v4, "PriceCurrencyFormattedPriceNull"

    .line 122
    invoke-static {p1, v4}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p1, :cond_8

    .line 124
    sget-object p1, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid price for ASIN: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    .line 127
    :cond_8
    :try_start_3
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_9

    if-eqz p2, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    .line 131
    :goto_6
    new-instance p0, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$PreparedBook;-><init>(ZZZLjava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 134
    throw p0
.end method
