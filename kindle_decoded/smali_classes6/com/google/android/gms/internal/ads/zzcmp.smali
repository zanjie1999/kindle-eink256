.class final Lcom/google/android/gms/internal/ads/zzcmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdy;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcms;Lcom/google/android/gms/internal/ads/zzcdy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzb:Lcom/google/android/gms/internal/ads/zzcms;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zza:Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzb:Lcom/google/android/gms/internal/ads/zzcms;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zza:Lcom/google/android/gms/internal/ads/zzcdy;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcms;->zzi(Lcom/google/android/gms/internal/ads/zzcms;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcdy;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
