.class public final Lcom/google/android/gms/internal/ads/zzbtx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbug;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbug;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private static final zzc(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzbug;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzd:Lcom/google/android/gms/internal/ads/zzbug;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbug;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtx;->zzc(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzblg;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzd:Lcom/google/android/gms/internal/ads/zzbug;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzd:Lcom/google/android/gms/internal/ads/zzbug;

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzbug;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzc:Lcom/google/android/gms/internal/ads/zzbug;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbug;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtx;->zzc(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zza:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzc:Lcom/google/android/gms/internal/ads/zzbug;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtx;->zzc:Lcom/google/android/gms/internal/ads/zzbug;

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
