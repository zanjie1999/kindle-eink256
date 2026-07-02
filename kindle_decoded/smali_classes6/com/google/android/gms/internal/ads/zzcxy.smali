.class public final Lcom/google/android/gms/internal/ads/zzcxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzfac;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxv;->zzc()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxv;->zzc()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object v0

    return-object v0
.end method
