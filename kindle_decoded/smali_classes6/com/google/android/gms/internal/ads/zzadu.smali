.class public abstract Lcom/google/android/gms/internal/ads/zzadu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahp;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaip;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzF()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzn()I

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzo()Z

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzc(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final zzb()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzF()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzn()I

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzo()Z

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final zzc()Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzF()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaip;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzF()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzg:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
