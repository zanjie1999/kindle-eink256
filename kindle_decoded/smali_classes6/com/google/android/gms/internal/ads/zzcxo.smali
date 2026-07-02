.class final synthetic Lcom/google/android/gms/internal/ads/zzcxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfrz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxo;->zza:Lcom/google/android/gms/internal/ads/zzfrz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxo;->zza:Lcom/google/android/gms/internal/ads/zzfrz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrz;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
