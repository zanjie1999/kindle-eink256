.class public final enum Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;
.super Ljava/lang/Enum;
.source "AssociateCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

.field public static final enum ACTION_BAR_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

.field public static final enum START_ACTIONS_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;


# instance fields
.field private final associateCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    const/4 v1, 0x0

    const-string v2, "ACTION_BAR_UPSELL_CODE"

    const-string v3, "ReaderHPUpsell"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->ACTION_BAR_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    const/4 v2, 0x1

    const-string v3, "START_ACTIONS_UPSELL_CODE"

    const-string v4, "StartActionsReaderUpsell"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->START_ACTIONS_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    .line 12
    sget-object v4, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->ACTION_BAR_UPSELL_CODE:Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->associateCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;
    .locals 1

    .line 12
    const-class v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;
    .locals 1

    .line 12
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->$VALUES:[Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;

    return-object v0
.end method


# virtual methods
.method public getAssociateCode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/AssociateCode;->associateCode:Ljava/lang/String;

    return-object v0
.end method
