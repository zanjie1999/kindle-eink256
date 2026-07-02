.class public final Lcom/google/android/gms/internal/ads/zzdaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdav;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzeeh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzeeh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfac;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdav;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxw;->zza()Lcom/google/android/gms/internal/ads/zzezz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxx;->zza()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeeh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcxy;->zza()Lcom/google/android/gms/internal/ads/zzfac;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdav;

    .line 2
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdav;-><init>(Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeeh;Lcom/google/android/gms/internal/ads/zzfac;)V

    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdaw;->zza()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v0

    return-object v0
.end method
