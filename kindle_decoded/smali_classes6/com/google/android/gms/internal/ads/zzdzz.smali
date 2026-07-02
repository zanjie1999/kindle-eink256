.class public final Lcom/google/android/gms/internal/ads/zzdzz;
.super Lcom/google/android/gms/internal/ads/zzcbe;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeaa;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzeaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzeaa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzeaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/util/zzbc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzz;->zza:Lcom/google/android/gms/internal/ads/zzeaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzbb;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzbc;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzbc;->zzb:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbb;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
