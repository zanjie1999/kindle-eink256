.class public final enum Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;
.super Ljava/lang/Enum;
.source "SearchAttemptMetricsSection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

.field public static final enum ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

.field public static final enum NON_ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    const/4 v2, 0x0

    const-string v3, "NON_ASIN"

    const-string v4, "Non ASIN"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->NON_ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    const-string v2, "ASIN"

    const/4 v3, 0x1

    .line 24
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    return-object v0
.end method


# virtual methods
.method public final getEmitName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->emitName:Ljava/lang/String;

    return-object v0
.end method
