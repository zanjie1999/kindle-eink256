.class public final enum Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
.super Ljava/lang/Enum;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrepareResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

.field public static final enum INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

.field public static final enum SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS_ASYNC"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const/4 v2, 0x1

    const-string v3, "INVALID_STATE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    .line 78
    sget-object v4, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 1

    .line 78
    const-class v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 1

    .line 78
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object v0
.end method
