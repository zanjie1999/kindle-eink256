.class final Lcom/google/android/gms/internal/ads/zzaqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqm;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaux;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zza:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzb:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zza:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zza:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
