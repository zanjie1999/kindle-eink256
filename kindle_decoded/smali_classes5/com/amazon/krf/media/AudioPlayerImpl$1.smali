.class synthetic Lcom/amazon/krf/media/AudioPlayerImpl$1;
.super Ljava/lang/Object;
.source "AudioPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 329
    invoke-static {}, Lcom/amazon/krf/media/AudioPlayerImpl$State;->values()[Lcom/amazon/krf/media/AudioPlayerImpl$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    :try_start_0
    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Stopped:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Prepared:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->End:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->PlaybackCompleted:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Error:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
