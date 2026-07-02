.class public final enum Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;
.super Ljava/lang/Enum;
.source "ExoPlayerMetricNames.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum ExoBufferingTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum ExoPrepareTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum HlsFetchPlaylistError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum HlsFetchPlaylistTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum HlsMediaSegmentLoadTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

.field public static final enum InvalidMediasourceFileError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v1, 0x0

    const-string v2, "HlsFetchPlaylistTime"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsFetchPlaylistTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 10
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v2, 0x1

    const-string v3, "HlsFetchPlaylistError"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsFetchPlaylistError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 11
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v3, 0x2

    const-string v4, "ExoPrepareTime"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoPrepareTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 12
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v4, 0x3

    const-string v5, "HlsMediaSegmentLoadTime"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsMediaSegmentLoadTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 13
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v5, 0x4

    const-string v6, "ExoBufferingTime"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoBufferingTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 14
    new-instance v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v6, 0x5

    const-string v7, "InvalidMediasourceFileError"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->InvalidMediasourceFileError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    .line 8
    sget-object v8, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsFetchPlaylistTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsFetchPlaylistError:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoPrepareTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->HlsMediaSegmentLoadTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoBufferingTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->$VALUES:[Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;
    .locals 1

    .line 8
    const-class v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;
    .locals 1

    .line 8
    sget-object v0, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->$VALUES:[Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    return-object v0
.end method
