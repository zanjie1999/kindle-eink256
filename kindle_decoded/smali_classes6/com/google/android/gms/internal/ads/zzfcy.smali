.class public final Lcom/google/android/gms/internal/ads/zzfcy;
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
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfcw<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfby;

.field private final zzd:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzfde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfde<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfby;Lcom/google/android/gms/internal/ads/zzfcw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcc;",
            "Lcom/google/android/gms/internal/ads/zzfby;",
            "Lcom/google/android/gms/internal/ads/zzfcw<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzc:Lcom/google/android/gms/internal/ads/zzfby;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzc:Lcom/google/android/gms/internal/ads/zzfby;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfct;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfct;-><init>(Lcom/google/android/gms/internal/ads/zzfcy;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfby;->zza(Lcom/google/android/gms/internal/ads/zzfbx;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzfcy;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfcy;Lcom/google/android/gms/internal/ads/zzfde;)Lcom/google/android/gms/internal/ads/zzfde;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zze:Lcom/google/android/gms/internal/ads/zzfde;

    return-object p1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfcy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcy;->zzh()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfcy;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzf:I

    return p0
.end method

.method private final declared-synchronized zzh()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzeD:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcge;->zzp()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzn()Lcom/google/android/gms/internal/ads/zzcfz;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcy;->zzi()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcx;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfcx;->zzb()Lcom/google/android/gms/internal/ads/zzfcm;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfcc;->zzc(Lcom/google/android/gms/internal/ads/zzfcm;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfde;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 10
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfde;-><init>(Lcom/google/android/gms/internal/ads/zzfcc;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfcx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zze:Lcom/google/android/gms/internal/ads/zzfde;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfcu;

    .line 11
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>(Lcom/google/android/gms/internal/ads/zzfcy;Lcom/google/android/gms/internal/ads/zzfcx;)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfde;->zza(Lcom/google/android/gms/internal/ads/zzfrz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzi()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zze:Lcom/google/android/gms/internal/ads/zzfde;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzfcx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcx<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzd:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
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

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzf:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcy;->zzi()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zze:Lcom/google/android/gms/internal/ads/zzfde;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfde;->zzb(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzf()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zzf:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfcy;->zzh()V

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
