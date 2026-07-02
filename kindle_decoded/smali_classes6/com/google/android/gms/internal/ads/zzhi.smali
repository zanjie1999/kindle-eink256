.class final synthetic Lcom/google/android/gms/internal/ads/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zza:Lcom/google/android/gms/internal/ads/zzho;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzc:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzd:Lcom/google/android/gms/internal/ads/zzhc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhi;->zza:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzc:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzd:Lcom/google/android/gms/internal/ads/zzhc;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzC(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;)V

    return-void
.end method
