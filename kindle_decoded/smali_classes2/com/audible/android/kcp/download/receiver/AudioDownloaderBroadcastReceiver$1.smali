.class synthetic Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AudioDownloaderBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$android$kcp$download$receiver$AudioDownloaderAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->values()[Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AudioDownloaderBroadcastReceiver$1;->$SwitchMap$com$audible$android$kcp$download$receiver$AudioDownloaderAction:[I

    :try_start_0
    sget-object v1, Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;->CANCEL_DOWNLOAD:Lcom/audible/android/kcp/download/receiver/AudioDownloaderAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
