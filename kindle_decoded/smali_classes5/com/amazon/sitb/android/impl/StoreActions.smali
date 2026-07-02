.class public Lcom/amazon/sitb/android/impl/StoreActions;
.super Ljava/lang/Object;
.source "StoreActions.java"

# interfaces
.implements Lcom/amazon/sitb/android/IStoreActions;


# static fields
.field private static final DEFAULT_PRICE_MAX_AGE:J = 0x36ee80L

.field private static final MAX_BUY_ATTEMPTS:I = 0x2

.field private static final MAX_UNBUY_ATTEMPTS:I = 0x2

.field private static final MYK_URL:Ljava/lang/String; = "http://www.amazon.com/gp/digital/fiona/manage/?ref_"

.field private static final PREPARE_BUY_TOKENS_JSON_NAME:Ljava/lang/String; = "tokens"

.field private static final PREPARE_BUY_TOKENS_STORAGE_KEY:Ljava/lang/String; = "tokens"

.field private static final SESSION_ID_STORAGE_KEY:Ljava/lang/String; = "session-id"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

.field private final glideClient:Lcom/amazon/sitb/android/purchase/GlideClient;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final prepareBuyResponseParser:Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;

.field private final reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/impl/StoreActions;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/cache/token/TokenCache;Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/GlideClient;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 73
    iput-object p2, p0, Lcom/amazon/sitb/android/impl/StoreActions;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    .line 74
    iput-object p3, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    .line 75
    iput-object p4, p0, Lcom/amazon/sitb/android/impl/StoreActions;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    .line 76
    iput-object p5, p0, Lcom/amazon/sitb/android/impl/StoreActions;->prepareBuyResponseParser:Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;

    .line 77
    iput-object p6, p0, Lcom/amazon/sitb/android/impl/StoreActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 78
    iput-object p7, p0, Lcom/amazon/sitb/android/impl/StoreActions;->glideClient:Lcom/amazon/sitb/android/purchase/GlideClient;

    return-void
.end method

.method private getPrepareBuyTokens()Ljava/lang/String;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    const-string/jumbo v1, "tokens"

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private isCustomerInEUMarketplaces()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->getEUMFAMarketplaces()Ljava/util/List;

    move-result-object v1

    .line 498
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadSessionId()Ljava/lang/String;
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    const-string/jumbo v1, "session-id"

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private postBuyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;IZ)Lcom/amazon/sitb/android/StoreResponse;
    .locals 7

    .line 337
    :try_start_0
    sget-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string/jumbo v1, "postBuyAsin: asin=%s, price=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/amazon/sitb/android/impl/StoreActions;->getPrepareBuyTokens()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-direct {p0}, Lcom/amazon/sitb/android/impl/StoreActions;->loadSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v2, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    .line 351
    new-instance v3, Lcom/amazon/sitb/android/StoreRequestBuilder;

    iget-object v4, p0, Lcom/amazon/sitb/android/impl/StoreActions;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    iget-object v5, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    iget-object v6, p0, Lcom/amazon/sitb/android/impl/StoreActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/sitb/android/StoreRequestBuilder;-><init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    sget-object v4, Lcom/amazon/sitb/android/StoreQueryParam;->METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

    const-string v5, "buyAsin"

    .line 352
    invoke-virtual {v3, v4, v5}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v4, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_SERIAL_NUMBER:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 353
    invoke-virtual {v3, v4}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v4, Lcom/amazon/sitb/android/StoreQueryParam;->ASIN:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 354
    invoke-virtual {v3, v4, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->SESSION_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 355
    invoke-virtual {v3, p1, v1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->PRICE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 356
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmountString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->CURRENCY:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 357
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->SITE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 358
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 359
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->COUNTRY_OF_RESIDENCE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 360
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 361
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 362
    invoke-virtual {v3, v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParamsFromJsonTokens(Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 363
    invoke-virtual {v3, p3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addReftag(I)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    .line 364
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    .line 365
    invoke-virtual {v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->SESSION_ID:Lcom/amazon/sitb/android/StoreCookie;

    .line 366
    invoke-virtual {v3, p1, v1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    if-eqz v2, :cond_0

    .line 370
    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->ASSOCIATE_TAG:Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v3, p1, v2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 373
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->build()Lcom/amazon/sitb/android/StoreRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 377
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p2, "Failed to create buyAsin request"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p1, p4}, Lcom/amazon/sitb/android/StoreRequest;->execute(Z)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object p1

    return-object p1

    .line 346
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No value for sessionId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 386
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "RuntimeException in postBuyAsin"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    :goto_0
    sget-object p1, Lcom/amazon/sitb/android/StoreResponse;->GENERAL_FAILURE:Lcom/amazon/sitb/android/StoreResponse;

    return-object p1
.end method

.method private postUnBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/sitb/android/StoreResponse;
    .locals 7

    .line 401
    :try_start_0
    sget-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string/jumbo v1, "postUnBuy: asin=%s, orderId=%s, orderItemId=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/amazon/sitb/android/impl/StoreActions;->getPrepareBuyTokens()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-direct {p0}, Lcom/amazon/sitb/android/impl/StoreActions;->loadSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 413
    new-instance v2, Lcom/amazon/sitb/android/StoreRequestBuilder;

    iget-object v4, p0, Lcom/amazon/sitb/android/impl/StoreActions;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    iget-object v5, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    iget-object v6, p0, Lcom/amazon/sitb/android/impl/StoreActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v2, v4, v5, v6}, Lcom/amazon/sitb/android/StoreRequestBuilder;-><init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    sget-object v4, Lcom/amazon/sitb/android/StoreQueryParam;->METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

    const-string/jumbo v5, "unBuy"

    .line 414
    invoke-virtual {v2, v4, v5}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v4, Lcom/amazon/sitb/android/StoreQueryParam;->ASIN:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 415
    invoke-virtual {v2, v4, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 416
    invoke-virtual {v2, p1, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ITEM_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 417
    invoke-virtual {v2, p1, p3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->SESSION_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 418
    invoke-virtual {v2, p1, v1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->SITE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 419
    invoke-virtual {v2, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreQueryParam;->USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 420
    invoke-virtual {v2, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 421
    invoke-virtual {v2, v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParamsFromJsonTokens(Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 422
    invoke-virtual {v2, p4}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addReftag(I)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    .line 423
    invoke-virtual {v2, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    .line 424
    invoke-virtual {v2, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p1, Lcom/amazon/sitb/android/StoreCookie;->SESSION_ID:Lcom/amazon/sitb/android/StoreCookie;

    .line 425
    invoke-virtual {v2, p1, v1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 426
    invoke-virtual {v2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->build()Lcom/amazon/sitb/android/StoreRequest;

    move-result-object p1

    if-nez p1, :cond_0

    .line 429
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p2, "Failed to create unBuy request"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1, v3}, Lcom/amazon/sitb/android/StoreRequest;->execute(Z)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object p1

    return-object p1

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No value for sessionId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 438
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "RuntimeException in postBuyAsin"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    :goto_0
    sget-object p1, Lcom/amazon/sitb/android/StoreResponse;->GENERAL_FAILURE:Lcom/amazon/sitb/android/StoreResponse;

    return-object p1
.end method

.method private savePrepareBuyTokens(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "tokens"

    .line 451
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/sitb/android/cache/Cache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "Tokens not found in prepareBuy response JSON"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveSessionId(Lcom/amazon/sitb/android/StoreResponse;)V
    .locals 2

    const-string/jumbo v0, "session-id"

    .line 476
    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/StoreResponse;->getCookieValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->tokenCache:Lcom/amazon/sitb/android/cache/token/TokenCache;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/sitb/android/cache/Cache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 483
    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "Session ID cookie not found in prepareBuy response"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "Current activity is null"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public buyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)Lcom/amazon/sitb/android/BuyAsinResult;
    .locals 4

    .line 85
    sget-object v0, Lcom/amazon/sitb/android/BuyAsinResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/BuyAsinResult;

    .line 87
    sget-object v1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "buyAsin starting: asin=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v1, p3}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p3

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->glideClient:Lcom/amazon/sitb/android/purchase/GlideClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/sitb/android/purchase/GlideClient;->buyAsinFromOffer(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Ljava/lang/String;)Lcom/amazon/sitb/android/BuyAsinResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "RuntimeException during book purchase"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public kcpBuyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;II)Lcom/amazon/sitb/android/BuyAsinResult;
    .locals 7

    .line 184
    sget-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v4, "buyAsin: asin=%s, price=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/amazon/sitb/android/BuyAsinResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/BuyAsinResult;

    .line 188
    invoke-direct {p0}, Lcom/amazon/sitb/android/impl/StoreActions;->isCustomerInEUMarketplaces()Z

    move-result v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 194
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/amazon/sitb/android/impl/StoreActions;->postBuyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;IZ)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object v4

    .line 195
    new-instance v5, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;

    invoke-direct {v5, v4}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;-><init>(Lcom/amazon/sitb/android/StoreResponse;)V

    .line 198
    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->getJsonResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/sitb/android/BuyAsinResult;->setErrorCode(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mfa-challenge-required"

    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->getJsonResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/amazon/sitb/android/impl/StoreActions;->kcpPrepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;

    goto :goto_2

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->isSuccess()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/sitb/android/BuyAsinResult;->setResponseSuccess(Z)V

    .line 205
    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/sitb/android/BuyAsinResult;->setOrderId(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyBuyAsinResult;->getOrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/sitb/android/BuyAsinResult;->setOrderItemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 220
    sget-object v5, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v6, "RuntimeException during book purchase"

    invoke-interface {v5, v6, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-object v0
.end method

.method public kcpPrepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;
    .locals 6

    .line 278
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 280
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Prepare buy called for empty asin (%s), this should have been prevented at a higher level"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-object v2

    .line 284
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareBuy: asin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/amazon/sitb/android/StoreRequestBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/impl/StoreActions;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    iget-object v4, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    iget-object v5, p0, Lcom/amazon/sitb/android/impl/StoreActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v0, v3, v4, v5}, Lcom/amazon/sitb/android/StoreRequestBuilder;-><init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    sget-object v3, Lcom/amazon/sitb/android/StoreQueryParam;->METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

    const-string/jumbo v4, "prepareBuy"

    .line 286
    invoke-virtual {v0, v3, v4}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v3, Lcom/amazon/sitb/android/StoreQueryParam;->ASINS:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 287
    invoke-virtual {v0, v3, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v3, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 288
    invoke-virtual {v0, v3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object v3, Lcom/amazon/sitb/android/StoreQueryParam;->USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 289
    invoke-virtual {v0, v3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 290
    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addReftag(I)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p2, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    .line 291
    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    sget-object p2, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    .line 292
    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    .line 293
    invoke-virtual {v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->build()Lcom/amazon/sitb/android/StoreRequest;

    move-result-object p2

    if-nez p2, :cond_1

    .line 297
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p2, "Failed to create prepareBuy request"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    return-object v2

    .line 301
    :cond_1
    invoke-virtual {p2, v1}, Lcom/amazon/sitb/android/StoreRequest;->execute(Z)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object p2

    .line 302
    invoke-virtual {p2}, Lcom/amazon/sitb/android/StoreResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    sget-object p1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareBuy failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-object v2

    .line 311
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/sitb/android/StoreResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/impl/StoreActions;->savePrepareBuyTokens(Lorg/json/JSONObject;)V

    .line 313
    invoke-direct {p0, p2}, Lcom/amazon/sitb/android/impl/StoreActions;->saveSessionId(Lcom/amazon/sitb/android/StoreResponse;)V

    .line 316
    invoke-virtual {p2}, Lcom/amazon/sitb/android/StoreResponse;->getMaxAge()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 317
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x36ee80

    .line 319
    :goto_0
    iget-object p2, p0, Lcom/amazon/sitb/android/impl/StoreActions;->prepareBuyResponseParser:Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;

    invoke-virtual {p2, v0, p1, v3, v4}, Lcom/amazon/sitb/android/purchase/PrepareBuyResponseParser;->parse(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 323
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string/jumbo v0, "prepareBuy: Error processing response"

    invoke-interface {p2, v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public kcpUnBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;II)Lcom/amazon/sitb/android/UnBuyResult;
    .locals 6

    .line 237
    sget-object v0, Lcom/amazon/sitb/android/UnBuyResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/UnBuyResult;

    .line 239
    sget-object v1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/amazon/sitb/android/PurchaseRecord;->getOrderId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {p2}, Lcom/amazon/sitb/android/PurchaseRecord;->getOrderItemId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "unBuy: asin=%s, orderId=%s, orderItemdId=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    :goto_0
    if-ge v3, v5, :cond_1

    .line 245
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/sitb/android/PurchaseRecord;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/sitb/android/PurchaseRecord;->getOrderItemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/amazon/sitb/android/impl/StoreActions;->postUnBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object v1

    .line 246
    new-instance v2, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;

    invoke-direct {v2, v1}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;-><init>(Lcom/amazon/sitb/android/StoreResponse;)V

    .line 249
    invoke-virtual {v2}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->getJsonResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/UnBuyResult;->setErrorCode(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v2}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/UnBuyResult;->setResponseSuccess(Z)V

    goto :goto_2

    .line 261
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/amazon/sitb/android/impl/StoreActions;->kcpPrepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 266
    sget-object v2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "RuntimeException during book purchase"

    invoke-interface {v2, v4, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v0, p3}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p3

    .line 141
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/sitb/android/StoreDestination;->BUY:Lcom/amazon/sitb/android/StoreDestination;

    if-ne p4, v0, :cond_0

    .line 142
    iget-object p2, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p4, p0, Lcom/amazon/sitb/android/impl/StoreActions;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p4

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/amazon/sitb/android/Metric;->getMetricName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p1, v0, p3, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public openMYK(I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.amazon.com/gp/digital/fiona/manage/?ref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/impl/StoreActions;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public prepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;
    .locals 3

    .line 123
    sget-object v0, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareBuy starting: asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p2

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/StoreActions;->glideClient:Lcom/amazon/sitb/android/purchase/GlideClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/purchase/GlideClient;->getOfferFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "RuntimeException during book purchase"

    invoke-interface {p2, v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public unBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;I)Lcom/amazon/sitb/android/UnBuyResult;
    .locals 4

    .line 103
    sget-object v0, Lcom/amazon/sitb/android/UnBuyResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/UnBuyResult;

    .line 105
    sget-object v1, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "unBuy starting: asin=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v1, p3}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p3

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/StoreActions;->glideClient:Lcom/amazon/sitb/android/purchase/GlideClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/sitb/android/purchase/GlideClient;->returnAsin(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/sitb/android/UnBuyResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Lcom/amazon/sitb/android/impl/StoreActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "RuntimeException during book purchase"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
