.class public final Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;
.super Ljava/lang/Object;
.source "GetPriceParser.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 6

    const-string v0, "problem translating Price response"

    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "product"

    .line 48
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "price"

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "lowest_price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "base"

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "currency_code"

    .line 51
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance v2, Lcom/audible/hushpuppy/common/upsell/PriceData;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {v2, v3, p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v1, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v1, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
