.class abstract Lcom/google/android/gms/internal/ads/zzgcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdl;


# static fields
.field private static final zzb:[I


# instance fields
.field zza:[I

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcq;->zzi([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcq;->zzb:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzi([B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcq;->zza:[I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgcq;->zzc:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static zzf([I[I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcq;->zzb:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcq;->zzb:[I

    .line 2
    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static zzg([I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/4 v6, 0x4

    .line 1
    invoke-static {v0, v1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    const/16 v7, 0xd

    const/16 v8, 0x9

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 2
    invoke-static {v0, v10, v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    const/16 v11, 0xe

    const/4 v12, 0x6

    const/4 v13, 0x2

    .line 3
    invoke-static {v0, v13, v12, v3, v11}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    const/16 v14, 0xf

    const/16 v15, 0xb

    const/4 v6, 0x7

    const/4 v8, 0x3

    .line 4
    invoke-static {v0, v8, v6, v15, v14}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    .line 5
    invoke-static {v0, v1, v9, v3, v14}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    .line 6
    invoke-static {v0, v10, v12, v15, v4}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    .line 7
    invoke-static {v0, v13, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    const/16 v3, 0x9

    const/4 v4, 0x4

    .line 8
    invoke-static {v0, v8, v4, v3, v11}, Lcom/google/android/gms/internal/ads/zzgcq;->zzh([IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static zzh([IIIII)V
    .locals 2

    .line 1
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 2
    aget v1, p0, p4

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v1

    aput v0, p0, p4

    .line 3
    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    .line 4
    aget v0, p0, p2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xc

    ushr-int/lit8 v0, v0, -0xc

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 5
    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    .line 6
    aget p1, p0, p4

    xor-int/2addr p1, v1

    shl-int/lit8 v0, p1, 0x8

    ushr-int/lit8 p1, p1, -0x8

    or-int/2addr p1, v0

    aput p1, p0, p4

    .line 7
    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    .line 8
    aget p1, p0, p2

    xor-int/2addr p1, p4

    shl-int/lit8 p3, p1, 0x7

    ushr-int/lit8 p1, p1, -0x7

    or-int/2addr p1, p3

    aput p1, p0, p2

    return-void
.end method

.method static zzi([B)[I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method


# virtual methods
.method public final zza([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzd(Ljava/nio/ByteBuffer;[B)V

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "plaintext too long"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract zzb([II)[I
.end method

.method abstract zzc()I
.end method

.method final zzd(Ljava/nio/ByteBuffer;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-lt v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgds;->zza(I)[B

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    div-int/lit8 v2, v1, 0x40

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgcq;->zzc:I

    add-int/2addr v4, v3

    .line 7
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/zzgcq;->zze([BI)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x40

    if-ne v3, v5, :cond_0

    rem-int/lit8 v5, v1, 0x40

    .line 8
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgco;->zzc(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {p1, p2, v4, v6}, Lcom/google/android/gms/internal/ads/zzgco;->zzc(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zze([BI)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzi([B)[I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcq;->zzb([II)[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, [I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgcq;->zzg([I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p2
.end method
