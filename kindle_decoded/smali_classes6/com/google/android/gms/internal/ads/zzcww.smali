.class public final Lcom/google/android/gms/internal/ads/zzcww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbw;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method private final declared-synchronized zza()V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zza:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzk;->zza(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzd:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzb:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzR:Lcom/google/android/gms/internal/ads/zzfau;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfau;->zza()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzR:Lcom/google/android/gms/internal/ads/zzfau;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzm;->zzb:Lcom/google/android/gms/internal/ads/zzbzm;

    :goto_0
    move-object v10, v0

    move-object v9, v2

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzezz;->zzf:I

    if-ne v2, v1, :cond_4

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzm;->zzc:Lcom/google/android/gms/internal/ads/zzbzm;

    goto :goto_0

    .line 9
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzm;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    goto :goto_0

    .line 10
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzG()Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, ""

    const-string v7, "javascript"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzai:Ljava/lang/String;

    .line 12
    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzbzk;->zzd(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcww;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbzk;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 14
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcww;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzk;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    .line 16
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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


# virtual methods
.method public final declared-synchronized zzf()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcww;->zza()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzg()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzf:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcww;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
