.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzu;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    const-string v1, "SignalGeneratorImpl.initializeWebViewForSignalCollection"

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzu;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sgf"

    const-string v3, "sgf_reason"

    .line 4
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Failed to initialize webview for loading SDKCore. "

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;

    const-string p1, "Initialized webview successfully for SDKCore."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    return-void
.end method
