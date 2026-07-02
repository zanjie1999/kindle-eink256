.class public abstract Lcom/google/android/gms/internal/ads/zzfq;
.super Lcom/google/android/gms/internal/ads/zzadv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzB:Lcom/google/android/gms/internal/ads/zzfp;

.field private zzC:Lcom/google/android/gms/internal/ads/zzfo;

.field private zzD:I

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:Z

.field private zzO:Lcom/google/android/gms/internal/ads/zzfk;

.field private zzP:J

.field private zzQ:I

.field private zzR:I

.field private zzS:Ljava/nio/ByteBuffer;

.field private zzT:Z

.field private zzU:Z

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:Z

.field private zzZ:I

.field protected zza:Lcom/google/android/gms/internal/ads/zzaz;

.field private zzaa:I

.field private zzab:I

.field private zzac:Z

.field private zzad:Z

.field private zzae:Z

.field private zzaf:J

.field private zzag:J

.field private zzah:Z

.field private zzai:Z

.field private zzaj:Z

.field private zzak:J

.field private zzal:J

.field private zzam:I

.field private zzan:Lcom/google/android/gms/internal/ads/zzgh;

.field private zzao:Lcom/google/android/gms/internal/ads/zzfg;

.field private zzap:Lcom/google/android/gms/internal/ads/zzfg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfs;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaf;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaf;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamm<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Landroid/media/MediaCodec$BufferInfo;

.field private final zzm:[J

.field private final zzn:[J

.field private final zzo:[J

.field private zzp:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzq:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzr:Landroid/media/MediaCrypto;

.field private zzs:Z

.field private zzt:J

.field private zzu:F

.field private zzv:F

.field private zzw:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzx:Landroid/media/MediaFormat;

.field private zzy:Z

.field private zzz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfq;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzc:Lcom/google/android/gms/internal/ads/zzfm;

    if-eqz p3, :cond_0

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Lcom/google/android/gms/internal/ads/zzfs;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zze:F

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaf;

    const/4 p2, 0x0

    .line 2
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzf:Lcom/google/android/gms/internal/ads/zzaf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaf;

    const/4 p3, 0x2

    .line 4
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamm;

    const/16 p3, 0xa

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzu:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzv:F

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzt:J

    new-array p1, p3, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzm:[J

    new-array p1, p3, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    new-array p1, p3, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzo:[J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaf;->zzi(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzz:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzD:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzP:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzag:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method private final zzA()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected static zzY(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zza()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzX:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    return-void
.end method

.method private final zzaA(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaf()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzv:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzau()[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzj(FLcom/google/android/gms/internal/ads/zzafv;[Lcom/google/android/gms/internal/ads/zzafv;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzz:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaC()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzm(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzz:F

    :cond_6
    :goto_1
    return v1
.end method

.method private final zzaB()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzF:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzH:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaE()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final zzaC()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    return-void
.end method

.method private final zzaD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzD()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaE()V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()V

    return-void
.end method

.method private final zzaE()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v2, 0x0

    const/16 v3, 0x1776

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 3
    throw v0
.end method

.method private final zzaa()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzS:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzab()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    .line 2
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzN:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 4
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzgh;->zzf(IIIJI)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzA()V

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzL:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfq;->zzb:[B

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    const/4 v5, 0x0

    const/16 v6, 0x26

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 7
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgh;->zzf(IIIJI)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzA()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    return v2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzat()Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 14
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzadv;->zzax(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzak()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzag:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v7, -0x5

    if-ne v5, v7, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    .line 19
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;

    return v2

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    :cond_c
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    if-nez v0, :cond_d

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    return v1

    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzN:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 22
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgh;->zzf(IIIJI)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzA()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadx;->zze(I)I

    move-result v3

    .line 25
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 26
    throw v0

    .line 23
    :cond_f
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzz;->zzd()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    :cond_10
    return v2

    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaf;->zzj()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->zza:Lcom/google/android/gms/internal/ads/zzac;

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzac;->zzc(I)V

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzE:Z

    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_17

    .line 30
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_14

    if-ne v9, v2, :cond_15

    .line 31
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    .line 33
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_13
    const/4 v9, 0x1

    goto :goto_2

    :cond_14
    if-nez v9, :cond_15

    add-int/lit8 v7, v7, 0x1

    :cond_15
    :goto_2
    if-eqz v9, :cond_16

    const/4 v7, 0x0

    :cond_16
    move v5, v8

    goto :goto_1

    .line 37
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_18

    return v2

    :cond_18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzE:Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzO:Lcom/google/android/gms/internal/ads/zzfk;

    if-eqz v6, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 39
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzb(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzaf;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzO:Lcom/google/android/gms/internal/ads/zzfk;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 40
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)J

    move-result-wide v8

    .line 41
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    :cond_1a
    move-wide v12, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 42
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 43
    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzamm;->zza(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    :cond_1c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    .line 44
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zze()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzU(Lcom/google/android/gms/internal/ads/zzaf;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzB(Lcom/google/android/gms/internal/ads/zzaf;)V

    if-eqz v3, :cond_1e

    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaf;->zza:Lcom/google/android/gms/internal/ads/zzac;

    const/4 v14, 0x0

    .line 48
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgh;->zzg(IILcom/google/android/gms/internal/ads/zzac;JI)V

    goto :goto_4

    .line 55
    :cond_1e
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzQ:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzg:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 50
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgh;->zzf(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzA()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 55
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzc:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzc:I

    return v2

    :catch_1
    move-exception v0

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadx;->zze(I)I

    move-result v3

    .line 52
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 53
    throw v0

    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzm(Ljava/lang/Exception;)V

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzp(I)Z

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()V

    return v2

    :cond_1f
    :goto_5
    return v1
.end method

.method private final zzb()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzR()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzR()V

    .line 3
    throw v0
.end method

.method private final zzp(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzat()Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzf:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzf:Lcom/google/android/gms/internal/ads/zzaf;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzadv;->zzax(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzf:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzy(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzt:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzz()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected zzB(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzC()V
    .locals 0

    return-void
.end method

.method protected zzD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method protected abstract zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation
.end method

.method public final zzG()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final zzH(Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzd(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfy; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected final zzI()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-nez v0, :cond_2b

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    if-nez v0, :cond_2b

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v0, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzap:Lcom/google/android/gms/internal/ads/zzfg;

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zza()V

    .line 89
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    .line 94
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzl(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v1, 0x20

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl(I)V

    .line 94
    :goto_0
    iput-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    return-void

    .line 93
    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzap:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzao:Lcom/google/android/gms/internal/ads/zzfg;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzfh;->zza:Z

    if-nez v1, :cond_3

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfg;->zza()Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzey;->zza:I

    .line 86
    invoke-virtual {v7, v0, v1, v9, v2}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 87
    throw v0

    .line 3
    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfp; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v10, 0x0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 4
    invoke-virtual {v7, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzfq;->zze(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;Z)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 8
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v10, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzB:Lcom/google/android/gms/internal/ads/zzfp;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzfy; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzfp; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const v3, -0xc34e

    .line 9
    invoke-direct {v1, v2, v0, v9, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 8
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    :goto_3
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-nez v0, :cond_29

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfo;

    .line 12
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzfq;->zzJ(Lcom/google/android/gms/internal/ads/zzfo;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzfp; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v0, :cond_7

    return-void

    .line 13
    :cond_7
    :try_start_3
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    .line 14
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_8

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_4

    .line 17
    :cond_8
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzv:F

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzau()[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    invoke-virtual {v7, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zzj(FLcom/google/android/gms/internal/ads/zzafv;[Lcom/google/android/gms/internal/ads/zzafv;)F

    move-result v0

    .line 14
    :goto_4
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzfq;->zze:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_9

    goto :goto_5

    :cond_9
    move v1, v0

    .line 16
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const-string v12, "createCodec:"

    if-eqz v6, :cond_a

    :try_start_4
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 19
    :cond_a
    new-instance v0, Ljava/lang/String;

    .line 17
    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    .line 18
    invoke-virtual {v7, v11, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzg(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    if-eqz v6, :cond_25

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    .line 19
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 39
    :cond_b
    new-instance v13, Ljava/lang/String;

    .line 19
    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_7
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    .line 20
    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    const-string v12, "configureCodec"

    .line 22
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfl;->zzb:Landroid/media/MediaFormat;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfl;->zzd:Landroid/view/Surface;

    .line 23
    invoke-virtual {v6, v12, v0, v10, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    const-string v0, "startCodec"

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    .line 28
    invoke-direct {v0, v6, v10, v10}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzgg;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 29
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzz:F

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    if-gt v0, v6, :cond_d

    .line 30
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v15, "SM-T585"

    .line 31
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v15, "SM-A510"

    .line 32
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v15, "SM-A520"

    .line 33
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v15, "SM-J700"

    .line 34
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x2

    goto :goto_8

    .line 71
    :cond_d
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v15, 0x18

    if-ge v0, v15, :cond_10

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const-string v0, "flounder"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "flounder_lte"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "grouper"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "tilapia"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    .line 34
    :goto_8
    iput v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzD:I

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    sget v15, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v9, 0x15

    if-ge v15, v9, :cond_11

    .line 40
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzE:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v15, 0x13

    const/16 v10, 0x12

    if-lt v0, v10, :cond_14

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v0, v10, :cond_12

    const-string v0, "OMX.SEC.avc.dec"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v0, v15, :cond_13

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    const-string v14, "SM-G800"

    .line 44
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "OMX.Exynos.avc.dec"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzF:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_15

    const-string v0, "c2.android.aac.decoder"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzG:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v0, v3, :cond_17

    const-string v0, "OMX.google.vorbis.decoder"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v0, 0x1

    goto :goto_f

    :cond_17
    :goto_e
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v0, v15, :cond_19

    const-string v0, "hb2000"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "stvm8"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzH:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v0, v9, :cond_1a

    const-string v0, "OMX.google.aac.decoder"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzI:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ge v0, v9, :cond_1c

    const-string v0, "OMX.SEC.mp3.dec"

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "samsung"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "baffin"

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "grand"

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "fortuna"

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "gprimelte"

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "j2y18lte"

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v3, "ms01"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzJ:Z

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v3, v10, :cond_1d

    .line 60
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ne v0, v8, :cond_1d

    const-string v0, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzK:Z

    .line 62
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v3, v6, :cond_1f

    const-string v3, "OMX.rk.video_decoder.avc"

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    :cond_1e
    :goto_13
    const/4 v0, 0x1

    goto :goto_15

    :cond_1f
    :goto_14
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v6, 0x11

    if-gt v3, v6, :cond_20

    const-string v3, "OMX.allwinner.video.decoder.avc"

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_20
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v3, v1, :cond_21

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_21
    const-string v0, "Amazon"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "AFTS"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    if-eqz v0, :cond_22

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzN:Z

    const-string v0, "c2.android.mp3.decoder"

    .line 68
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfk;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzO:Lcom/google/android/gms/internal/ads/zzfk;

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaf()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzP:J

    :cond_24
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 70
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zza:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zza:I

    sub-long v5, v12, v4

    move-object/from16 v1, p0

    move-wide v3, v12

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfq;->zzk(Ljava/lang/String;JJ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_19

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_17

    :cond_25
    move-object v1, v10

    .line 72
    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_3
    move-exception v0

    goto :goto_16

    :catch_4
    move-exception v0

    :goto_16
    const/4 v6, 0x0

    :goto_17
    if-eqz v6, :cond_26

    .line 73
    :try_start_a
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    .line 74
    :cond_26
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    move-exception v0

    .line 75
    :try_start_b
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    const-string v2, "MediaCodecRenderer"

    const-string v3, "Failed to initialize decoder: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v3, 0x0

    .line 77
    invoke-direct {v1, v2, v0, v3, v11}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzfo;)V

    .line 78
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzm(Ljava/lang/Exception;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzB:Lcom/google/android/gms/internal/ads/zzfp;

    if-nez v0, :cond_27

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzB:Lcom/google/android/gms/internal/ads/zzfp;

    goto :goto_18

    .line 79
    :cond_27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzfp;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzfp;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzB:Lcom/google/android/gms/internal/ads/zzfp;

    .line 78
    :goto_18
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    :goto_19
    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_28
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzB:Lcom/google/android/gms/internal/ads/zzfp;

    .line 81
    throw v0

    :cond_29
    move-object v1, v10

    .line 15
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    return-void

    .line 9
    :cond_2a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const v2, -0xc34f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzfp; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    move-exception v0

    .line 87
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/16 v2, 0xfa1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 84
    throw v0

    :cond_2b
    :goto_1a
    return-void
.end method

.method protected zzJ(Lcom/google/android/gms/internal/ads/zzfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final zzK()Lcom/google/android/gms/internal/ads/zzfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    return-object v0
.end method

.method protected final zzL([Lcom/google/android/gms/internal/ads/zzafv;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    const/4 p1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    const/16 v0, 0x9

    aget-wide v0, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    .line 2
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    .line 3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzm:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    .line 5
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzo:[J

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    .line 6
    aput-wide p2, p1, v0

    return-void
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzu:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzv:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzaA(Lcom/google/android/gms/internal/ads/zzafv;)Z

    return-void
.end method

.method protected final zzN()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzk()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaz;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaz;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzao:Lcom/google/android/gms/internal/ads/zzfg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzS()V

    return-void

    :catchall_0
    move-exception v1

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzao:Lcom/google/android/gms/internal/ads/zzfg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzS()V

    .line 5
    throw v1
.end method

.method public final zzO(JJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1
    :try_start_0
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzD()V

    return-void

    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v11, 0x2

    if-nez v0, :cond_2

    .line 2
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzfq;->zzp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    if-eqz v0, :cond_11

    const-string v0, "bypassRender"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    xor-int/2addr v0, v14

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzn()I

    move-result v10

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Z

    move-result v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result v16

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v17, v4

    move-wide/from16 v4, p3

    move v13, v0

    move/from16 v14, v16

    move-object/from16 v15, v17

    .line 6
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzfq;->zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v15, p0

    :try_start_2
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzm()J

    move-result-wide v0

    .line 7
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzV(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()V

    goto :goto_2

    :cond_4
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_10

    :cond_5
    :goto_2
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_6
    const/4 v14, 0x1

    .line 67
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzW:Z

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzW:Z

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzX:Z

    if-eqz v0, :cond_8

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zza()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzX:Z

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    if-eqz v0, :cond_10

    :cond_8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    xor-int/2addr v0, v14

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzat()Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    :cond_9
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 16
    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzadv;->zzax(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_e

    const/4 v2, -0x4

    if-eq v1, v2, :cond_a

    goto :goto_5

    .line 21
    :cond_a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    goto :goto_5

    :cond_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    if-eqz v1, :cond_d

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;

    .line 17
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzo(Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    goto :goto_4

    .line 22
    :cond_c
    throw v2

    .line 17
    :cond_d
    :goto_4
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->zzk()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzW:Z

    goto :goto_5

    .line 20
    :cond_e
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;

    .line 16
    :goto_5
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->zzk()V

    :cond_f
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzX:Z

    if-eqz v0, :cond_10

    goto/16 :goto_1

    .line 23
    :cond_10
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_15

    .line 20
    :cond_11
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v0, :cond_2a

    .line 24
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzz()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8

    if-nez v0, :cond_22

    :try_start_4
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzI:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_b

    if-eqz v0, :cond_13

    :try_start_5
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    .line 56
    :catch_1
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    if-eqz v0, :cond_12

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    :cond_12
    :goto_8
    move-wide v2, v9

    move-object v1, v15

    const/16 v19, 0x0

    goto/16 :goto_13

    .line 49
    :cond_13
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_9
    if-gez v0, :cond_18

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    .line 27
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzae:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzD:I

    if-eqz v1, :cond_14

    const-string v1, "width"

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_14

    const-string v1, "height"

    .line 30
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_14

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzM:Z

    goto :goto_a

    .line 64
    :cond_14
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzK:Z

    if-eqz v1, :cond_15

    const-string v1, "channel-count"

    .line 31
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_15
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzx:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzy:Z

    goto :goto_a

    :cond_16
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzN:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    if-nez v0, :cond_17

    iget v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    if-ne v0, v11, :cond_12

    .line 58
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    goto :goto_8

    :cond_18
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzM:Z

    if-eqz v1, :cond_19

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzM:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    .line 32
    invoke-virtual {v1, v0, v13}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    :goto_a
    move-wide v2, v9

    move-object v1, v15

    const/4 v0, 0x2

    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_19
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 33
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_1a

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1a

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    goto :goto_8

    :cond_1a
    iput v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzS:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1b

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 35
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzS:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 36
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1b
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzJ:Z

    if-eqz v0, :cond_1c

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 37
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 38
    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1c
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 39
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1d

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzT:Z

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzag:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 43
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const/4 v0, 0x1

    goto :goto_d

    :cond_1f
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzU:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    .line 45
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzamm;->zze(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v0, :cond_20

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzy:Z

    if-eqz v1, :cond_20

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamm;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafv;

    :cond_20
    if-eqz v0, :cond_21

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_e

    .line 49
    :cond_21
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzy:Z

    if-eqz v0, :cond_22

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz v0, :cond_22

    .line 46
    :goto_e
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzx:Landroid/media/MediaFormat;

    .line 47
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzo(Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzy:Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_b

    :cond_22
    :try_start_7
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzI:Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_24

    :try_start_8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_24

    :try_start_9
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzS:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 50
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x1

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzT:Z

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzU:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v17, v2

    move/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v0

    move v10, v12

    const/4 v0, 0x2

    move-wide/from16 v11, v19

    const/16 v19, 0x0

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v16

    .line 51
    :try_start_a
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzfq;->zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_11

    :catch_2
    move-wide/from16 v21, v9

    const/16 v19, 0x0

    .line 59
    :catch_3
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v15, p0

    :try_start_c
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    if-eqz v0, :cond_23

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    :cond_23
    move-object v1, v15

    :goto_f
    move-wide/from16 v2, v21

    goto :goto_13

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v1, p0

    goto/16 :goto_17

    :catch_5
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_14

    :cond_24
    move-wide/from16 v21, v9

    const/4 v0, 0x2

    const/16 v19, 0x0

    .line 61
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzS:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzR:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzT:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzU:Z

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzfq;->zzq:Lcom/google/android/gms/internal/ads/zzafv;
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v16, v4

    move-wide/from16 v4, p3

    move-object/from16 v15, v16

    .line 49
    :try_start_d
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzfq;->zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_6

    :goto_11
    if-eqz v1, :cond_27

    move-object/from16 v1, p0

    .line 51
    :try_start_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzV(J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfq;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaa()V

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_25

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaD()V

    goto :goto_f

    :cond_25
    move-wide/from16 v2, v21

    .line 55
    :goto_12
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzy(J)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_13

    :cond_26
    move-object v15, v1

    move-wide v9, v2

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_27
    move-object/from16 v1, p0

    goto :goto_f

    .line 63
    :cond_28
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzab()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzy(J)Z

    move-result v0

    if-nez v0, :cond_28

    .line 64
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    const/4 v2, 0x1

    goto :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_16

    :catch_7
    move-exception v0

    :goto_14
    move-object v1, v15

    goto :goto_16

    :catch_8
    move-exception v0

    move-object v1, v15

    const/16 v19, 0x0

    goto :goto_16

    :cond_2a
    move-object v1, v15

    const/16 v19, 0x0

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 65
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzadv;->zzay(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzd:I
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_a

    const/4 v2, 0x1

    .line 66
    :try_start_f
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzp(I)Z

    .line 23
    :goto_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9

    return-void

    :catch_9
    move-exception v0

    goto :goto_17

    :catch_a
    move-exception v0

    :goto_16
    const/4 v2, 0x1

    goto :goto_17

    :catch_b
    move-exception v0

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    .line 68
    :goto_17
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2b

    .line 69
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_2b

    goto :goto_18

    .line 70
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 71
    array-length v5, v3

    if-lez v5, :cond_2e

    aget-object v3, v3, v19

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.MediaCodec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 73
    :goto_18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzm(Ljava/lang/Exception;)V

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v3, v4, :cond_2c

    .line 74
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_2c

    .line 75
    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v14, 0x1

    goto :goto_19

    :cond_2c
    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_2d

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    :cond_2d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzfn;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/16 v3, 0xfa3

    .line 78
    invoke-virtual {v1, v0, v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    throw v0

    .line 72
    :cond_2e
    throw v0
.end method

.method protected final zzP()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    :cond_0
    return v0
.end method

.method protected final zzQ()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzF:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzG:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzae:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzH:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()V

    return v1

    .line 2
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    const/4 v0, 0x1

    return v0
.end method

.method protected zzR()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzA()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaa()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzP:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzad:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzL:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzT:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzU:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzk:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzag:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzO:Lcom/google/android/gms/internal/ads/zzfk;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zza()V

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    return-void
.end method

.method protected final zzS()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzR()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzO:Lcom/google/android/gms/internal/ads/zzfk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzx:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzae:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzz:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzD:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzs:Z

    return-void
.end method

.method protected zzT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzfn;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;)V

    return-object v0
.end method

.method protected zzU(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method protected zzV(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzo:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzm:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzo:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    .line 3
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzC()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzW()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzu:F

    return v0
.end method

.method protected final zzX()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    return-wide v0
.end method

.method protected final zzZ()Lcom/google/android/gms/internal/ads/zzgh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    return-object v0
.end method

.method protected abstract zzd(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation
.end method

.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation
.end method

.method protected zzf(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzg(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzfl;
.end method

.method protected zzh(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzj(FLcom/google/android/gms/internal/ads/zzafv;[Lcom/google/android/gms/internal/ads/zzafv;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzk(Ljava/lang/String;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzl(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzm(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v1, 0x0

    if-eqz v4, :cond_16

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzap:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzX:Z

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzA:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzC:Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzao:Lcom/google/android/gms/internal/ads/zzfg;

    const/16 v7, 0x17

    if-ne v6, p1, :cond_12

    if-eq p1, v6, :cond_3

    .line 4
    sget v8, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v8, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 5
    invoke-virtual {p0, v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v7

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    const/4 v9, 0x3

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eqz v8, :cond_e

    if-eq v8, v0, :cond_9

    if-eq v8, v11, :cond_5

    .line 6
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzaA(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    if-eq p1, v6, :cond_f

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaB()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 8
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzaA(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzY:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzZ:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzD:I

    if-eq v8, v11, :cond_8

    if-ne v8, v0, :cond_7

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    .line 9
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-ne v8, v10, :cond_7

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-ne v8, v10, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzL:Z

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    if-eq p1, v6, :cond_f

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaB()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 11
    :cond_9
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzaA(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v8

    if-nez v8, :cond_a

    :goto_3
    const/16 v6, 0x10

    goto :goto_7

    :cond_a
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzw:Lcom/google/android/gms/internal/ads/zzafv;

    if-eq p1, v6, :cond_b

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaB()Z

    move-result p1

    if-nez p1, :cond_f

    :goto_4
    const/4 v6, 0x2

    goto :goto_7

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzac:Z

    if-eqz p1, :cond_f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaa:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzF:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzH:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    goto :goto_6

    :cond_d
    :goto_5
    iput v9, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    goto :goto_4

    .line 13
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaC()V

    :cond_f
    :goto_6
    const/4 v6, 0x0

    .line 6
    :goto_7
    iget p1, v7, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzan:Lcom/google/android/gms/internal/ads/zzgh;

    if-ne p1, v2, :cond_10

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzab:I

    if-ne p1, v9, :cond_11

    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzba;

    .line 14
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;II)V

    return-object p1

    :cond_11
    return-object v7

    :cond_12
    if-eqz p1, :cond_14

    if-nez v6, :cond_13

    goto :goto_8

    .line 15
    :cond_13
    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt p1, v7, :cond_14

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadx;->zze:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadx;->zze:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Ljava/util/UUID;

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 18
    :cond_14
    :goto_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzaC()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzba;

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;II)V

    return-object p1

    .line 1
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 2
    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 1
    throw p1

    .line 20
    :cond_16
    throw v1
.end method

.method protected zzo(Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzq(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    return-void
.end method

.method protected zzr(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzah:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzV:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzi:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzh:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaf;->zza()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzW:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzP()Z

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamm;->zzc()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzaj:Z

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzj:Lcom/google/android/gms/internal/ads/zzamm;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamm;->zzb()V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzn:[J

    .line 5
    aget-wide v0, p3, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzm:[J

    .line 6
    aget-wide p2, p3, p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    :cond_2
    return-void
.end method

.method protected zzu()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzak:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzal:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzam:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzQ()Z

    return-void
.end method

.method protected zzv()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zza()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzap:Lcom/google/android/gms/internal/ads/zzfg;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzap:Lcom/google/android/gms/internal/ads/zzfg;

    .line 3
    throw v1
.end method

.method public zzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzai:Z

    return v0
.end method

.method public zzx()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaz()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzz()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzP:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzP:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method
