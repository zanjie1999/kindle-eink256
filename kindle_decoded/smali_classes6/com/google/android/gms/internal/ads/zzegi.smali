.class final synthetic Lcom/google/android/gms/internal/ads/zzegi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzb:Lcom/google/android/gms/internal/ads/zzeef;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzegj;->zzc(Lcom/google/android/gms/internal/ads/zzeef;ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V

    return-void
.end method
