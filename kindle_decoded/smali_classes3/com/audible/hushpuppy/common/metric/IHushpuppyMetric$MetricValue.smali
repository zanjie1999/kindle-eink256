.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum ERROR_304:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum INFO:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum PriceNotRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum PriceNotRetrievedUserRestricted:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

.field public static final enum SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 652
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v1, 0x0

    const-string v2, "Clicked"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 654
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v2, 0x1

    const-string v3, "Occurred"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 656
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v3, 0x2

    const-string v4, "PriceNotRetrieved"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->PriceNotRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 658
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v4, 0x3

    const-string v5, "PriceNotRetrievedUserRestricted"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->PriceNotRetrievedUserRestricted:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 660
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v5, 0x4

    const-string v6, "NetworkCall"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 662
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v6, 0x5

    const-string v7, "INFO"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->INFO:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 664
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v7, 0x6

    const-string v8, "ERROR"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 666
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/4 v8, 0x7

    const-string v9, "ERROR_304"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR_304:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 668
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/16 v9, 0x8

    const-string v10, "SUCCESS"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    .line 650
    sget-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v11, v10, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->PriceNotRetrieved:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->PriceNotRetrievedUserRestricted:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->INFO:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR_304:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;
    .locals 1

    .line 650
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;
    .locals 1

    .line 650
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    return-object v0
.end method
