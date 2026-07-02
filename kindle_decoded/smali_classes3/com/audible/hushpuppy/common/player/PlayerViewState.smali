.class public final enum Lcom/audible/hushpuppy/common/player/PlayerViewState;
.super Ljava/lang/Enum;
.source "PlayerViewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/player/PlayerViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum NO_COMPANION:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum PURCHASE_CANCELLED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

.field public static final enum UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v1, 0x0

    const-string v2, "NO_COMPANION"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->NO_COMPANION:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v2, 0x1

    const-string v3, "UNOWNED"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v3, 0x2

    const-string v4, "UNOWNED_TOA_ELIGIBLE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v4, 0x3

    const-string v5, "OWNED_NEEDS_DOWNLOAD"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v5, 0x4

    const-string v6, "OWNED_AND_DOWNLOADING"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 43
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v6, 0x5

    const-string v7, "OWNED_AND_DOWNLOAD_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 49
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v7, 0x6

    const-string v8, "OWNED_AND_DOWNLOADED"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/4 v8, 0x7

    const-string v9, "DELAYED_PURCHASE_QUEUED"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 63
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v9, 0x8

    const-string v10, "DELAYED_PURCHASE_REQUESTED"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 74
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v10, 0x9

    const-string v11, "PURCHASE_REQUESTED"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 81
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v11, 0xa

    const-string v12, "PURCHASE_FAILED"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 88
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v12, 0xb

    const-string v13, "PURCHASE_FAILED_TIMEOUT"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 96
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v13, 0xc

    const-string v14, "PURCHASE_CANCELLED"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/player/PlayerViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/audible/hushpuppy/common/player/PlayerViewState;

    .line 11
    sget-object v15, Lcom/audible/hushpuppy/common/player/PlayerViewState;->NO_COMPANION:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v15, v14, v1

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/audible/hushpuppy/common/player/PlayerViewState;->$VALUES:[Lcom/audible/hushpuppy/common/player/PlayerViewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->$VALUES:[Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/player/PlayerViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0
.end method
