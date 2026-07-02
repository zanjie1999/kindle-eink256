.class public final Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;
.super Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;
.source "PurchaseFailedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isToaRedeem:Z

.field private final reason:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    .line 39
    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->IN_LIBRARY_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100106"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100133"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100160"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100162"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100163"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const-string v2, "100164"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;Lcom/audible/hushpuppy/common/http/InternalResponseCode;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;-><init>(Lcom/audible/mobile/domain/Identifier;)V

    const-string p1, "internalResponseCode cannot be null"

    .line 93
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "defaultReason cannot be null"

    .line 94
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-direct {p0, p3, p2}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->getReasonForInternalResponseCode(Lcom/audible/hushpuppy/common/http/InternalResponseCode;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;)Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->reason:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 96
    iput-boolean p4, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->isToaRedeem:Z

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;-><init>(Lcom/audible/mobile/domain/Identifier;)V

    const-string p1, "defaultReason cannot be null"

    .line 76
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->reason:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 77
    iput-boolean p3, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->isToaRedeem:Z

    return-void
.end method

.method private getReasonForInternalResponseCode(Lcom/audible/hushpuppy/common/http/InternalResponseCode;Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;)Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->getMetricsMessage()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object p2, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->ERROR_CODE_TO_REASON_MAP:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public getReason()Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->reason:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    return-object v0
.end method

.method public isToaRedeem()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->isToaRedeem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseFailedEvent{reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->reason:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "isToaOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;->isToaRedeem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
