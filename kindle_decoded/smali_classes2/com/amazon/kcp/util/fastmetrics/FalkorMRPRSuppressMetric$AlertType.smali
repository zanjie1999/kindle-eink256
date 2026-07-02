.class public final enum Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;
.super Ljava/lang/Enum;
.source "FalkorMRPRSuppressMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

.field public static final enum FALKOR_MRPR_SUPPRESSED:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    const/4 v2, 0x0

    const-string v3, "FALKOR_MRPR_SUPPRESSED"

    const-string v4, "falkor_mrpr_suppressed"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->FALKOR_MRPR_SUPPRESSED:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->value:Ljava/lang/String;

    return-object v0
.end method
