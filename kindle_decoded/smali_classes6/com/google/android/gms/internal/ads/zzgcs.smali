.class abstract Lcom/google/android/gms/internal/ads/zzgcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgcq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcq;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvw;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgcs;->zzb([BI)Lcom/google/android/gms/internal/ads/zzgcq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgcs;->zzb([BI)Lcom/google/android/gms/internal/ads/zzgcq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zzb:Lcom/google/android/gms/internal/ads/zzgcq;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x10

    if-gt v0, v2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x10

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x10

    if-lt v2, v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    .line 7
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzd(Ljava/nio/ByteBuffer;[B)V

    .line 8
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zza:Lcom/google/android/gms/internal/ads/zzgcq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgcq;->zzc()I

    move-result p1

    new-array p1, p1, [B

    .line 9
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcs;->zzb:Lcom/google/android/gms/internal/ads/zzgcq;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgcq;->zze([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    rem-int/lit8 v3, p1, 0x10

    if-nez v3, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p1, 0x10

    sub-int/2addr v4, v3

    :goto_0
    add-int/lit8 v3, v4, 0x10

    .line 14
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 15
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long p1, p1

    .line 20
    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdm;->zza([B[B)[B

    move-result-object p1

    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract zzb([BI)Lcom/google/android/gms/internal/ads/zzgcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
