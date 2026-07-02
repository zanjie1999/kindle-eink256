.class public final Lcom/google/android/gms/internal/ads/zzfgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfgy;


# instance fields
.field private zzb:F

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgo;

.field private zze:Lcom/google/android/gms/internal/ads/zzfgp;

.field private zzf:Lcom/google/android/gms/internal/ads/zzfgr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzc:Lcom/google/android/gms/internal/ads/zzfgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzd:Lcom/google/android/gms/internal/ads/zzfgo;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfgy;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgo;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfgy;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfgy;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgo;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfgn;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfgp;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgy;[B)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zze:Lcom/google/android/gms/internal/ads/zzfgp;

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgt;->zza()Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgt;->zzg(Lcom/google/android/gms/internal/ads/zzfgy;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgt;->zza()Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgt;->zza()Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf()Lcom/google/android/gms/internal/ads/zzfhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzg()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zze:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgp;->zza()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf()Lcom/google/android/gms/internal/ads/zzfhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgt;->zza()Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zze:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgp;->zzb()V

    return-void
.end method

.method public final zze(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzf:Lcom/google/android/gms/internal/ads/zzfgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgr;->zza()Lcom/google/android/gms/internal/ads/zzfgr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzf:Lcom/google/android/gms/internal/ads/zzfgr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzf:Lcom/google/android/gms/internal/ads/zzfgr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgr;->zzf()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgg;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzg()Lcom/google/android/gms/internal/ads/zzfhe;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhe;->zzj(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzf()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:F

    return v0
.end method
