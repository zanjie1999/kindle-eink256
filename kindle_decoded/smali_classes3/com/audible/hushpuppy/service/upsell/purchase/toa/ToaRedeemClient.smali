.class public final Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;
.super Ljava/lang/Object;
.source "ToaRedeemClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 61
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lde/greenrobot/event/EventBus;

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->eventBus:Lde/greenrobot/event/EventBus;

    .line 62
    invoke-static {p3}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/pfm/endpoint/IEndpointFactory;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    return-void
.end method

.method private getAssociateCodeFromUpsellSource(Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Ljava/lang/String;
    .locals 3

    .line 105
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient$1;->$SwitchMap$com$audible$hushpuppy$service$upsell$UpsellSource:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 111
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No associate code associated to upsell source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    .line 109
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->START_ACTIONS_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->getAssociateCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->ACTION_BAR_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->getAssociateCode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public redeemToaOffer(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V
    .locals 9

    if-eqz p2, :cond_3

    .line 68
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->getAssociateCodeFromUpsellSource(Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Ljava/lang/String;

    move-result-object v4

    .line 76
    new-instance v6, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;

    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->eventBus:Lde/greenrobot/event/EventBus;

    const/4 v1, 0x1

    invoke-direct {v6, p2, v0, p4, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lde/greenrobot/event/EventBus;ZZ)V

    .line 78
    iget-object p4, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p4

    if-nez p4, :cond_1

    .line 80
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Can\'t make purchase request - no active user account."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v7

    if-nez v7, :cond_2

    .line 86
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Can\'t make purchase request - no endpoints for this user account."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_2
    new-instance p4, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;

    iget-object v5, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V

    .line 92
    invoke-virtual {p4}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->executeRequest()V

    return-void

    .line 69
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaRedeemClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Cannot redeem the offer with a null asin."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
