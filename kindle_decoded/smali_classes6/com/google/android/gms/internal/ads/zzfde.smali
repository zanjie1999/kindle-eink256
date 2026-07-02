.class public final Lcom/google/android/gms/internal/ads/zzfde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfcv<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcc;",
            "Lcom/google/android/gms/internal/ads/zzfcw<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfcx;

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzfcw;->zza(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdb;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfdb;-><init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcx;)V

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfcx;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdc;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzfdc;-><init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcw;)V

    const-class p2, Ljava/lang/Exception;

    .line 5
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfcx;->zza()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 6
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfrz<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfdd;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfcx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfcx;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfcx;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfcx;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfcv<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfcx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzfcx;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfcm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfcw;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Z

    throw p2

    :catchall_0
    move-exception p1

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcx;Lcom/google/android/gms/internal/ads/zzfcl;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Z

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzfcw;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Z

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzfcc;->zzb(Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzfcl;)Z

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfcv;

    .line 4
    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzfcv;-><init>(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcx;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
