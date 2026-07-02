.class public final Lcom/google/android/gms/internal/ads/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzy;


# instance fields
.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzy;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzy;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzy;->zza:Lcom/google/android/gms/internal/ads/zzy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzx;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzy;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
