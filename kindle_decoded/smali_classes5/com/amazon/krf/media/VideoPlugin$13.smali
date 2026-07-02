.class synthetic Lcom/amazon/krf/media/VideoPlugin$13;
.super Ljava/lang/Object;
.source "VideoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/VideoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$krf$media$MediaState$PlaybackState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 285
    invoke-static {}, Lcom/amazon/krf/media/MediaState$PlaybackState;->values()[Lcom/amazon/krf/media/MediaState$PlaybackState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/krf/media/VideoPlugin$13;->$SwitchMap$com$amazon$krf$media$MediaState$PlaybackState:[I

    :try_start_0
    sget-object v1, Lcom/amazon/krf/media/MediaState$PlaybackState;->PLAYING:Lcom/amazon/krf/media/MediaState$PlaybackState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/VideoPlugin$13;->$SwitchMap$com$amazon$krf$media$MediaState$PlaybackState:[I

    sget-object v1, Lcom/amazon/krf/media/MediaState$PlaybackState;->PAUSED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/krf/media/VideoPlugin$13;->$SwitchMap$com$amazon$krf$media$MediaState$PlaybackState:[I

    sget-object v1, Lcom/amazon/krf/media/MediaState$PlaybackState;->STOPPED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
