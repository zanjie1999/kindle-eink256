.class final Lcom/google/android/gms/internal/ads/zzkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzkh;

.field private zzc:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzkf;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzkf;)Lcom/google/android/gms/internal/ads/zzkh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lcom/google/android/gms/internal/ads/zzkh;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzkf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzc:Z

    return p0
.end method


# virtual methods
.method public final zzd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzc:Z

    return-void
.end method
