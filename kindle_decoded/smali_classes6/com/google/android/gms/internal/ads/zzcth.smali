.class final synthetic Lcom/google/android/gms/internal/ads/zzcth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcth;->zza:Lcom/google/android/gms/internal/ads/zzcti;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcth;->zza:Lcom/google/android/gms/internal/ads/zzcti;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcti;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzctl;->zzb(Lcom/google/android/gms/internal/ads/zzctl;)Lcom/google/android/gms/internal/ads/zzctq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctq;->zzh()V

    return-void
.end method
