.class final enum Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;
.super Ljava/lang/Enum;
.source "UpsellSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/UpsellSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PurchaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field public static final enum BUY_AUDIOBOOK_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field public static final enum BUY_AUDIOBOOK_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field public static final enum TOA_OFFER_REDEEM_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field public static final enum TOA_OFFER_REDEEM_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

.field public static final enum UNKNOWN:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;


# instance fields
.field private final errorMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

.field private final purchaseMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

.field private final successMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 71
    new-instance v6, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookSuccessUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookErrorUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string v1, "BUY_AUDIOBOOK_ACTION_BAR"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V

    sput-object v6, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    .line 73
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v10, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookSuccessStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v12, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookErrorStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string v8, "BUY_AUDIOBOOK_START_ACTIONS"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    .line 76
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemSuccessUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemErrorUpsell:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string v2, "TOA_OFFER_REDEEM_ACTION_BAR"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    .line 79
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v10, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemSuccessStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v12, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeemErrorStartActions:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string v8, "TOA_OFFER_REDEEM_START_ACTIONS"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    .line 85
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    sget-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->Unknown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x4

    move-object v1, v0

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->UNKNOWN:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    .line 68
    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->BUY_AUDIOBOOK_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->TOA_OFFER_REDEEM_START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "purchaseMetricKey cannot be null"

    .line 94
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->purchaseMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string p1, "successMetricKey cannot be null"

    .line 95
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    iput-object p4, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->successMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    const-string p1, "errorMetricKey cannot be null"

    .line 96
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    iput-object p5, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->errorMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->getPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->getSuccessMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->getErrorMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object p0

    return-object p0
.end method

.method private getErrorMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->errorMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    return-object v0
.end method

.method private getPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->purchaseMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    return-object v0
.end method

.method private getSuccessMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->successMetricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;
    .locals 1

    .line 68
    const-class v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;
    .locals 1

    .line 68
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/service/upsell/UpsellSource$PurchaseType;

    return-object v0
.end method
