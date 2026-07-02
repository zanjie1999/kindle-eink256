.class public final enum Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
.super Ljava/lang/Enum;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetDataSourceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum FILE_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

.field public static final enum UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 65
    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v2, 0x1

    const-string v3, "UNSUPPORTED_FILE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v3, 0x2

    const-string v4, "FILE_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FILE_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v4, 0x3

    const-string v5, "FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v5, 0x4

    const-string v6, "INVALID_STATE"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v6, 0x5

    const-string v7, "ERROR_STATE"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    .line 64
    sget-object v8, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FILE_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 64
    const-class v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 64
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object v0
.end method
