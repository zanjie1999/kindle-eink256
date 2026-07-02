.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

.field public static final enum AudiobookPriceTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

.field public static final enum CompanionMappingFullTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

.field public static final enum CompanionMappingPartialTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

.field public static final enum PFMUpdateTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

.field public static final enum ToaEligibilityTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 475
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "CompanionMappingFullTimer"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingFullTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    .line 477
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "CompanionMappingPartialTimer"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingPartialTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    .line 479
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v3, 0x2

    const-string v4, "AudiobookPriceTimer"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->AudiobookPriceTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    .line 481
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v4, 0x3

    const-string v5, "PFMUpdateTimer"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->PFMUpdateTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    .line 483
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v5, 0x4

    const-string v6, "ToaEligibilityTimer"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->ToaEligibilityTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    .line 473
    sget-object v7, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingFullTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingPartialTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->AudiobookPriceTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->PFMUpdateTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;
    .locals 1

    .line 473
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;
    .locals 1

    .line 473
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    return-object v0
.end method
