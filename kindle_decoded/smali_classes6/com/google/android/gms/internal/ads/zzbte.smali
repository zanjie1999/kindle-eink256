.class final Lcom/google/android/gms/internal/ads/zzbte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Lcom/google/android/gms/internal/ads/zzbtt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsn;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/util/zzcd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbsn;Lcom/google/android/gms/ads/internal/util/zzcd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbte;->zza:Lcom/google/android/gms/internal/ads/zzbsn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzb:Lcom/google/android/gms/ads/internal/util/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbts;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbts;->zze(Lcom/google/android/gms/internal/ads/zzbts;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zzd(Lcom/google/android/gms/internal/ads/zzbts;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zzf(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtr;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbte;->zza:Lcom/google/android/gms/internal/ads/zzbsn;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbte;->zzb:Lcom/google/android/gms/ads/internal/util/zzcd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzcd;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtt;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpr;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
