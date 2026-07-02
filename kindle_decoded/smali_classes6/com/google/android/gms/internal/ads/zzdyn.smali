.class final synthetic Lcom/google/android/gms/internal/ads/zzdyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
