.class final Lcom/google/android/gms/ads/internal/util/zzci;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzcj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->zza:Lcom/google/android/gms/ads/internal/util/zzcj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->zza:Lcom/google/android/gms/ads/internal/util/zzcj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzcj;->zzd(Lcom/google/android/gms/ads/internal/util/zzcj;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
