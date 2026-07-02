.class Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;
.super Ljava/lang/Object;
.source "DownloadManagerAdapter.java"

# interfaces
.implements Lcom/audible/android/kcp/activation/ActivationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/download/DownloadManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadActivationCallback"
.end annotation


# instance fields
.field private final downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

.field final synthetic this$0:Lcom/audible/android/kcp/download/DownloadManagerAdapter;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->this$0:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    return-void
.end method


# virtual methods
.method public onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getAudioBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 289
    sget-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;

    if-ne p1, v0, :cond_1

    .line 290
    invoke-static {}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Activation succeeded! Continue downloading..."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getIsSample()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    invoke-static {}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Start downloading sample."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->this$0:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-static {p1, v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$100(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Start downloading full audiobook."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->this$0:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-static {p1, v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$200(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Activation failed!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;->getIsSample()Z

    move-result p1

    if-nez p1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->this$0:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    iget-object v0, p0, Lcom/audible/android/kcp/download/DownloadManagerAdapter$DownloadActivationCallback;->downloadInfo:Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;

    invoke-static {p1, v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->access$300(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/hushpuppy/extensions/activation/AudioDownloadDeviceActivationInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
