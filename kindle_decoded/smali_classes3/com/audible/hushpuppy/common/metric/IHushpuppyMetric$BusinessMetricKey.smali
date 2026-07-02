.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum ActionBarUpsellWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum InvalidContentSelection:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum LocationSeekerPlayerWidgetRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum MatchmakerLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum NavMenuAddNarration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum OpenFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum OpenNarrationSpeedMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum OpenPlayerFromPersistentPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum OpenSleepTimerMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum PlayFromHere:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum PlayerFromReaderLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum PlayingFull:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum PlayingSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionReadAndListen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionTryAgain:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsBuyButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsBuyWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsCancelButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsTimeAfterBuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsToaRedeemButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum StartActionsWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

.field public static final enum SyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 31
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v1, 0x0

    const-string v2, "NavMenuAddNarration"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->NavMenuAddNarration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v2, 0x1

    const-string v3, "PlayingSample"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v3, 0x2

    const-string v4, "PlayingFull"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingFull:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 40
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v4, 0x3

    const-string v5, "SyncData"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->SyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 43
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v5, 0x4

    const-string v6, "StartActionsWidgetShown"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 46
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v6, 0x5

    const-string v7, "StartActionsBuyButton"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 49
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v7, 0x6

    const-string v8, "StartActionsToaRedeemButton"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsToaRedeemButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 52
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/4 v8, 0x7

    const-string v9, "StartActionsTimeAfterBuy"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsTimeAfterBuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 55
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v9, 0x8

    const-string v10, "StartActionsBuyWithoutPrice"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v10, 0x9

    const-string v11, "StartActionsCancelButton"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsCancelButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 61
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v11, 0xa

    const-string v12, "MatchmakerLeftNav"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->MatchmakerLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 64
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v12, 0xb

    const-string v13, "PlayFromHere"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayFromHere:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 67
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v13, 0xc

    const-string v14, "ActionBarUpsellWidgetShown"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->ActionBarUpsellWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 70
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v14, 0xd

    const-string v15, "LocationSeekerPlayerWidgetRetrieved"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->LocationSeekerPlayerWidgetRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 73
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v15, 0xe

    const-string v14, "PlayerFromReaderLeftNav"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayerFromReaderLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 76
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v14, 0xf

    const-string v15, "OpenPlayerFromPersistentPlayer"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenPlayerFromPersistentPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 79
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v15, 0x10

    const-string v14, "InvalidContentSelection"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->InvalidContentSelection:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 82
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v14, 0x11

    const-string v15, "OpenFullPlayer"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 85
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v15, 0x12

    const-string v14, "OpenNarrationSpeedMenu"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenNarrationSpeedMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 88
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v14, 0x13

    const-string v15, "OpenSleepTimerMenu"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenSleepTimerMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 91
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v15, 0x14

    const-string v14, "StartActionTryAgain"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionTryAgain:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 94
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v14, 0x15

    const-string v15, "StartActionReadAndListen"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionReadAndListen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v15, 0x16

    new-array v15, v15, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    .line 29
    sget-object v16, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->NavMenuAddNarration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v16, v15, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingFull:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->SyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsToaRedeemButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsTimeAfterBuy:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v9

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsCancelButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v10

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->MatchmakerLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v11

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayFromHere:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v12

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->ActionBarUpsellWidgetShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    aput-object v1, v15, v13

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->LocationSeekerPlayerWidgetRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayerFromReaderLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenPlayerFromPersistentPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->InvalidContentSelection:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0x11

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenNarrationSpeedMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0x12

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenSleepTimerMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0x13

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionTryAgain:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    const/16 v2, 0x14

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;
    .locals 1

    .line 29
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;
    .locals 1

    .line 29
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    return-object v0
.end method
