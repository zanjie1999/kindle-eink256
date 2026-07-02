.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitDismissedByBackButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitDismissedByDoneButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitDismissedByTapOutsideOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitDismissedByXButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitNextButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitNextSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitPrevButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitPrevSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitReadyButNotShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

.field public static final enum JitShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 338
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v1, 0x0

    const-string v2, "JitShown"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 341
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v2, 0x1

    const-string v3, "JitReadyButNotShown"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitReadyButNotShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 344
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v3, 0x2

    const-string v4, "JitDismissedByDoneButton"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByDoneButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 347
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v4, 0x3

    const-string v5, "JitDismissedByBackButtonOnPage_"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByBackButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 350
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v5, 0x4

    const-string v6, "JitDismissedByXButtonOnPage_"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByXButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 353
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v6, 0x5

    const-string v7, "JitDismissedByTapOutsideOnPage_"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByTapOutsideOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 356
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v7, 0x6

    const-string v8, "JitNextButtonOnPage_"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 359
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/4 v8, 0x7

    const-string v9, "JitPrevButtonOnPage_"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitPrevButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 362
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/16 v9, 0x8

    const-string v10, "JitNextSwipeOnPage_"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 365
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/16 v10, 0x9

    const-string v11, "JitPrevSwipeOnPage_"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitPrevSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    .line 335
    sget-object v12, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v12, v11, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitReadyButNotShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByDoneButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByBackButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByXButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByTapOutsideOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitPrevButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;
    .locals 1

    .line 335
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;
    .locals 1

    .line 335
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    return-object v0
.end method
