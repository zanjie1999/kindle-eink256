.class final Lcom/google/android/gms/internal/ads/zzaii;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaij;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzaig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaii;->zza:Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaii;->zza:Lcom/google/android/gms/internal/ads/zzaij;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzaij;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaih;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->zza:Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Lcom/google/android/gms/internal/ads/zzaij;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
