.class public final enum Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;
.super Ljava/lang/Enum;
.source "PlaybackMetricsLoggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PlaybackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field public static final enum FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field public static final enum IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field public static final enum LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field public static final enum OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field public static final enum UNKNOWN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 146
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v1, 0x0

    const-string v2, "IMMERSION_READING_MODE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 150
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v2, 0x1

    const-string v3, "FULL_PLAYER_MODE"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 154
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v3, 0x2

    const-string v4, "OUTSIDE_READER_MODE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 158
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v4, 0x3

    const-string v5, "LOCK_SCREEN_MODE"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 162
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN_MODE"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->UNKNOWN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 142
    sget-object v7, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->$VALUES:[Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;
    .locals 1

    .line 142
    const-class v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;
    .locals 1

    .line 142
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->$VALUES:[Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    return-object v0
.end method
