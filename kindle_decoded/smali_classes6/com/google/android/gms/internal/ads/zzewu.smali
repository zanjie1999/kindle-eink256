.class public final Lcom/google/android/gms/internal/ads/zzewu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzexo<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzexo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzexo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzewz<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfcy<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzdal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexo;Lcom/google/android/gms/internal/ads/zzexo;Lcom/google/android/gms/internal/ads/zzfcy;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzexo<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzewz<",
            "TR;TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/zzfcy<",
            "TR;TAdT;>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewu;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzb:Lcom/google/android/gms/internal/ads/zzexo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzc:Lcom/google/android/gms/internal/ads/zzfcy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzexp;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzexp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zzc:Lcom/google/android/gms/internal/ads/zzcxg;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzQ()Lcom/google/android/gms/internal/ads/zzexl;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zzc:Lcom/google/android/gms/internal/ads/zzcxg;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxg;->zzn()Lcom/google/android/gms/internal/ads/zzexl;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzQ()Lcom/google/android/gms/internal/ads/zzexl;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzexl;->zzq(Lcom/google/android/gms/internal/ads/zzexl;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zzc:Lcom/google/android/gms/internal/ads/zzcxg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzi(Lcom/google/android/gms/internal/ads/zzfal;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewu;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzexe;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzexe;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzdal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzexp;",
            "Lcom/google/android/gms/internal/ads/zzexn<",
            "TR;>;TR;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzexp;->zzb:Lcom/google/android/gms/internal/ads/zzexm;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzexn;->zza(Lcom/google/android/gms/internal/ads/zzexm;)Lcom/google/android/gms/internal/ads/zzdak;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzewv;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzewu;->zzd:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzewv;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdak;->zzg(Lcom/google/android/gms/internal/ads/zzewv;)Lcom/google/android/gms/internal/ads/zzdak;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdak;->zzf()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdal;

    .line 4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdal;->zzN()Lcom/google/android/gms/internal/ads/zzfar;

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdal;->zzN()Lcom/google/android/gms/internal/ads/zzfar;

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdal;->zzN()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdg;->zzs:Lcom/google/android/gms/internal/ads/zzbcx;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbdg;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdal;->zzN()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzj:Lcom/google/android/gms/internal/ads/zzbdr;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzewt;

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzewu;->zzf:Ljava/util/concurrent/Executor;

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    .line 9
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzewt;-><init>(Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/zzfcm;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzewu;->zzb:Lcom/google/android/gms/internal/ads/zzexo;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzexa;

    .line 10
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzexa;->zza(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzewq;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzewq;-><init>(Lcom/google/android/gms/internal/ads/zzewu;Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzewt;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzewu;->zzf:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzewu;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzexe;

    .line 7
    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzexe;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzewu;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzewu;->zza()Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfcv;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Lcom/google/android/gms/internal/ads/zzfcl;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcv;->zzb:Lcom/google/android/gms/internal/ads/zzfcx;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzewt;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazu;->zza()Lcom/google/android/gms/internal/ads/zzazo;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zza()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zzd(I)Lcom/google/android/gms/internal/ads/zzazm;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazr;->zzc()Lcom/google/android/gms/internal/ads/zzazr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zza(Lcom/google/android/gms/internal/ads/zzazr;)Lcom/google/android/gms/internal/ads/zzazm;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazo;->zza(Lcom/google/android/gms/internal/ads/zzazm;)Lcom/google/android/gms/internal/ads/zzazo;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzazu;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Lcom/google/android/gms/internal/ads/zzfcl;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcl;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcyj;->zze()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdgh;->zze(Lcom/google/android/gms/internal/ads/zzazu;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Lcom/google/android/gms/internal/ads/zzfcl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzewu;->zzg(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzexp;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzewt;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;Lcom/google/android/gms/internal/ads/zzewz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 1
    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzewz;->zza:Lcom/google/android/gms/internal/ads/zzfcm;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzewt;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzewt;->zza:Lcom/google/android/gms/internal/ads/zzexn;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzewt;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzewt;->zzc:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzewt;->zzd:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzewt;->zze:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzewt;->zzf:Lcom/google/android/gms/internal/ads/zzbdr;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzewt;-><init>(Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/zzfcm;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzewz;->zzc:Lcom/google/android/gms/internal/ads/zzfcl;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzc:Lcom/google/android/gms/internal/ads/zzfcy;

    .line 2
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzfcy;->zzc(Lcom/google/android/gms/internal/ads/zzfcx;)V

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzewz;->zzc:Lcom/google/android/gms/internal/ads/zzfcl;

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzewu;->zzg(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzexp;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzc:Lcom/google/android/gms/internal/ads/zzfcy;

    .line 4
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzfcy;->zzd(Lcom/google/android/gms/internal/ads/zzfcx;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzewr;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzewr;-><init>(Lcom/google/android/gms/internal/ads/zzewu;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzf:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzewu;->zzc:Lcom/google/android/gms/internal/ads/zzfcy;

    .line 6
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzfcy;->zzc(Lcom/google/android/gms/internal/ads/zzfcx;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzexp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzexp;->zzb:Lcom/google/android/gms/internal/ads/zzexm;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzewz;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 7
    invoke-direct {p2, p1, p5}, Lcom/google/android/gms/internal/ads/zzexp;-><init>(Lcom/google/android/gms/internal/ads/zzexm;Lcom/google/android/gms/internal/ads/zzcbj;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzewu;->zza:Lcom/google/android/gms/internal/ads/zzexo;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzexe;

    .line 8
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzexe;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewu;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    return-object p1
.end method
