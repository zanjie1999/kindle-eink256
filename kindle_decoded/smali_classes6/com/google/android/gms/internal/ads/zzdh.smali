.class final synthetic Lcom/google/android/gms/internal/ads/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdh;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdh;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdh;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdh;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdh;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zzr(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method
