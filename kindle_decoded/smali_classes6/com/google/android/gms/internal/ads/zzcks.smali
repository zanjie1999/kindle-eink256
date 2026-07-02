.class public final Lcom/google/android/gms/internal/ads/zzcks;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzcjb;

.field final zzb:Lcom/google/android/gms/internal/ads/zzcla;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzcla;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzd:[Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzy()Lcom/google/android/gms/internal/ads/zzckt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzckt;->zzc(Lcom/google/android/gms/internal/ads/zzcks;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzcla;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzd:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcla;->zze(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckr;-><init>(Lcom/google/android/gms/internal/ads/zzcks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzckr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzckr;-><init>(Lcom/google/android/gms/internal/ads/zzcks;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    throw v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbo:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzcla;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzclj;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckq;-><init>(Lcom/google/android/gms/internal/ads/zzcks;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zze()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzcla;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzd:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzcla;->zzf(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcks;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
