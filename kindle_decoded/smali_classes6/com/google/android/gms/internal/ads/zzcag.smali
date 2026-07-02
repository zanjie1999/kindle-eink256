.class final Lcom/google/android/gms/internal/ads/zzcag;
.super Lcom/google/android/gms/internal/ads/zzcfj;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcah;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcag;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcag;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/query/QueryInfo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhv;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbhv;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/query/QueryInfo;-><init>(Lcom/google/android/gms/internal/ads/zzbhv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcag;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V

    return-void
.end method
