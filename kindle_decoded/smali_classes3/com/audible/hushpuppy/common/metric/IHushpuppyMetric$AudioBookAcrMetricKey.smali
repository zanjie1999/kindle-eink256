.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

.field public static final enum AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

.field public static final enum AudioBookACRSuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 624
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    const/4 v1, 0x0

    const-string v2, "AudioBookACRError_"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    .line 626
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    const/4 v2, 0x1

    const-string v3, "AudioBookACRSuccess"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRSuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    .line 619
    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->AudioBookACRError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;
    .locals 1

    .line 619
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;
    .locals 1

    .line 619
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudioBookAcrMetricKey;

    return-object v0
.end method
