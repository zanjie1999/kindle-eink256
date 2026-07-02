.class public final enum Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;
.super Ljava/lang/Enum;
.source "IUserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IUserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

.field public static final enum ELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

.field public static final enum INELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

.field public static final enum INELIGIBLE_REDEEMED:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

.field public static final enum UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    const/4 v1, 0x0

    const-string v2, "ELIGIBLE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->ELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    const/4 v2, 0x1

    const-string v3, "INELIGIBLE"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    .line 24
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    const/4 v3, 0x2

    const-string v4, "INELIGIBLE_REDEEMED"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE_REDEEMED:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->UNKNOWN:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    .line 17
    sget-object v6, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->ELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->INELIGIBLE_REDEEMED:Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->$VALUES:[Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    return-object v0
.end method
