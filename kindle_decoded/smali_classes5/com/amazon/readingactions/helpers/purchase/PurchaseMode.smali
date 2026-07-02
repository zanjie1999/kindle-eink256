.class public final enum Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
.super Ljava/lang/Enum;
.source "PurchaseMode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

.field public static final enum DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

.field public static final enum NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

.field public static final enum PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

.field public static final enum READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    const/4 v2, 0x1

    const-string v3, "PURCHASE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    const/4 v2, 0x2

    const-string v3, "DOWNLOAD"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    const/4 v2, 0x3

    const-string v3, "READ"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->$VALUES:[Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
    .locals 1

    const-class v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->$VALUES:[Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-virtual {v0}, [Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object v0
.end method
