.class public final enum Lcom/amazon/whisperjoin/metrics/MetricsProgramName;
.super Ljava/lang/Enum;
.source "MetricsProgramName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/metrics/MetricsProgramName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

.field public static final enum WJv2Provisionable:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

.field public static final enum WJv2Provisioner:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;


# instance fields
.field private final mProgramName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    const/4 v1, 0x0

    const-string v2, "WJv2Provisionable"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->WJv2Provisionable:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    const/4 v2, 0x1

    const-string v3, "WJv2Provisioner"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->WJv2Provisioner:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    .line 6
    sget-object v4, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->WJv2Provisionable:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->mProgramName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricsProgramName;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/metrics/MetricsProgramName;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->mProgramName:Ljava/lang/String;

    return-object v0
.end method
