.class final Lcom/google/android/gms/ads/internal/overlay/zzg;
.super Landroid/widget/RelativeLayout;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/ads/internal/util/zzav;

.field zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzav;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzav;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/util/zzav;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    .line 4
    invoke-virtual {p1, p4}, Lcom/google/android/gms/ads/internal/util/zzav;->zzc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzav;->zza(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
