.class public final enum Lcom/amazon/kindle/krx/store/PurchaseState;
.super Ljava/lang/Enum;
.source "PurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/store/PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum CANCELING:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum ERROR:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum LOCAL:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum PURCHASING:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum REMOTE:Lcom/amazon/kindle/krx/store/PurchaseState;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/store/PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->UNKNOWN:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 9
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v2, 0x1

    const-string v3, "REMOTE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->REMOTE:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v3, 0x2

    const-string v4, "PURCHASING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->PURCHASING:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->DOWNLOADING:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v5, 0x4

    const-string v6, "LOCAL"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->LOCAL:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v6, 0x5

    const-string v7, "CANCELING"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->CANCELING:Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v7, 0x6

    const-string v8, "ERROR"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/store/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->ERROR:Lcom/amazon/kindle/krx/store/PurchaseState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/krx/store/PurchaseState;

    .line 6
    sget-object v9, Lcom/amazon/kindle/krx/store/PurchaseState;->UNKNOWN:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseState;->REMOTE:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseState;->PURCHASING:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseState;->DOWNLOADING:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseState;->LOCAL:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/krx/store/PurchaseState;->CANCELING:Lcom/amazon/kindle/krx/store/PurchaseState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/krx/store/PurchaseState;->$VALUES:[Lcom/amazon/kindle/krx/store/PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/PurchaseState;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/krx/store/PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/store/PurchaseState;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/krx/store/PurchaseState;->$VALUES:[Lcom/amazon/kindle/krx/store/PurchaseState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/store/PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/store/PurchaseState;

    return-object v0
.end method
