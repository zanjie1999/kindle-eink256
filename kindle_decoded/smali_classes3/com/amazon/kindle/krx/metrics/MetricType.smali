.class public final enum Lcom/amazon/kindle/krx/metrics/MetricType;
.super Ljava/lang/Enum;
.source "MetricType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/metrics/MetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/metrics/MetricType;

.field public static final enum CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

.field public static final enum DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

.field public static final enum ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

.field public static final enum INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

.field public static final enum WARN:Lcom/amazon/kindle/krx/metrics/MetricType;


# instance fields
.field private code:Ljava/lang/String;

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    const-string v3, "D"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/kindle/krx/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v2, 0x1

    const-string v3, "INFO"

    const-string v4, "I"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/amazon/kindle/krx/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v3, 0x2

    const-string v4, "WARN"

    const-string v5, "W"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/amazon/kindle/krx/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    const-string v6, "E"

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/amazon/kindle/krx/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v5, 0x4

    const-string v6, "CRITICAL"

    const-string v7, "C"

    invoke-direct {v0, v6, v5, v7, v5}, Lcom/amazon/kindle/krx/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 11
    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->$VALUES:[Lcom/amazon/kindle/krx/metrics/MetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/krx/metrics/MetricType;->code:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/amazon/kindle/krx/metrics/MetricType;->priority:I

    return-void
.end method

.method public static getMetricType(I)Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 5

    .line 62
    invoke-static {}, Lcom/amazon/kindle/krx/metrics/MetricType;->values()[Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    iget v4, v3, Lcom/amazon/kindle/krx/metrics/MetricType;->priority:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/metrics/MetricType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->$VALUES:[Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/metrics/MetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/metrics/MetricType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/kindle/krx/metrics/MetricType;->priority:I

    return v0
.end method
