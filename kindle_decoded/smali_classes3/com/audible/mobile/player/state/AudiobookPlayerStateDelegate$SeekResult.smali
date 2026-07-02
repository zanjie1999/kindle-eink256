.class public final enum Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
.super Ljava/lang/Enum;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

.field public static final enum FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

.field public static final enum INDEX_OUT_OF_BOUNDS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

.field public static final enum INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

.field public static final enum SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/4 v3, 0x2

    const-string v4, "INVALID_STATE"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/4 v4, 0x3

    const-string v5, "INDEX_OUT_OF_BOUNDS"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INDEX_OUT_OF_BOUNDS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    .line 43
    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 1

    .line 43
    const-class v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 1

    .line 43
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object v0
.end method
