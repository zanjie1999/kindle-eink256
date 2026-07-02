.class public final Lcom/google/android/gms/internal/ads/zzfxn;
.super Lcom/google/android/gms/internal/ads/zzgfw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgfw<",
        "Lcom/google/android/gms/internal/ads/zzfxo;",
        "Lcom/google/android/gms/internal/ads/zzfxn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxo;->zzg()Lcom/google/android/gms/internal/ads/zzfxo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxo;->zzg()Lcom/google/android/gms/internal/ads/zzfxo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfxn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzh(Lcom/google/android/gms/internal/ads/zzfxo;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfxu;)Lcom/google/android/gms/internal/ads/zzfxn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzi(Lcom/google/android/gms/internal/ads/zzfxo;Lcom/google/android/gms/internal/ads/zzfxu;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgai;)Lcom/google/android/gms/internal/ads/zzfxn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzj(Lcom/google/android/gms/internal/ads/zzfxo;Lcom/google/android/gms/internal/ads/zzgai;)V

    return-object p0
.end method
