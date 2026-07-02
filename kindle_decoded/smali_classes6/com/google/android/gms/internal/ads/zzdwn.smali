.class public final Lcom/google/android/gms/internal/ads/zzdwn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdwm;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzbqm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzbqm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbqm;)Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Lcom/google/android/gms/internal/ads/zzbqm;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Lcom/google/android/gms/internal/ads/zzbqm;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza()Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    return-object v0
.end method
