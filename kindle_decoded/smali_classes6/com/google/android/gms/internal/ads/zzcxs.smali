.class final Lcom/google/android/gms/internal/ads/zzcxs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzcxn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrz;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcxu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzfrz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzb:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzfrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzfrz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrz;->zza(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzb:Lcom/google/android/gms/internal/ads/zzcxu;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxu;->zzd(Lcom/google/android/gms/internal/ads/zzcxu;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zzb:Lcom/google/android/gms/internal/ads/zzcxu;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzfrz;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcxu;->zzb(Lcom/google/android/gms/internal/ads/zzcxu;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfrz;)V

    return-void
.end method
