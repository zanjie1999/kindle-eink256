.class public final Lcom/google/android/gms/internal/ads/zzbhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static zzc:Lcom/google/android/gms/internal/ads/zzbhs;


# instance fields
.field private final zza:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbge;

.field private zze:Z

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

.field private zzh:Lcom/google/android/gms/ads/RequestConfiguration;

.field private zzi:Lcom/google/android/gms/ads/initialization/InitializationStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzb:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zza:Ljava/util/ArrayList;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzbhs;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbhs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhs;->zzc:Lcom/google/android/gms/internal/ads/zzbhs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbhs;->zzc:Lcom/google/android/gms/internal/ads/zzbhs;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhs;->zzc:Lcom/google/android/gms/internal/ads/zzbhs;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzr()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method
