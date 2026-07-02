.class public final Lcom/google/android/gms/internal/ads/zzdyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdzy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzebq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzdzy;Lcom/google/android/gms/internal/ads/zzgku;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzdzy;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzebq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzc:Lcom/google/android/gms/internal/ads/zzdzy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzd:Lcom/google/android/gms/internal/ads/zzgku;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyn;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdyn;-><init>(Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcbj;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdyo;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyp;

    .line 9
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdyp;-><init>(Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcbj;I)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzeap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 10
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcbj;ILcom/google/android/gms/internal/ads/zzeap;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzd:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzebq;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyq;->zzc:Lcom/google/android/gms/internal/ads/zzdzy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    if-eqz v2, :cond_0

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zze:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzx;

    .line 3
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>(Lcom/google/android/gms/internal/ads/zzdzy;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
