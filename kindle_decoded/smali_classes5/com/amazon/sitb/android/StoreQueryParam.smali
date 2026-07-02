.class public final enum Lcom/amazon/sitb/android/StoreQueryParam;
.super Ljava/lang/Enum;
.source "StoreQueryParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/StoreQueryParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum ASIN:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum ASINS:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum ASSOCIATE_TAG:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum COUNTRY_OF_RESIDENCE:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum CURRENCY:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum DEVICE_SERIAL_NUMBER:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum ORDER_ID:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum ORDER_ITEM_ID:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum PRICE:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum SESSION_ID:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum SITE:Lcom/amazon/sitb/android/StoreQueryParam;

.field public static final enum USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v1, 0x0

    const-string v2, "ASIN"

    const-string v3, "asin"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->ASIN:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 13
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v2, 0x1

    const-string v3, "ASINS"

    const-string v4, "asins"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->ASINS:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 16
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v3, 0x2

    const-string v4, "COUNTRY_OF_RESIDENCE"

    const-string v5, "country"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->COUNTRY_OF_RESIDENCE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 19
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v4, 0x3

    const-string v5, "CURRENCY"

    const-string/jumbo v6, "ourPriceCurrency"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->CURRENCY:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 22
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v5, 0x4

    const-string v6, "DEVICE_SERIAL_NUMBER"

    const-string v7, "dsn"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_SERIAL_NUMBER:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 25
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v6, 0x5

    const-string v7, "DEVICE_TYPE"

    const-string v8, "deviceType"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 28
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v7, 0x6

    const-string v8, "METHOD"

    const-string v9, "method"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 31
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/4 v8, 0x7

    const-string v9, "PRICE"

    const-string/jumbo v10, "ourPriceAmount"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->PRICE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 34
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v9, 0x8

    const-string v10, "SESSION_ID"

    const-string/jumbo v11, "sid"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->SESSION_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 37
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v10, 0x9

    const-string v11, "SITE"

    const-string/jumbo v12, "site"

    const-string/jumbo v13, "sample"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->SITE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 40
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v11, 0xa

    const-string v12, "USER_CODE"

    const-string/jumbo v13, "userCode"

    const-string v14, "Ksx"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 43
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v12, 0xb

    const-string v13, "ORDER_ID"

    const-string/jumbo v14, "orderId"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 46
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v13, 0xc

    const-string v14, "ORDER_ITEM_ID"

    const-string/jumbo v15, "orderItemID"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ITEM_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    .line 49
    new-instance v0, Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v14, 0xd

    const-string v15, "ASSOCIATE_TAG"

    const-string/jumbo v13, "tag"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->ASSOCIATE_TAG:Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v13, 0xe

    new-array v13, v13, [Lcom/amazon/sitb/android/StoreQueryParam;

    .line 7
    sget-object v15, Lcom/amazon/sitb/android/StoreQueryParam;->ASIN:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->ASINS:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->COUNTRY_OF_RESIDENCE:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->CURRENCY:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_SERIAL_NUMBER:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->METHOD:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->PRICE:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->SESSION_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->SITE:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->USER_CODE:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->ORDER_ITEM_ID:Lcom/amazon/sitb/android/StoreQueryParam;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/sitb/android/StoreQueryParam;->$VALUES:[Lcom/amazon/sitb/android/StoreQueryParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/sitb/android/StoreQueryParam;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/amazon/sitb/android/StoreQueryParam;->name:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/amazon/sitb/android/StoreQueryParam;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/StoreQueryParam;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/StoreQueryParam;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/StoreQueryParam;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/sitb/android/StoreQueryParam;->$VALUES:[Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/StoreQueryParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/StoreQueryParam;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreQueryParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreQueryParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isConstant()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreQueryParam;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
