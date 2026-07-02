.class public final enum Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
.super Ljava/lang/Enum;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum COULD_NOT_READ_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

.field public static final enum SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v3, 0x2

    const-string v4, "NO_ACTION"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v4, 0x3

    const-string v5, "INVALID_STATE"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v5, 0x4

    const-string v6, "COULD_NOT_READ_FILE"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->COULD_NOT_READ_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v6, 0x5

    const-string v7, "ERROR_STATE"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->ERROR_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    .line 50
    sget-object v8, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->COULD_NOT_READ_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 50
    const-class v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 50
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0
.end method
