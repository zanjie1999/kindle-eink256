.class public Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;
.super Ljava/lang/Object;
.source "LegacyBuyAsinResult.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final json:Lorg/json/JSONObject;

.field private final jsonResult:Ljava/lang/String;

.field private final responseSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/StoreResponse;)V
    .locals 2

    .line 35
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreResponse;->isSuccess()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreResponse;->getJsonResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreResponse;->getJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;-><init>(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->responseSuccess:Z

    .line 29
    iput-object p2, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->jsonResult:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->json:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getJsonResult()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->jsonResult:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "orderID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    sget-object v0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Failed to parse orderId from buyAsin response"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->json:Lorg/json/JSONObject;

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ITEM_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/StoreQueryParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    sget-object v0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Failed to parse orderItemId from buyAsin response"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->responseSuccess:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->getJsonResult()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "order-created"

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
