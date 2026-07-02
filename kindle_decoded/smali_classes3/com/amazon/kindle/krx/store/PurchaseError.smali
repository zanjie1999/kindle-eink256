.class public final enum Lcom/amazon/kindle/krx/store/PurchaseError;
.super Ljava/lang/Enum;
.source "PurchaseError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/store/PurchaseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum ALREADY_PURCHASED:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum INVALID_ASIN:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum MISSING_ORDER_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum NEED_BILLING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum NEED_CREDIT_CARD:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum NO_PRICING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum ORDER_CANCELED:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum ORDER_CREATED:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum ORDER_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum PRICE_INCREASED:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum PURCHASE_RESTRICTED:Lcom/amazon/kindle/krx/store/PurchaseError;

.field public static final enum UNBUY_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v1, 0x0

    const-string v2, "NEED_BILLING_INFO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->NEED_BILLING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v2, 0x1

    const-string v3, "NEED_CREDIT_CARD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->NEED_CREDIT_CARD:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v3, 0x2

    const-string v4, "ALREADY_PURCHASED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->ALREADY_PURCHASED:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v4, 0x3

    const-string v5, "PRICE_INCREASED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->PRICE_INCREASED:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v5, 0x4

    const-string v6, "ORDER_CREATED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_CREATED:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v6, 0x5

    const-string v7, "ORDER_CANCELED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_CANCELED:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v7, 0x6

    const-string v8, "ORDER_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/4 v8, 0x7

    const-string v9, "UNBUY_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->UNBUY_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/16 v9, 0x8

    const-string v10, "NO_PRICING_INFO"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->NO_PRICING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/16 v10, 0x9

    const-string v11, "INVALID_ASIN"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->INVALID_ASIN:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/16 v11, 0xa

    const-string v12, "MISSING_ORDER_INFO"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->MISSING_ORDER_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    const/16 v12, 0xb

    const-string v13, "PURCHASE_RESTRICTED"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/krx/store/PurchaseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->PURCHASE_RESTRICTED:Lcom/amazon/kindle/krx/store/PurchaseError;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/kindle/krx/store/PurchaseError;

    .line 10
    sget-object v14, Lcom/amazon/kindle/krx/store/PurchaseError;->NEED_BILLING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->NEED_CREDIT_CARD:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->ALREADY_PURCHASED:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->PRICE_INCREASED:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_CREATED:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_CANCELED:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->ORDER_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->UNBUY_ERROR:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->NO_PRICING_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->INVALID_ASIN:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseError;->MISSING_ORDER_INFO:Lcom/amazon/kindle/krx/store/PurchaseError;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/kindle/krx/store/PurchaseError;->$VALUES:[Lcom/amazon/kindle/krx/store/PurchaseError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/PurchaseError;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/krx/store/PurchaseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/store/PurchaseError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/store/PurchaseError;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/krx/store/PurchaseError;->$VALUES:[Lcom/amazon/kindle/krx/store/PurchaseError;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/store/PurchaseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/store/PurchaseError;

    return-object v0
.end method
