.class final synthetic Lcom/google/android/gms/internal/ads/zzdni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zza:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzb:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zza:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzb:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnl;->zzf(Lcom/google/android/gms/internal/ads/zzdog;)V

    return-void
.end method
