.class public final enum Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;
.super Ljava/lang/Enum;
.source "DefaultMetricsRecorderFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

.field public static final enum INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    aput-object v0, v2, v1

    .line 4
    sput-object v2, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->$VALUES:[Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    return-object p0
.end method

.method public static values()[Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->$VALUES:[Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, [Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/amazon/xray/metrics/MetricsRecorder;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder;->INSTANCE:Lcom/amazon/xray/metrics/FastMetricsRecorder;

    return-object v0
.end method
