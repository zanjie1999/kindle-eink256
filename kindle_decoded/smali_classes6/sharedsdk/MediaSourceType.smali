.class public final enum Lsharedsdk/MediaSourceType;
.super Ljava/lang/Enum;
.source "MediaSourceType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsharedsdk/MediaSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsharedsdk/MediaSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lsharedsdk/MediaSourceType;

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x0

    const-string v3, "DASH"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x1

    const-string v3, "HLS"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x2

    const-string v3, "ADRM"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x3

    const-string v3, "SONOS"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x4

    const-string v3, "MPEG_OFFLINE"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lsharedsdk/MediaSourceType;

    const/4 v2, 0x5

    const-string v3, "MPEG_STREAMING"

    invoke-direct {v1, v3, v2}, Lsharedsdk/MediaSourceType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    sput-object v0, Lsharedsdk/MediaSourceType;->$VALUES:[Lsharedsdk/MediaSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsharedsdk/MediaSourceType;
    .locals 1

    const-class v0, Lsharedsdk/MediaSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsharedsdk/MediaSourceType;

    return-object p0
.end method

.method public static values()[Lsharedsdk/MediaSourceType;
    .locals 1

    sget-object v0, Lsharedsdk/MediaSourceType;->$VALUES:[Lsharedsdk/MediaSourceType;

    invoke-virtual {v0}, [Lsharedsdk/MediaSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsharedsdk/MediaSourceType;

    return-object v0
.end method
