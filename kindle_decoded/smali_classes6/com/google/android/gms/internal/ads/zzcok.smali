.class public final Lcom/google/android/gms/internal/ads/zzcok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zzb:Landroid/content/Context;

.field private zzc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcok;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcok;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcok;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzc:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzcok;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcok;->zza:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method public final zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcok;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzc:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzb:Landroid/content/Context;

    return-object p0
.end method
