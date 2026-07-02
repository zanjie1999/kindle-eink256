.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

.field public static final enum AudibleServiceConnectionWithPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

.field public static final enum AudibleServiceConnectionWithoutPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 611
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    const/4 v1, 0x0

    const-string v2, "AudibleServiceConnectionWithoutPfm"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->AudibleServiceConnectionWithoutPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    .line 613
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    const/4 v2, 0x1

    const-string v3, "AudibleServiceConnectionWithPfm"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->AudibleServiceConnectionWithPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    .line 609
    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->AudibleServiceConnectionWithoutPfm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;
    .locals 1

    .line 609
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;
    .locals 1

    .line 609
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$AudibleServiceConnection;

    return-object v0
.end method
