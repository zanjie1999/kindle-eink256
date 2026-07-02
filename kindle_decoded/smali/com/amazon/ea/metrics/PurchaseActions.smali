.class public final enum Lcom/amazon/ea/metrics/PurchaseActions;
.super Ljava/lang/Enum;
.source "PurchaseActions.java"

# interfaces
.implements Lcom/amazon/ea/metrics/WidgetActions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/PurchaseActions;",
        ">;",
        "Lcom/amazon/ea/metrics/WidgetActions;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/PurchaseActions;

.field public static final enum NO_RENDER_NO_OFFER:Lcom/amazon/ea/metrics/PurchaseActions;

.field public static final enum RENDER_FOR_FREE:Lcom/amazon/ea/metrics/PurchaseActions;

.field public static final enum RENDER_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/PurchaseActions;

.field public static final enum RENDER_WITHOUT_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

.field public static final enum RENDER_WITH_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v1, 0x0

    const-string v2, "NO_RENDER_NO_OFFER"

    const-string v3, "No.Render.No.Offer"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/PurchaseActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->NO_RENDER_NO_OFFER:Lcom/amazon/ea/metrics/PurchaseActions;

    .line 5
    new-instance v0, Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v2, 0x1

    const-string v3, "RENDER_WITHOUT_PRICE"

    const-string v4, "Render.Without.Price"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/PurchaseActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITHOUT_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    .line 6
    new-instance v0, Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v3, 0x2

    const-string v4, "RENDER_WITH_PRICE"

    const-string v5, "Render.With.Price"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/PurchaseActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITH_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v4, 0x3

    const-string v5, "RENDER_FOR_FREE"

    const-string v6, "Render.For.Free"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/PurchaseActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_FOR_FREE:Lcom/amazon/ea/metrics/PurchaseActions;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v5, 0x4

    const-string v6, "RENDER_READ_FREE_SAMPLE"

    const-string v7, "Render.Read.Free.Sample"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/PurchaseActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/PurchaseActions;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ea/metrics/PurchaseActions;

    .line 3
    sget-object v7, Lcom/amazon/ea/metrics/PurchaseActions;->NO_RENDER_NO_OFFER:Lcom/amazon/ea/metrics/PurchaseActions;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITHOUT_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITH_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_FOR_FREE:Lcom/amazon/ea/metrics/PurchaseActions;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ea/metrics/PurchaseActions;->$VALUES:[Lcom/amazon/ea/metrics/PurchaseActions;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/amazon/ea/metrics/PurchaseActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/PurchaseActions;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/PurchaseActions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/PurchaseActions;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->$VALUES:[Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/PurchaseActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/PurchaseActions;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/ea/metrics/PurchaseActions;->action:Ljava/lang/String;

    return-object v0
.end method
