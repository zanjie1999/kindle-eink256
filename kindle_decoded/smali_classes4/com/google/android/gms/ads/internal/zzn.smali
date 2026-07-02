.class final Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzg(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzg(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaas;->zzd(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
