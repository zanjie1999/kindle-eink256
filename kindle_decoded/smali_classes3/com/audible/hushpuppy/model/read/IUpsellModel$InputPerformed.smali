.class public final enum Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
.super Ljava/lang/Enum;
.source "IUpsellModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IUpsellModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputPerformed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field public static final enum ACTION_BAR:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field public static final enum KTOS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field public static final enum LEFT_NAV:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field public static final enum NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field public static final enum START_ACTIONS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v1, 0x0

    const-string v2, "NO_ACTION"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v2, 0x1

    const-string v3, "ACTION_BAR"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->ACTION_BAR:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 23
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v3, 0x2

    const-string v4, "START_ACTIONS"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->START_ACTIONS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v4, 0x3

    const-string v5, "LEFT_NAV"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->LEFT_NAV:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v5, 0x4

    const-string v6, "KTOS"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->KTOS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 17
    sget-object v7, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->ACTION_BAR:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->START_ACTIONS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->LEFT_NAV:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object v0
.end method
