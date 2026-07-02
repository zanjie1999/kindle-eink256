.class public final enum Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;
.super Ljava/lang/Enum;
.source "SearchAttemptMetricsSection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SectionName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

.field public static final enum LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

.field public static final enum STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    const/4 v2, 0x0

    const-string v3, "LIBRARY"

    const-string v4, "Library"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    const/4 v2, 0x1

    const-string v3, "STORE"

    const-string v4, "Store"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    return-object v0
.end method


# virtual methods
.method public final getEmitName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->emitName:Ljava/lang/String;

    return-object v0
.end method
