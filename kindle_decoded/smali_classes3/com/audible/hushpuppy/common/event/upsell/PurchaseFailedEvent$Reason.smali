.class public final enum Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
.super Ljava/lang/Enum;
.source "PurchaseFailedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

.field public static final enum BUSINESS_LOGIC_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

.field public static final enum ERROR:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

.field public static final enum IN_LIBRARY_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

.field public static final enum PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->ERROR:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 53
    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const/4 v2, 0x1

    const-string v3, "BUSINESS_LOGIC_FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->BUSINESS_LOGIC_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 55
    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const/4 v3, 0x2

    const-string v4, "IN_LIBRARY_FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->IN_LIBRARY_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 57
    new-instance v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const/4 v4, 0x3

    const-string v5, "PAYMENT_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->PAYMENT_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    .line 49
    sget-object v6, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->ERROR:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->BUSINESS_LOGIC_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->IN_LIBRARY_FAILURE:Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->$VALUES:[Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
    .locals 1

    .line 49
    const-class v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;
    .locals 1

    .line 49
    sget-object v0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->$VALUES:[Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent$Reason;

    return-object v0
.end method
