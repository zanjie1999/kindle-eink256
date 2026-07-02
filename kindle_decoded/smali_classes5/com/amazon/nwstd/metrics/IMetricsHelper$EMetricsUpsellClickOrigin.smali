.class public final enum Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;
.super Ljava/lang/Enum;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/IMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMetricsUpsellClickOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

.field public static final enum UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

.field public static final enum UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    const/4 v1, 0x0

    const-string v2, "UPSELL_FULL_PAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    .line 53
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    const/4 v2, 0x1

    const-string v3, "UPSELL_BANNER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    .line 51
    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    return-object v0
.end method
