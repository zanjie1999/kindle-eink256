.class public final Lcom/google/android/gms/internal/ads/zzape;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:[B

.field public zzb:[B

.field public zzc:I

.field public zzd:[I

.field public zze:[I

.field public zzf:I

.field private final zzg:Landroid/media/MediaCodec$CryptoInfo;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzapd;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    sget v2, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzapd;

    .line 3
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzapc;)V

    move-object v1, v2

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzh:Lcom/google/android/gms/internal/ads/zzapd;

    return-void
.end method


# virtual methods
.method public final zza(I[I[I[B[BI)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzd:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzape;->zze:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzape;->zzb:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    const/4 p6, 0x1

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzape;->zzc:I

    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    iput p1, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 3
    iput-object p2, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 4
    iput-object p3, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 5
    iput-object p4, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 6
    iput-object p5, v1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 7
    iput p6, v1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 p1, 0x18

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzh:Lcom/google/android/gms/internal/ads/zzapd;

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzapd;->zza(Lcom/google/android/gms/internal/ads/zzapd;II)V

    :cond_0
    return-void
.end method

.method public final zzb()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
