.class final Lcom/google/android/gms/internal/ads/zzadp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzadn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzado;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadn;

    .line 2
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(Lcom/google/android/gms/internal/ads/zzadp;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzado;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->zzb:Lcom/google/android/gms/internal/ads/zzadn;

    return-void
.end method
