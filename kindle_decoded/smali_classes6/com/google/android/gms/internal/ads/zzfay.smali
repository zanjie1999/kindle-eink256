.class final synthetic Lcom/google/android/gms/internal/ads/zzfay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzedq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzedq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:Lcom/google/android/gms/internal/ads/zzedq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:Lcom/google/android/gms/internal/ads/zzedq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmc;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcmc;->zzF()Lcom/google/android/gms/internal/ads/zzezz;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzaf:Z

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzffu;->zzb(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeds;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcni;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcni;->zzaB()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeds;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzedq;->zze(Lcom/google/android/gms/internal/ads/zzeds;)V

    return-void
.end method
