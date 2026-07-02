.class public final enum Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
.super Ljava/lang/Enum;
.source "IUpsellModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IUpsellModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpsellState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum PURCHASE_CANCELLED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

.field public static final enum PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 44
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v2, 0x1

    const-string v3, "DELAYED_PURCHASE_QUEUED"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 50
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v3, 0x2

    const-string v4, "PURCHASE_REQUESTED"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v4, 0x3

    const-string v5, "DELAY_PURCHASE_REQUESTED"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 65
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v5, 0x4

    const-string v6, "PURCHASE_CANCELLED"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 71
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v6, 0x5

    const-string v7, "PURCHASE_FAILED"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 77
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v7, 0x6

    const-string v8, "PURCHASE_FAILED_TIMEOUT"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 33
    sget-object v9, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
    .locals 1

    .line 33
    const-class v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
    .locals 1

    .line 33
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-object v0
.end method
