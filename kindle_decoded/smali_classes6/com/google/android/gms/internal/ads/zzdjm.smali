.class public Lcom/google/android/gms/internal/ads/zzdjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzdkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method

.method public static final zzh(Lcom/google/android/gms/internal/ads/zzdks;)Lcom/google/android/gms/internal/ads/zzdih;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdks;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdhz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdih;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdkn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zza:Lcom/google/android/gms/internal/ads/zzdkn;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcml;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    return-object v0
.end method

.method public final zzc()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzG()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzG()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/ads/zzdac;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdac;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdbc;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdih;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzdac;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdac;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdhz;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdih;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 1
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdih;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdih<",
            "Lcom/google/android/gms/internal/ads/zzdfs;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdih;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjl;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdjl;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
