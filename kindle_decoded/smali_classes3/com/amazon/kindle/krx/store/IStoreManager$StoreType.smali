.class public final enum Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;
.super Ljava/lang/Enum;
.source "IStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/store/IStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

.field public static final enum BOOKS:Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

.field public static final enum NEWSSTAND:Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 474
    new-instance v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    const/4 v1, 0x0

    const-string v2, "BOOKS"

    const-string v3, "ebooks"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->BOOKS:Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    .line 475
    new-instance v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    const/4 v2, 0x1

    const-string v3, "NEWSSTAND"

    const-string v4, "periodicals"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->NEWSSTAND:Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    .line 471
    sget-object v4, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->BOOKS:Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->$VALUES:[Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

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

    .line 480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 481
    iput-object p3, p0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;
    .locals 1

    .line 471
    const-class v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;
    .locals 1

    .line 471
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->$VALUES:[Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;

    return-object v0
.end method
