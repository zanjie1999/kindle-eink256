.class public abstract Lcom/google/android/gms/internal/ads/zzcla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected final zzb:Ljava/lang/String;

.field protected final zzc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcjb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjb;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzb:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzc:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcjb;

    if-eqz p0, :cond_0

    const-string p1, "onPrecacheEvent"

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    return-void
.end method

.method public abstract zzd(Ljava/lang/String;)Z
.end method

.method public zze(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcla;->zzd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public zzf(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcks;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcla;->zzd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected zzg(I)V
    .locals 0

    return-void
.end method

.method protected zzh(I)V
    .locals 0

    return-void
.end method

.method protected zzi(I)V
    .locals 0

    return-void
.end method

.method protected zzl(I)V
    .locals 0

    return-void
.end method

.method public abstract zzm()V
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v14, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v15, p14

    move/from16 v16, p15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    move-object/from16 v17, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckv;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzckv;-><init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzo(Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .locals 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzckw;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzckw;-><init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final zzp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzckx;-><init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzq(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcky;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcky;-><init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzckz;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzckz;-><init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
