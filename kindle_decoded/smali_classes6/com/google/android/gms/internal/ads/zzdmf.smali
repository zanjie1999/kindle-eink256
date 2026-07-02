.class final synthetic Lcom/google/android/gms/internal/ads/zzdmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmh;

.field private final zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmh;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzdmh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzdmh;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzL(Z)V

    return-void
.end method
