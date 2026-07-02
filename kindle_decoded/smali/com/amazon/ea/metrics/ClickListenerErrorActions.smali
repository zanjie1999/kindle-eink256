.class public final enum Lcom/amazon/ea/metrics/ClickListenerErrorActions;
.super Ljava/lang/Enum;
.source "ClickListenerErrorActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/ClickListenerErrorActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_BORROW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_BORROW_AND_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_BORROW_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_PURCHASE_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_PURCHASE_WITHOUT_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_PURCHASE_WITH_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_READ_NOW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_READ_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

.field public static final enum ERROR_UNBUY:Lcom/amazon/ea/metrics/ClickListenerErrorActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 11
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v1, 0x0

    const-string v2, "ERROR_BORROW"

    const-string v3, "Error.Borrow"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 12
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v2, 0x1

    const-string v3, "ERROR_BORROW_AND_DOWNLOAD"

    const-string v4, "Error.BorrowAndDownload"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_AND_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 13
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v3, 0x2

    const-string v4, "ERROR_BORROW_FAILURE_MESSAGE"

    const-string v5, "Error.BorrowFailureMessage"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 14
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v4, 0x3

    const-string v5, "ERROR_DOWNLOAD"

    const-string v6, "Error.Download"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 15
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v5, 0x4

    const-string v6, "ERROR_PURCHASE_FAILURE_MESSAGE"

    const-string v7, "Error.PurchaseFailureMessage"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 16
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v6, 0x5

    const-string v7, "ERROR_PURCHASE_WITHOUT_PRICE"

    const-string v8, "Error.PurchaseWithoutPrice"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITHOUT_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 17
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v7, 0x6

    const-string v8, "ERROR_PURCHASE_WITH_PRICE"

    const-string v9, "Error.PurchaseWithPrice"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITH_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 18
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/4 v8, 0x7

    const-string v9, "ERROR_READ_NOW"

    const-string v10, "Error.ReadNow"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_NOW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 19
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/16 v9, 0x8

    const-string v10, "ERROR_READ_SAMPLE"

    const-string v11, "Error.ReadSample"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 20
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/16 v10, 0x9

    const-string v11, "ERROR_READ_FREE_SAMPLE"

    const-string v12, "Error.ReadFreeSample"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 21
    new-instance v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/16 v11, 0xa

    const-string v12, "ERROR_UNBUY"

    const-string v13, "Error.Unbuy"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/ea/metrics/ClickListenerErrorActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_UNBUY:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    .line 10
    sget-object v13, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_AND_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_FAILURE_MESSAGE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITHOUT_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_PURCHASE_WITH_PRICE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_NOW:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->$VALUES:[Lcom/amazon/ea/metrics/ClickListenerErrorActions;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/ClickListenerErrorActions;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/ClickListenerErrorActions;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->$VALUES:[Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/ClickListenerErrorActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->action:Ljava/lang/String;

    return-object v0
.end method
