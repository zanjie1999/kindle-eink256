.class final Lcom/google/android/gms/internal/ads/zzel;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzen;->zzx(Lcom/google/android/gms/internal/ads/zzen;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(Lcom/google/android/gms/internal/ads/zzen;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdt;->zza()V

    :cond_1
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzx(Lcom/google/android/gms/internal/ads/zzen;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(Lcom/google/android/gms/internal/ads/zzen;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzel;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzem;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdt;->zza()V

    :cond_1
    return-void
.end method
