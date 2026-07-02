.class public final enum Lcom/amazon/kindle/services/metrics/MetricCounters;
.super Ljava/lang/Enum;
.source "MetricCounters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/metrics/MetricCounters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/metrics/MetricCounters;

.field public static final enum COUNTER:Lcom/amazon/kindle/services/metrics/MetricCounters;

.field public static final enum NONE:Lcom/amazon/kindle/services/metrics/MetricCounters;

.field public static final enum TIMER:Lcom/amazon/kindle/services/metrics/MetricCounters;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/kindle/services/metrics/MetricCounters;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/services/metrics/MetricCounters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/services/metrics/MetricCounters;->NONE:Lcom/amazon/kindle/services/metrics/MetricCounters;

    .line 15
    new-instance v0, Lcom/amazon/kindle/services/metrics/MetricCounters;

    const/4 v2, 0x1

    const-string v3, "COUNTER"

    const-string v4, "Counter"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/services/metrics/MetricCounters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/services/metrics/MetricCounters;->COUNTER:Lcom/amazon/kindle/services/metrics/MetricCounters;

    .line 16
    new-instance v0, Lcom/amazon/kindle/services/metrics/MetricCounters;

    const/4 v3, 0x2

    const-string v4, "TIMER"

    const-string v5, "Timer"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/services/metrics/MetricCounters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/services/metrics/MetricCounters;->TIMER:Lcom/amazon/kindle/services/metrics/MetricCounters;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/services/metrics/MetricCounters;

    .line 13
    sget-object v5, Lcom/amazon/kindle/services/metrics/MetricCounters;->NONE:Lcom/amazon/kindle/services/metrics/MetricCounters;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/services/metrics/MetricCounters;->COUNTER:Lcom/amazon/kindle/services/metrics/MetricCounters;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/services/metrics/MetricCounters;->$VALUES:[Lcom/amazon/kindle/services/metrics/MetricCounters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/amazon/kindle/services/metrics/MetricCounters;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/metrics/MetricCounters;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/services/metrics/MetricCounters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/metrics/MetricCounters;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/metrics/MetricCounters;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/services/metrics/MetricCounters;->$VALUES:[Lcom/amazon/kindle/services/metrics/MetricCounters;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/metrics/MetricCounters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/metrics/MetricCounters;

    return-object v0
.end method
