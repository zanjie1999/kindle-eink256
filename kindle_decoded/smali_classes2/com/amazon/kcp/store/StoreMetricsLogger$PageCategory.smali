.class final enum Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;
.super Ljava/lang/Enum;
.source "StoreMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PageCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

.field public static final enum BOOK_DETAIL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

.field public static final enum GENERIC_URL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

.field public static final enum STOREFRONT:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;


# instance fields
.field final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    const/4 v1, 0x0

    const-string v2, "STOREFRONT"

    const-string v3, "Storefront"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->STOREFRONT:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    .line 22
    new-instance v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    const/4 v2, 0x1

    const-string v3, "BOOK_DETAIL"

    const-string v4, "BookDetail"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->BOOK_DETAIL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    .line 23
    new-instance v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    const/4 v3, 0x2

    const-string v4, "GENERIC_URL"

    const-string v5, "GenericUrl"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->GENERIC_URL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    .line 20
    sget-object v5, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->STOREFRONT:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->BOOK_DETAIL:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->$VALUES:[Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->$VALUES:[Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    return-object v0
.end method
