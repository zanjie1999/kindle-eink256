.class public final enum Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;
.super Ljava/lang/Enum;
.source "SearchAttemptMetricsHandlerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

.field public static final enum ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

.field public static final enum GENERAL:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

.field public static final enum OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

.field public static final enum SECTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    const/4 v2, 0x0

    const-string v3, "OUTCOME"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    const/4 v2, 0x1

    const-string v3, "ASIN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    const/4 v2, 0x2

    const-string v3, "GENERAL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->GENERAL:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    const/4 v2, 0x3

    const-string v3, "SECTION"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->SECTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    return-object v0
.end method
