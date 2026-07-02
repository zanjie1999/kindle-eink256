.class public final enum Lcom/audible/hushpuppy/service/upsell/UpsellSource;
.super Ljava/lang/Enum;
.source "UpsellSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/service/upsell/UpsellSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource;

.field public static final enum ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

.field public static final enum KTOS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

.field public static final enum LEFT_NAV:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

.field public static final enum START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;


# instance fields
.field private final buyAudiobook:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field private final toaOfferRedeem:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v3, 0x0

    const-string v4, "ACTION_BAR"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 20
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v4, 0x1

    const-string v5, "START_ACTIONS"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->UNKNOWN:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v2, 0x2

    const-string v5, "LEFT_NAV"

    invoke-direct {v0, v5, v2, v1, v1}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->LEFT_NAV:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 24
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->UNKNOWN:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v5, 0x3

    const-string v6, "KTOS"

    invoke-direct {v0, v6, v5, v1, v1}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->KTOS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 16
    sget-object v6, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    aput-object v6, v1, v3

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->LEFT_NAV:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    aput-object v3, v1, v2

    aput-object v0, v1, v5

    sput-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;",
            "Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "buyAudiobook cannot be null"

    .line 31
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->buyAudiobook:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const-string p1, "toaOfferRedeem cannot be null"

    .line 32
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    iput-object p4, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->toaOfferRedeem:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/UpsellSource;
    .locals 1

    .line 16
    const-class v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/service/upsell/UpsellSource;
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/service/upsell/UpsellSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    return-object v0
.end method


# virtual methods
.method public getBuyAudiobookErrorMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->buyAudiobook:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->access$200(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    return-object v0
.end method

.method public getBuyAudiobookPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->buyAudiobook:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->access$000(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    return-object v0
.end method

.method public getBuyAudiobookSuccessMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->buyAudiobook:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->access$100(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    return-object v0
.end method

.method public getToaOfferRedeemPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->toaOfferRedeem:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->access$000(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    return-object v0
.end method
