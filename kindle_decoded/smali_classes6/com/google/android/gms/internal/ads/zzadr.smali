.class final Lcom/google/android/gms/internal/ads/zzadr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzadt;

.field private final zzb:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadt;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadr;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzb:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzadq;-><init>(Lcom/google/android/gms/internal/ads/zzadr;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
