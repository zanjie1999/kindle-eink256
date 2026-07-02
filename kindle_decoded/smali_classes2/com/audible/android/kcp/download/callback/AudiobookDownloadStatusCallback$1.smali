.class synthetic Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;
.super Ljava/lang/Object;
.source "AudiobookDownloadStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$mobile$downloader$NetworkError:[I

.field static final synthetic $SwitchMap$com$audible$mobile$preferences$DownloadPreference:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 169
    invoke-static {}, Lcom/audible/mobile/preferences/DownloadPreference;->values()[Lcom/audible/mobile/preferences/DownloadPreference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$preferences$DownloadPreference:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$preferences$DownloadPreference:[I

    sget-object v3, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_OR_WAN:Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :catch_1
    invoke-static {}, Lcom/audible/mobile/downloader/NetworkError;->values()[Lcom/audible/mobile/downloader/NetworkError;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$downloader$NetworkError:[I

    :try_start_2
    sget-object v3, Lcom/audible/mobile/downloader/NetworkError;->CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$downloader$NetworkError:[I

    sget-object v2, Lcom/audible/mobile/downloader/NetworkError;->TOO_MANY_REDIRECTS:Lcom/audible/mobile/downloader/NetworkError;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$downloader$NetworkError:[I

    sget-object v1, Lcom/audible/mobile/downloader/NetworkError;->SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
