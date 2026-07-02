.class public final Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;
.super Ljava/lang/Object;
.source "OnPurchaseCallback.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final downloadAfterPurchase:Z

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final isToaRedeem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lde/greenrobot/event/EventBus;ZZ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->asin:Lcom/audible/mobile/domain/Asin;

    .line 48
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->eventBus:Lde/greenrobot/event/EventBus;

    .line 49
    iput-boolean p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->downloadAfterPurchase:Z

    .line 50
    iput-boolean p4, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->isToaRedeem:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;)V
    .locals 5

    .line 56
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getHttpStatus()Lcom/audible/hushpuppy/common/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/http/HttpStatus;->getHttpStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getInternalResponseCode()Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    move-result-object v2

    const-string v3, "OnPurchaseCallback: Http Code %s, Internal Code: %s"

    .line 56
    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getHttpStatus()Lcom/audible/hushpuppy/common/http/HttpStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->getType()Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback$1;->$SwitchMap$com$audible$hushpuppy$common$http$HttpStatus$StatusType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 70
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "This should not happen. Return Type is not SUCCESS, Client Error nor Server Error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v3, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->BUSINESS_LOGIC_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getInternalResponseCode()Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    move-result-object p1

    iget-boolean v4, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->isToaRedeem:Z

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;Lcom/audible/hushpuppy/common/http/InternalResponseCode;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->ERROR:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    iget-boolean v3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->isToaRedeem:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;Z)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->asin:Lcom/audible/mobile/domain/Asin;

    iget-boolean v2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->downloadAfterPurchase:Z

    iget-boolean v3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->isToaRedeem:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;-><init>(Lcom/audible/mobile/domain/Asin;ZZ)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;->execute(Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;)V

    return-void
.end method
