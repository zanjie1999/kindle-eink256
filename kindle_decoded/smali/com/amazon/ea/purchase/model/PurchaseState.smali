.class public final enum Lcom/amazon/ea/purchase/model/PurchaseState;
.super Ljava/lang/Enum;
.source "PurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/purchase/model/PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum BORROW_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

.field private static final OWNED_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/ea/purchase/model/PurchaseState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PURCHASE_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

.field public static final enum UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 10
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v1, 0x0

    const-string v2, "UNOWNED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 13
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v2, 0x1

    const-string v3, "PURCHASING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 16
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v3, 0x2

    const-string v4, "OWNED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 19
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 22
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v5, 0x4

    const-string v6, "DOWNLOADED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 25
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v6, 0x5

    const-string v7, "CANCELING"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 28
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v7, 0x6

    const-string v8, "PURCHASE_FAILED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASE_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 31
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/4 v8, 0x7

    const-string v9, "BORROWING"

    invoke-direct {v0, v9, v8}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 34
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    const/16 v9, 0x8

    const-string v10, "BORROW_FAILED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/ea/purchase/model/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROW_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 8
    sget-object v11, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v1, v10, v3

    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v2, v10, v4

    sget-object v3, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v3, v10, v5

    sget-object v4, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v4, v10, v6

    sget-object v4, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASE_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v4, v10, v7

    sget-object v4, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

    aput-object v4, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/ea/purchase/model/PurchaseState;->$VALUES:[Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 37
    invoke-static {v1, v3, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED_STATES:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseState;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/purchase/model/PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/purchase/model/PurchaseState;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->$VALUES:[Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v0}, [Lcom/amazon/ea/purchase/model/PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/purchase/model/PurchaseState;

    return-object v0
.end method


# virtual methods
.method public isOwned()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED_STATES:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
