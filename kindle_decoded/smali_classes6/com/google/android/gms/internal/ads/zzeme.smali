.class final Lcom/google/android/gms/internal/ads/zzeme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelx;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdlb;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzemf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzemf;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzdlb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeme;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlb;->zzR()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdlb;->zzS()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbe;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemf;->zzc(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzemd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzemd;-><init>(Lcom/google/android/gms/internal/ads/zzeme;Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfbh;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzelx;->zza()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzo()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzemf;->zzd(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzelv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfj;->zza(Lcom/google/android/gms/internal/ads/zzeli;)Lcom/google/android/gms/internal/ads/zzdfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzelx;->zzb(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemf;->zzc(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeme;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
