.class public final enum Lcom/amazon/client/metrics/thirdparty/MetricEventType;
.super Ljava/lang/Enum;
.source "MetricEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/MetricEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/MetricEventType;

.field public static final enum AGGREGATING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

.field public static final enum AVERAGING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    const/4 v1, 0x0

    const-string v2, "AGGREGATING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AGGREGATING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    .line 52
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    const/4 v2, 0x1

    const-string v3, "AVERAGING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AVERAGING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    .line 42
    sget-object v4, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AGGREGATING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->AGGREGATING:Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEventType;
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/MetricEventType;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/MetricEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    return-object v0
.end method
