.class public final enum Lcom/amazon/krf/platform/UIData$TransactionType;
.super Ljava/lang/Enum;
.source "UIData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/UIData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/UIData$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/UIData$TransactionType;

.field public static final enum PEN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

.field public static final enum TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

.field public static final enum UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/amazon/krf/platform/UIData$TransactionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_TRANSACTION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/UIData$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$TransactionType;->UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    .line 20
    new-instance v0, Lcom/amazon/krf/platform/UIData$TransactionType;

    const/4 v2, 0x1

    const-string v3, "TOUCH_TRANSACTION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/UIData$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    .line 25
    new-instance v0, Lcom/amazon/krf/platform/UIData$TransactionType;

    const/4 v3, 0x2

    const-string v4, "PEN_TRANSACTION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/UIData$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$TransactionType;->PEN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/UIData$TransactionType;

    .line 11
    sget-object v5, Lcom/amazon/krf/platform/UIData$TransactionType;->UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/UIData$TransactionType;->$VALUES:[Lcom/amazon/krf/platform/UIData$TransactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/krf/platform/UIData$TransactionType;->values()[Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/krf/platform/UIData$TransactionType;->$VALUES:[Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/UIData$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object v0
.end method
