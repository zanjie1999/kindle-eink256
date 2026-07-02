.class public final Lcom/google/android/gms/internal/ads/zzduv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddx;
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdeb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdve;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdve;Lcom/google/android/gms/internal/ads/zzdvn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzb:Lcom/google/android/gms/internal/ads/zzdvn;

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object p1

    const-string v0, "scar"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ftl"

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    .line 3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzc:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzb:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdvp;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdve;->zzb(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzb:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdve;->zzc()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvp;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Lcom/google/android/gms/internal/ads/zzdve;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdve;->zza(Lcom/google/android/gms/internal/ads/zzfal;)V

    return-void
.end method
