.class public final Lcom/google/android/gms/internal/ads/zzbol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

.field private final zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

.field private zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbol;->zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbol;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbol;->zzf(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>(Lcom/google/android/gms/internal/ads/zzbnb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzbno;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbok;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbok;-><init>(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzboi;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbnl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzboj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzbol;Lcom/google/android/gms/internal/ads/zzboi;)V

    return-object v0
.end method
