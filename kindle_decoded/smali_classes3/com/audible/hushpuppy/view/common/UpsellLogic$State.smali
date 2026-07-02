.class public final enum Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
.super Ljava/lang/Enum;
.source "UpsellLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/common/UpsellLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/view/common/UpsellLogic$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

.field public static final enum FULL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

.field public static final enum NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

.field public static final enum UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    const/4 v1, 0x0

    const-string v2, "UPSELL"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    const/4 v2, 0x1

    const-string v3, "FULL"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->FULL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    .line 31
    sget-object v5, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->FULL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->$VALUES:[Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
    .locals 1

    .line 31
    const-class v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
    .locals 1

    .line 31
    sget-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->$VALUES:[Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object v0
.end method
