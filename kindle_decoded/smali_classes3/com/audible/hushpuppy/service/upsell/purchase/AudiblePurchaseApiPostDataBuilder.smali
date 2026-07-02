.class public Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
.super Ljava/lang/Object;
.source "AudiblePurchaseApiPostDataBuilder.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final json:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->json:Lorg/json/JSONObject;

    return-void
.end method

.method private putNullOrIgnoreException(Ljava/lang/String;)V
    .locals 2

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->json:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Error creating json"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private putOrIgnoreException(Ljava/lang/String;D)V
    .locals 1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    sget-object p2, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Error creating json"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private putOrIgnoreException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putNullOrIgnoreException(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    sget-object p2, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Error creating json"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addAsin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
    .locals 1

    const-string v0, "asin"

    if-nez p1, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putNullOrIgnoreException(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putOrIgnoreException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final addAssociateCodeByDeviceKey(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
    .locals 1

    const-string v0, "associate_code_by_device_key"

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putOrIgnoreException(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addCurrencyCode(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
    .locals 1

    const-string v0, "expected_price_currency"

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putOrIgnoreException(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addExpectedPrice(Ljava/math/BigDecimal;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-string p1, "expected_price"

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putOrIgnoreException(Ljava/lang/String;D)V

    :cond_0
    return-object p0
.end method

.method public final addToaSource()Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;
    .locals 2

    const-string v0, "source"

    const-string v1, "TasteOfAudible"

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->putOrIgnoreException(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
