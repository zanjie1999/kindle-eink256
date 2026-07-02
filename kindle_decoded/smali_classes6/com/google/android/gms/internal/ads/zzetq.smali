.class final synthetic Lcom/google/android/gms/internal/ads/zzetq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzetr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzetr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetq;->zza:Lcom/google/android/gms/internal/ads/zzetr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetq;->zza:Lcom/google/android/gms/internal/ads/zzetr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzets;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzetr;->zzb:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzets;-><init>(Ljava/util/List;)V

    return-object v1
.end method
