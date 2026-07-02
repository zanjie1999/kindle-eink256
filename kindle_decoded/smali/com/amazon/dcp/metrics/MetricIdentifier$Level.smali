.class public final enum Lcom/amazon/dcp/metrics/MetricIdentifier$Level;
.super Ljava/lang/Enum;
.source "MetricIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/metrics/MetricIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/dcp/metrics/MetricIdentifier$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

.field public static final enum CRITICAL:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

.field public static final enum ERROR:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

.field public static final enum INFO:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

.field public static final enum WARN:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 118
    new-instance v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    const/4 v1, 0x0

    const-string v2, "INFO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    .line 119
    new-instance v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->WARN:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    .line 120
    new-instance v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->ERROR:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    .line 121
    new-instance v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    const/4 v4, 0x3

    const-string v5, "CRITICAL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->CRITICAL:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    .line 116
    sget-object v6, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->WARN:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->ERROR:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->$VALUES:[Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCode(I)Lcom/amazon/dcp/metrics/MetricIdentifier$Level;
    .locals 5

    .line 126
    invoke-static {}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->values()[Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 128
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/dcp/metrics/MetricIdentifier$Level;
    .locals 1

    .line 116
    const-class v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    return-object p0
.end method

.method public static values()[Lcom/amazon/dcp/metrics/MetricIdentifier$Level;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->$VALUES:[Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    invoke-virtual {v0}, [Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    return-object v0
.end method
