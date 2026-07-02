.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

.field public static final enum ExternalScreenClosedAudioPlaybackResumeCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

.field public static final enum ExternalScreenClosedAudioPlaybackResumed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

.field public static final enum ExternalScreenClosedByAudible:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

.field public static final enum ExternalScreenOpenedAudioPlaybackPaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 551
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    const/4 v1, 0x0

    const-string v2, "ExternalScreenOpenedAudioPlaybackPaused"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenOpenedAudioPlaybackPaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    .line 553
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    const/4 v2, 0x1

    const-string v3, "ExternalScreenClosedAudioPlaybackResumed"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    .line 555
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    const/4 v3, 0x2

    const-string v4, "ExternalScreenClosedAudioPlaybackResumeCancelled"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumeCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    .line 557
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    const/4 v4, 0x3

    const-string v5, "ExternalScreenClosedByAudible"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedByAudible:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    .line 549
    sget-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenOpenedAudioPlaybackPaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumeCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;
    .locals 1

    .line 549
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;
    .locals 1

    .line 549
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    return-object v0
.end method
