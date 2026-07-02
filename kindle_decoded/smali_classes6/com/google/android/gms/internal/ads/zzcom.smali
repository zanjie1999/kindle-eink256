.class public final Lcom/google/android/gms/internal/ads/zzcom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcok;Lcom/google/android/gms/internal/ads/zzcol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcok;->zza(Lcom/google/android/gms/internal/ads/zzcok;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcok;->zzb(Lcom/google/android/gms/internal/ads/zzcok;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcok;->zzc(Lcom/google/android/gms/internal/ads/zzcok;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final zza()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method final zzb()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object v0
.end method

.method final zzd()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaas;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/internal/ads/zzaao;)V

    return-object v0
.end method
