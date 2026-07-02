.class public Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;
.super Ljava/lang/Object;
.source "PrepareBuyResponseParser.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doParse(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/amazon/sitb/android/BookPrice;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string/jumbo v2, "prices"

    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 39
    sget-object v0, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "No prices in response"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-object v4

    .line 43
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    sget-object v0, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No price found for ASIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-object v4

    .line 55
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "buyable"

    .line 56
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_7

    const-string/jumbo v3, "ourPriceAmount"

    .line 61
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 64
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    const-string/jumbo v3, "ourPriceCurrency"

    .line 66
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    const-string v8, "k"

    .line 67
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object v10, v3

    move-object v11, v4

    move-object v9, v5

    goto :goto_4

    :cond_7
    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    :goto_4
    const-string v3, "customerBorrowingProgram"

    .line 71
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "KU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    const-string v3, "isKuAsin"

    .line 72
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 75
    :goto_6
    new-instance v3, Lcom/amazon/sitb/android/BookPrice;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    const/4 v13, 0x1

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    move-object v8, v3

    move-wide/from16 v14, p3

    invoke-direct/range {v8 .. v15}, Lcom/amazon/sitb/android/BookPrice;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    .line 76
    sget-object v0, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object v3, v2, v7

    const-string/jumbo v1, "prepareBuy: ASIN=%s => %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/amazon/sitb/android/BookPrice;
    .locals 0

    .line 25
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->doParse(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 29
    sget-object p2, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "Could not parse prepareBuy JSON result"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
