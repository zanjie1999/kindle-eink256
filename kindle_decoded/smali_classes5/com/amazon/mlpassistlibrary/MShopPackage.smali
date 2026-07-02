.class public final enum Lcom/amazon/mlpassistlibrary/MShopPackage;
.super Ljava/lang/Enum;
.source "MShopPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/mlpassistlibrary/MShopPackage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum CN:Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum DE:Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum FR:Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum JP:Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum UK:Lcom/amazon/mlpassistlibrary/MShopPackage;

.field public static final enum US:Lcom/amazon/mlpassistlibrary/MShopPackage;


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v1, 0x0

    const-string v2, "CN"

    const-string v3, "cn.amazon.mShop.android"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->CN:Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 12
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v2, 0x1

    const-string v3, "DE"

    const-string v4, "de.amazon.mShop.android"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->DE:Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 15
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v3, 0x2

    const-string v4, "FR"

    const-string v5, "fr.amazon.mShop.android"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->FR:Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 18
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v4, 0x3

    const-string v5, "JP"

    const-string v6, "jp.amazon.mShop.android"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->JP:Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 21
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v5, 0x4

    const-string v6, "US"

    const-string v7, "com.amazon.mShop.android"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->US:Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 24
    new-instance v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v6, 0x5

    const-string v7, "UK"

    const-string/jumbo v8, "uk.amazon.mShop.android"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/mlpassistlibrary/MShopPackage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->UK:Lcom/amazon/mlpassistlibrary/MShopPackage;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/mlpassistlibrary/MShopPackage;

    .line 6
    sget-object v8, Lcom/amazon/mlpassistlibrary/MShopPackage;->CN:Lcom/amazon/mlpassistlibrary/MShopPackage;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/mlpassistlibrary/MShopPackage;->DE:Lcom/amazon/mlpassistlibrary/MShopPackage;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/mlpassistlibrary/MShopPackage;->FR:Lcom/amazon/mlpassistlibrary/MShopPackage;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/mlpassistlibrary/MShopPackage;->JP:Lcom/amazon/mlpassistlibrary/MShopPackage;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/mlpassistlibrary/MShopPackage;->US:Lcom/amazon/mlpassistlibrary/MShopPackage;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/mlpassistlibrary/MShopPackage;->$VALUES:[Lcom/amazon/mlpassistlibrary/MShopPackage;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/amazon/mlpassistlibrary/MShopPackage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/mlpassistlibrary/MShopPackage;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/mlpassistlibrary/MShopPackage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/mlpassistlibrary/MShopPackage;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/mlpassistlibrary/MShopPackage;->$VALUES:[Lcom/amazon/mlpassistlibrary/MShopPackage;

    invoke-virtual {v0}, [Lcom/amazon/mlpassistlibrary/MShopPackage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/mlpassistlibrary/MShopPackage;

    return-object v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/mlpassistlibrary/MShopPackage;->packageName:Ljava/lang/String;

    return-object v0
.end method
