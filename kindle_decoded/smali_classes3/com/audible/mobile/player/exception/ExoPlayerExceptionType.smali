.class public final enum Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;
.super Ljava/lang/Enum;
.source "ExoPlayerExceptionType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

.field public static final enum OTHER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

.field public static final enum RENDERER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

.field public static final enum SOURCE:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

.field public static final enum UNEXPECTED:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    new-instance v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    const/4 v2, 0x0

    const-string v3, "SOURCE"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->SOURCE:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    const/4 v2, 0x1

    const-string v3, "RENDERER"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->RENDERER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    const/4 v2, 0x2

    const-string v3, "UNEXPECTED"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->UNEXPECTED:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    const/4 v2, 0x3

    const-string v3, "OTHER"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->OTHER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->$VALUES:[Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;
    .locals 1

    const-class v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;
    .locals 1

    sget-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->$VALUES:[Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    return-object v0
.end method
