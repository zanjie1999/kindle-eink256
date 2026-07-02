.class final Lcom/google/android/gms/internal/ads/zzbth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzchp<",
        "Lcom/google/android/gms/internal/ads/zzbsn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtr;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbth;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbts;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzd(Lcom/google/android/gms/internal/ads/zzbts;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbts;->zzc(Lcom/google/android/gms/internal/ads/zzbts;)Lcom/google/android/gms/internal/ads/zzbtr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzc(Lcom/google/android/gms/internal/ads/zzbts;)Lcom/google/android/gms/internal/ads/zzbtr;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbts;->zzc(Lcom/google/android/gms/internal/ads/zzbts;)Lcom/google/android/gms/internal/ads/zzbtr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zzc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zza:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzb(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;)Lcom/google/android/gms/internal/ads/zzbtr;

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
