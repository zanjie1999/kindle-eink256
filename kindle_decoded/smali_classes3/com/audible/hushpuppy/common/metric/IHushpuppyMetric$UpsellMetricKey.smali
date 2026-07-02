.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellBannerDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellErrorDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellLearnMore:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPanelGeneralError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPanelMoreDetails:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPanelRedirectToTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPanelTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPanelUnbuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPlayerNarrationSpeed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchaseCancel:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchaseOnBookClose:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchaseOnDownload:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchaseOnTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchaseQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchased:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellPurchasedWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellSamplePaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellSamplePlayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellToaOfferRedeem:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

.field public static final enum UpsellToaOfferRedeemQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 136
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v1, 0x0

    const-string v2, "UpsellBannerDisplayed"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellBannerDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 138
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v2, 0x1

    const-string v3, "UpsellSamplePlayed"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePlayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 140
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v3, 0x2

    const-string v4, "UpsellSamplePaused"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 142
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v4, 0x3

    const-string v5, "UpsellPurchased"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchased:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 144
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v5, 0x4

    const-string v6, "UpsellLearnMore"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellLearnMore:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 146
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v6, 0x5

    const-string v7, "UpsellPurchasedWithoutPrice"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchasedWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 148
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v7, 0x6

    const-string v8, "UpsellErrorDisplayed"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellErrorDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 150
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/4 v8, 0x7

    const-string v9, "UpsellPlayerNarrationSpeed"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPlayerNarrationSpeed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 152
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v9, 0x8

    const-string v10, "UpsellPanelMoreDetails"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelMoreDetails:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 154
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v10, 0x9

    const-string v11, "UpsellPanelTOS"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 159
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v11, 0xa

    const-string v12, "UpsellPanelRedirectToTOS"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelRedirectToTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 161
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v12, 0xb

    const-string v13, "UpsellPanelUnbuy"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelUnbuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 166
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v13, 0xc

    const-string v14, "UpsellPanelGeneralError"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelGeneralError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 169
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v14, 0xd

    const-string v15, "UpsellPurchaseQueued"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 172
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v15, 0xe

    const-string v14, "UpsellToaOfferRedeem"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeem:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 175
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v14, 0xf

    const-string v15, "UpsellToaOfferRedeemQueued"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeemQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 178
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v15, 0x10

    const-string v14, "UpsellPurchaseCancel"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseCancel:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 181
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v14, 0x11

    const-string v15, "UpsellPurchaseOnDownload"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnDownload:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 184
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v15, 0x12

    const-string v14, "UpsellPurchaseOnBookClose"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnBookClose:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 187
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v14, 0x13

    const-string v15, "UpsellPurchaseOnTimeOut"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v15, 0x14

    new-array v15, v15, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    .line 134
    sget-object v16, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellBannerDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v16, v15, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePlayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchased:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellLearnMore:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchasedWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellErrorDisplayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPlayerNarrationSpeed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelMoreDetails:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v9

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v10

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelRedirectToTOS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v11

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelUnbuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v12

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelGeneralError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    aput-object v1, v15, v13

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeem:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeemQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseCancel:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnDownload:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0x11

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnBookClose:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    const/16 v2, 0x12

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;
    .locals 1

    .line 134
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;
    .locals 1

    .line 134
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    return-object v0
.end method
