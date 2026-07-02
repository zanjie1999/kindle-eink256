.class final Lcom/google/android/gms/internal/ads/zzawy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/view/View;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxc;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzaxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zza:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzb(Landroid/view/View;)V

    return-void
.end method
