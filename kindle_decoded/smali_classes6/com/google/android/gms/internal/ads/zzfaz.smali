.class final Lcom/google/android/gms/internal/ads/zzfaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcml;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzedq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzedq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Lcom/google/android/gms/internal/ads/zzedq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzF()Lcom/google/android/gms/internal/ads/zzezz;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzaf:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    .line 3
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzffu;->zzb(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeds;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzaB()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzeC:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzF()Lcom/google/android/gms/internal/ads/zzezz;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzO:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v5, 0x2

    :cond_2
    move-object v0, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeds;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Lcom/google/android/gms/internal/ads/zzedq;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zze(Lcom/google/android/gms/internal/ads/zzeds;)V

    return-void
.end method
