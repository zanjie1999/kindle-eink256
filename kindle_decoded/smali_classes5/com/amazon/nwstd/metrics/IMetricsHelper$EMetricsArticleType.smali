.class public final enum Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;
.super Ljava/lang/Enum;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/IMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMetricsArticleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

.field public static final enum ADVERTISEMENT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

.field public static final enum ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

.field public static final enum COVER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    const/4 v1, 0x0

    const-string v2, "COVER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->COVER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    .line 18
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    const/4 v2, 0x1

    const-string v3, "ARTICLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    .line 19
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    const/4 v3, 0x2

    const-string v4, "ADVERTISEMENT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->ADVERTISEMENT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    .line 16
    sget-object v5, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->COVER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->ARTICLE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    return-object v0
.end method
