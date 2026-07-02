.class public final enum Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum ERROR:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum ERROR_304:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum INFO:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum NetworkCall:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

.field public static final enum SUCCESS:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 54
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v1, 0x0

    const-string v2, "Occurred"

    invoke-direct {v0, v2, v1}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 56
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v2, 0x1

    const-string v3, "NetworkCall"

    invoke-direct {v0, v3, v2}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->NetworkCall:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 58
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->INFO:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 60
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 62
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v5, 0x4

    const-string v6, "ERROR_304"

    invoke-direct {v0, v6, v5}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR_304:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 64
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v6, 0x5

    const-string v7, "SUCCESS"

    invoke-direct {v0, v7, v6}, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    .line 52
    sget-object v8, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->Occurred:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->NetworkCall:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->INFO:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR_304:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;
    .locals 1

    .line 52
    const-class v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    return-object p0
.end method

.method public static values()[Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;
    .locals 1

    .line 52
    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0}, [Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    return-object v0
.end method
