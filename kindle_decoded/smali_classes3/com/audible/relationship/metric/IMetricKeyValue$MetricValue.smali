.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

.field public static final enum ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

.field public static final enum INFO:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

.field public static final enum NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

.field public static final enum OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

.field public static final enum SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 185
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v1, 0x0

    const-string v2, "OCCURRED"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    .line 187
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v2, 0x1

    const-string v3, "NETWORK_CALL"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    .line 189
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->INFO:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    .line 191
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    .line 193
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v5, 0x4

    const-string v6, "SUCCESS"

    invoke-direct {v0, v6, v5}, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    .line 183
    sget-object v7, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->INFO:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;
    .locals 1

    .line 183
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;
    .locals 1

    .line 183
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    return-object v0
.end method
