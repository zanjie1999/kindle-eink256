.class public final Lcom/google/android/gms/internal/ads/zzeca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddx;
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdeb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffb;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzcgi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzb:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzc:Lcom/google/android/gms/internal/ads/zzcgi;

    return-void
.end method


# virtual methods
.method public final zzbB(Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    const-string v0, "scar"

    const-string v1, "true"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    :cond_0
    return-void
.end method

.method public final zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    const-string v1, "ftl"

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    .line 2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzc:Ljava/lang/String;

    const-string v1, "ed"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzb:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void
.end method

.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffb;

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzb:Lcom/google/android/gms/internal/ads/zzffc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    const-string v2, "action"

    const-string v3, "loaded"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zza:Lcom/google/android/gms/internal/ads/zzffb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzc:Lcom/google/android/gms/internal/ads/zzcgi;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzffb;->zzg(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzcgi;)Lcom/google/android/gms/internal/ads/zzffb;

    return-void
.end method
