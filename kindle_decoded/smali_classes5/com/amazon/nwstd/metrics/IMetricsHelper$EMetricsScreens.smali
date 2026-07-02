.class public final enum Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;
.super Ljava/lang/Enum;
.source "IMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/IMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMetricsScreens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum BROWSE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum TOC:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

.field public static final enum UPSELL_SHOP_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v1, 0x0

    const-string v2, "MAGAZINE_VIEWER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 41
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v2, 0x1

    const-string v3, "TOC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->TOC:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 42
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v3, 0x2

    const-string v4, "BROWSE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 43
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v4, 0x3

    const-string v5, "BOOKMARK_POPUP"

    invoke-direct {v0, v5, v4}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 44
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v5, 0x4

    const-string v6, "UPSELL_FULL_PAGE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 45
    new-instance v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v6, 0x5

    const-string v7, "UPSELL_SHOP_PAGE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_SHOP_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    .line 39
    sget-object v8, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->TOC:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;

    return-object v0
.end method
