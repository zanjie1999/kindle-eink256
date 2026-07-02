.class public final Lcom/google/android/gms/internal/ads/zzegf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "Lcom/google/android/gms/internal/ads/zzdji;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdss;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdkf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbpu;

.field private final zzh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzfar;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdkf;Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzbpu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegf;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzc:Lcom/google/android/gms/internal/ads/zzdkf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegf;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzb:Lcom/google/android/gms/internal/ads/zzdss;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzg:Lcom/google/android/gms/internal/ads/zzbpu;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzgo:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzegf;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzdji;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdsw;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzega;-><init>(Lcom/google/android/gms/internal/ads/zzegf;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzdsw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegf;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzdsw;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegf;->zze:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzdsw;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzb:Lcom/google/android/gms/internal/ads/zzdss;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfar;->zze:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 2
    invoke-virtual {v2, v3, v10, v4}, Lcom/google/android/gms/internal/ads/zzdss;->zzb(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v11

    .line 3
    iget-boolean v2, v10, Lcom/google/android/gms/internal/ads/zzezz;->zzS:Z

    invoke-interface {v11, v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzav(Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzegf;->zza:Landroid/content/Context;

    .line 2
    move-object v3, v11

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    .line 4
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Landroid/content/Context;Landroid/view/View;)V

    new-instance v12, Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzc:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v15, 0x0

    .line 6
    invoke-direct {v14, v1, v10, v15}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdjm;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzege;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzegf;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzf:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzd:Lcom/google/android/gms/internal/ads/zzfar;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzh:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzg:Lcom/google/android/gms/internal/ads/zzbpu;

    move-object v1, v8

    move-object v4, v12

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move/from16 v17, v6

    move-object v6, v11

    move-object v15, v8

    move/from16 v8, v17

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzege;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzfar;ZLcom/google/android/gms/internal/ads/zzbpu;)V

    invoke-direct {v10, v15, v11}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 7
    invoke-virtual {v13, v14, v10}, Lcom/google/android/gms/internal/ads/zzdkf;->zzQ(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object v1

    .line 8
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzd()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzegc;

    invoke-direct {v3, v11}, Lcom/google/android/gms/internal/ads/zzegc;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 10
    sget-object v4, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzk()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzegf;->zzg:Lcom/google/android/gms/internal/ads/zzbpu;

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v11, v3, v15}, Lcom/google/android/gms/internal/ads/zzdsr;->zzi(Lcom/google/android/gms/internal/ads/zzcml;ZLcom/google/android/gms/internal/ads/zzbpu;)V

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzk()Lcom/google/android/gms/internal/ads/zzdsr;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v11, v4, v3}, Lcom/google/android/gms/internal/ads/zzdsr;->zzj(Lcom/google/android/gms/internal/ads/zzcml;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzegd;

    .line 16
    invoke-direct {v4, v0, v11, v2, v1}, Lcom/google/android/gms/internal/ads/zzegd;-><init>(Lcom/google/android/gms/internal/ads/zzegf;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzdjj;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzegf;->zze:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    return-object v1
.end method
