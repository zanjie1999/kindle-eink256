.class final synthetic Lcom/google/android/gms/internal/ads/zzewh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzewi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzewi;Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewh;->zza:Lcom/google/android/gms/internal/ads/zzewi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewh;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewh;->zza:Lcom/google/android/gms/internal/ads/zzewi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewh;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzewj;->zzd(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeli;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
