.class public final Lcom/google/android/gms/internal/ads/zzbao;
.super Lcom/google/android/gms/internal/ads/zzgfw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgfw<",
        "Lcom/google/android/gms/internal/ads/zzbap;",
        "Lcom/google/android/gms/internal/ads/zzbao;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzazg;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzg(Lcom/google/android/gms/internal/ads/zzbap;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbao;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzh(Lcom/google/android/gms/internal/ads/zzbap;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzi(Lcom/google/android/gms/internal/ads/zzbap;)V

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbag;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzj(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbah;)V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzazl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzd()Lcom/google/android/gms/internal/ads/zzazl;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzazk;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzazl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzk(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzazl;)V

    return-object p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbbn;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzl(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbbn;)V

    return-object p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzm(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbcu;)V

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzazu;)Lcom/google/android/gms/internal/ads/zzbao;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->zzn(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzazu;)V

    return-object p0
.end method
