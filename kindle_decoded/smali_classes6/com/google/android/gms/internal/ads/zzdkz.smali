.class public final Lcom/google/android/gms/internal/ads/zzdkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdmx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zza:Lcom/google/android/gms/internal/ads/zzdkw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zza:Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkw;->zza()Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zza:Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkw;->zza()Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
