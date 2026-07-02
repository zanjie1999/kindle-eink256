.class public Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;
.super Ljava/lang/Object;
.source "PurchaseResponseParser.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/network/INetworkResponseParser;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field public static final ORDER_RESULT_NO_ERROR_CODE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

.field public static final ORDER_RESULT_NULL_OR_EMPTY:Lcom/audible/hushpuppy/common/http/InternalResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "PurchaseOrderResultIsNullOrEmpty"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->ORDER_RESULT_NULL_OR_EMPTY:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 36
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "PurchaseOrderResultHasNoErrorCode"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->ORDER_RESULT_NO_ERROR_CODE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseResponse(ILjava/lang/String;)Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;
    .locals 3

    .line 55
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/common/http/HttpStatus;-><init>(I)V

    .line 57
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->SUCCESS_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isServerError()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->SERVER_ERROR_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 67
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->NULL_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    .line 70
    :cond_2
    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 71
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->EMPTY_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    .line 78
    :cond_3
    invoke-static {p2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->newJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    .line 80
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unable to parse json for BuyAudio"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 81
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->UNKNOWN_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    :cond_4
    const-string p2, "order_id"

    .line 85
    invoke-static {p1, p2}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "order_result"

    .line 86
    invoke-static {p1, v1}, Lcom/audible/hushpuppy/service/relationship/parser/JsonHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Order id: %s, result: %s"

    invoke-interface {v1, v2, p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 90
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "There is no order result."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->ORDER_RESULT_NULL_OR_EMPTY:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    :cond_5
    const-string p2, ":"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 98
    array-length p2, p1

    const/4 v1, 0x2

    if-ge p2, v1, :cond_6

    .line 100
    new-instance p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    sget-object p2, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->ORDER_RESULT_NO_ERROR_CODE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {p1, v0, p2}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p1

    :cond_6
    const/4 p2, 0x1

    .line 103
    aget-object p1, p1, p2

    const/16 v1, 0x20

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 112
    sget-object p2, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "There is no error message coming from server."

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const-string p2, ""

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, p2

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object p1, v2

    .line 119
    :goto_0
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error code: %s, message: %s"

    invoke-interface {v1, v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-instance p2, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    new-instance v1, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0, v1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;-><init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V

    return-object p2
.end method
