.class public final Lcom/google/android/gms/internal/ads/zzdzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeac;

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
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzeac;Lcom/google/android/gms/internal/ads/zzgku;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzeac;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzebq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzc:Lcom/google/android/gms/internal/ads/zzeac;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzd:Lcom/google/android/gms/internal/ads/zzgku;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 7
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

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeap;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzc:Lcom/google/android/gms/internal/ads/zzeac;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    monitor-exit v2

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zze:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zzf:Lcom/google/android/gms/internal/ads/zzcau;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeab;

    .line 7
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzeab;-><init>(Lcom/google/android/gms/internal/ads/zzeac;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzchl;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzdP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v2

    .line 14
    invoke-static {v0, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfru;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzj;

    .line 13
    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdzj;-><init>(Lcom/google/android/gms/internal/ads/zzdzk;Lcom/google/android/gms/internal/ads/zzcbj;I)V

    const-class p1, Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 15
    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcbj;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzd:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzebq;->zzi(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
