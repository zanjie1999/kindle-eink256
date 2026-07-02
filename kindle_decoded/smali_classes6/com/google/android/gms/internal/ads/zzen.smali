.class public final Lcom/google/android/gms/internal/ads/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdw;


# instance fields
.field private zzA:[Ljava/nio/ByteBuffer;

.field private zzB:Ljava/nio/ByteBuffer;

.field private zzC:Ljava/nio/ByteBuffer;

.field private zzD:[B

.field private zzE:I

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:I

.field private zzL:Lcom/google/android/gms/internal/ads/zzh;

.field private zzM:J

.field private zzN:Z

.field private zzO:Z

.field private final zzP:Lcom/google/android/gms/internal/ads/zzef;

.field private final zza:Lcom/google/android/gms/internal/ads/zzec;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzew;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzde;

.field private final zzd:[Lcom/google/android/gms/internal/ads/zzde;

.field private final zze:Landroid/os/ConditionVariable;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzea;

.field private final zzg:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzeg;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzem;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzei;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzei<",
            "Lcom/google/android/gms/internal/ads/zzds;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzei;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzei<",
            "Lcom/google/android/gms/internal/ads/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/ads/zzdt;

.field private zzl:Lcom/google/android/gms/internal/ads/zzee;

.field private zzm:Lcom/google/android/gms/internal/ads/zzee;

.field private zzn:Landroid/media/AudioTrack;

.field private zzo:Lcom/google/android/gms/internal/ads/zzg;

.field private zzp:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzq:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzahf;

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:Z

.field private zzw:Z

.field private zzx:J

.field private zzy:F

.field private zzz:[Lcom/google/android/gms/internal/ads/zzde;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdb;[Lcom/google/android/gms/internal/ads/zzde;Z)V
    .locals 11

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzef;-><init>([Lcom/google/android/gms/internal/ads/zzde;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzP:Lcom/google/android/gms/internal/ads/zzef;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    .line 3
    new-instance p2, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zze:Landroid/os/ConditionVariable;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzea;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzej;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzej;-><init>(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzeh;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzea;-><init>(Lcom/google/android/gms/internal/ads/zzdz;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzec;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zza:Lcom/google/android/gms/internal/ads/zzec;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzew;

    .line 6
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzew;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Lcom/google/android/gms/internal/ads/zzew;

    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzes;

    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zza:Lcom/google/android/gms/internal/ads/zzec;

    aput-object v1, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Lcom/google/android/gms/internal/ads/zzew;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zza()[Lcom/google/android/gms/internal/ads/zzde;

    move-result-object p1

    .line 9
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v2, [Lcom/google/android/gms/internal/ads/zzde;

    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzde;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzc:[Lcom/google/android/gms/internal/ads/zzde;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzde;

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeo;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzeo;-><init>()V

    aput-object p2, p1, v2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzd:[Lcom/google/android/gms/internal/ads/zzde;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzy:F

    sget-object p1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzo:Lcom/google/android/gms/internal/ads/zzg;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzh;

    const/4 p2, 0x0

    .line 12
    invoke-direct {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzL:Lcom/google/android/gms/internal/ads/zzh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzahf;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzahf;ZJJLcom/google/android/gms/internal/ads/zzeh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzahf;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzr:Lcom/google/android/gms/internal/ads/zzahf;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    new-array p1, v2, [Lcom/google/android/gms/internal/ads/zzde;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    new-array p1, v2, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzA:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzei;

    const-wide/16 p2, 0x64

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzei;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzi:Lcom/google/android/gms/internal/ads/zzei;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzei;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzei;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzj:Lcom/google/android/gms/internal/ads/zzei;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/ads/zzen;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/ads/zzen;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic zzC(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private final zzD()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzde;->zzg()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzA:[Ljava/nio/ByteBuffer;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzde;->zze()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzE(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdv;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzA:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    .line 2
    aget-object v2, v2, v3

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzF(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    .line 5
    aget-object v3, v3, v1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    if-le v1, v4, :cond_3

    .line 6
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzde;->zzc(Ljava/nio/ByteBuffer;)V

    .line 7
    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzde;->zze()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzA:[Ljava/nio/ByteBuffer;

    .line 8
    aput-object v3, v4, v1

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private final zzF(Ljava/nio/ByteBuffer;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdv;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    const/16 p3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    goto :goto_1

    .line 15
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ge p2, p3, :cond_5

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzD:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    .line 5
    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzD:[B

    .line 6
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzD:[B

    .line 7
    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzE:I

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 10
    sget v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ge v2, p3, :cond_7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzt:J

    .line 11
    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzf(J)I

    move-result p3

    if-lez p3, :cond_6

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzD:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzE:I

    .line 13
    invoke-virtual {v2, v3, v4, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p3

    if-lez p3, :cond_8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzE:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzE:I

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    goto :goto_2

    .line 25
    :cond_7
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 15
    invoke-virtual {p3, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    .line 16
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzM:J

    if-gez p3, :cond_e

    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_9

    const/4 p1, -0x6

    if-eq p3, p1, :cond_b

    :cond_9
    const/16 p1, -0x20

    if-ne p3, p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 17
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(ILcom/google/android/gms/internal/ads/zzafv;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    if-eqz p2, :cond_c

    .line 18
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/Exception;)V

    :cond_c
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    if-nez p2, :cond_d

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzj:Lcom/google/android/gms/internal/ads/zzei;

    .line 20
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzei;->zza(Ljava/lang/Exception;)V

    return-void

    .line 19
    :cond_d
    throw p1

    .line 20
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzj:Lcom/google/android/gms/internal/ads/zzei;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzP(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    if-eqz p1, :cond_f

    if-ge p3, p2, :cond_f

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzO:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    const-wide/16 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzg(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzep;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object p1

    .line 24
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahu;->zza(J)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 25
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzt:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzt:J

    if-ne p3, p2, :cond_10

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method private final zzG()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdv;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 2
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzde;->zzd()V

    .line 4
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzE(J)V

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzde;->zzf()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzF(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    return v2
.end method

.method private final zzH()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzy:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzy:F

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzahf;Z)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzahf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzahf;ZJJLcom/google/android/gms/internal/ads/zzeh;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    return-void

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method private final zzJ()Lcom/google/android/gms/internal/ads/zzeg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeg;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    :goto_0
    return-object v0
.end method

.method private final zzK(J)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzP:Lcom/google/android/gms/internal/ads/zzef;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Lcom/google/android/gms/internal/ads/zzahf;)Lcom/google/android/gms/internal/ads/zzahf;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahf;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    :goto_0
    move-object v3, v1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzP:Lcom/google/android/gms/internal/ads/zzef;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzeg;->zzb:Z

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Z)Z

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeg;

    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzee;->zza(J)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v11

    move v4, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzahf;ZJJLcom/google/android/gms/internal/ads/zzeh;)V

    .line 10
    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzee;->zzi:[Lcom/google/android/gms/internal/ads/zzde;

    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 14
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzde;->zzb()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzde;->zzg()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 18
    new-array v1, p1, [Lcom/google/android/gms/internal/ads/zzde;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/ads/zzde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzz:[Lcom/google/android/gms/internal/ads/zzde;

    .line 19
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzA:[Ljava/nio/ByteBuffer;

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzD()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzep;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzdp;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzh(Z)V

    :cond_4
    return-void
.end method

.method private final zzL()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzM()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzN()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzs:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzee;->zzb:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private final zzO()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzt:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzee;->zzd:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private static zzP(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzQ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzi(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/ads/zzen;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzen;->zze:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    return-object p0
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/ads/zzen;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/ads/zzen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    return p0
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/ads/zzen;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzM:J

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzP(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 6
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    return v1
.end method

.method public final zzd(Z)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzw:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzee;->zza(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeg;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzd:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzd:J

    sub-long v2, v0, v2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahf;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzahf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzc:J

    add-long/2addr v0, v2

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzP:Lcom/google/android/gms/internal/ads/zzef;

    .line 10
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzd(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    .line 11
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzc:J

    add-long/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 13
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzd:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    sub-long/2addr v2, v0

    .line 15
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzJ(JF)J

    move-result-wide v0

    .line 16
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzc:J

    sub-long v0, v2, v0

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzP:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zze()J

    move-result-wide v2

    .line 17
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzee;->zza(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzafv;I[I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdr;
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzP(I)Z

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    .line 3
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzS(II)I

    move-result v3

    .line 4
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzen;->zzc:[Lcom/google/android/gms/internal/ads/zzde;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Lcom/google/android/gms/internal/ads/zzew;

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->zzo(II)V

    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 6
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x6

    new-array p3, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 7
    aput v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zza:Lcom/google/android/gms/internal/ads/zzec;

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzec;->zzo([I)V

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdc;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    .line 10
    array-length p3, v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v2, v11, v0

    .line 11
    :try_start_0
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzde;->zza(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v4

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzde;->zzb()Z

    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdd; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    move-object p2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 20
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdr;

    .line 13
    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;)V

    throw p3

    .line 14
    :cond_2
    iget v8, p2, Lcom/google/android/gms/internal/ads/zzdc;->zzd:I

    .line 15
    iget v6, p2, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    .line 16
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzdc;->zzc:I

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzamq;->zzR(I)I

    move-result v7

    .line 17
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdc;->zzc:I

    invoke-static {v8, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzS(II)I

    move-result v5

    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzN:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzee;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzee;-><init>(Lcom/google/android/gms/internal/ads/zzafv;IIIIIIIZ[Lcom/google/android/gms/internal/ads/zzde;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    return-void

    :cond_3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    return-void

    .line 18
    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x36

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output channel config (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;)V

    throw p2

    .line 17
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output encoding (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;)V

    throw p2

    .line 21
    :cond_6
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    .line 22
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdr;

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Unable to configure passthrough for: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;)V

    throw p2
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzea;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    return-void
.end method

.method public final zzh(Ljava/nio/ByteBuffer;JI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzds;,
            Lcom/google/android/gms/internal/ads/zzdv;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzG()Z

    move-result p4

    if-nez p4, :cond_2

    return v1

    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 3
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzee;->zzg:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/zzee;->zzg:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzee;->zze:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/zzee;->zze:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzee;->zzf:I

    iget v5, p4, Lcom/google/android/gms/internal/ads/zzee;->zzf:I

    if-ne v4, v5, :cond_3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzee;->zzd:I

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzee;->zzd:I

    if-ne v3, v4, :cond_3

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 7
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzen;->zzP(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {p4}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 9
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    invoke-virtual {p4, v4, v3}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzO:Z

    goto :goto_2

    .line 4
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzQ()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzk()Z

    move-result p4

    if-eqz p4, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()V

    .line 10
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(J)V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result p4

    if-nez p4, :cond_b

    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zze:Landroid/os/ConditionVariable;

    .line 11
    invoke-virtual {p4}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    if-eqz p4, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzo:Lcom/google/android/gms/internal/ads/zzg;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    .line 12
    invoke-virtual {p4, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzee;->zzc(ZLcom/google/android/gms/internal/ads/zzg;I)Landroid/media/AudioTrack;

    move-result-object p4
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 13
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzen;->zzP(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzh:Lcom/google/android/gms/internal/ads/zzem;

    if-nez v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzem;

    .line 14
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzem;-><init>(Lcom/google/android/gms/internal/ads/zzen;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzh:Lcom/google/android/gms/internal/ads/zzem;

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzh:Lcom/google/android/gms/internal/ads/zzem;

    .line 15
    invoke-virtual {v3, p4}, Lcom/google/android/gms/internal/ads/zzem;->zza(Landroid/media/AudioTrack;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 16
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    invoke-virtual {p4, v4, v3}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_8
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 17
    invoke-virtual {p4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 18
    iget v5, p4, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget v6, p4, Lcom/google/android/gms/internal/ads/zzee;->zzg:I

    iget v7, p4, Lcom/google/android/gms/internal/ads/zzee;->zzd:I

    const/4 v5, 0x0

    iget v8, p4, Lcom/google/android/gms/internal/ads/zzee;->zzh:I

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/AudioTrack;ZIII)V

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzH()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzL:Lcom/google/android/gms/internal/ads/zzh;

    .line 20
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzw:Z
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 45
    :cond_9
    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 48
    :try_start_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    if-eqz p2, :cond_a

    .line 46
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/Exception;)V

    .line 47
    :cond_a
    throw p1
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzi:Lcom/google/android/gms/internal/ads/zzei;

    .line 48
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzei;->zza(Ljava/lang/Exception;)V

    return v1

    .line 20
    :cond_b
    :goto_3
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzi:Lcom/google/android/gms/internal/ads/zzei;

    .line 21
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzei;->zzb()V

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzw:Z

    const-wide/16 v3, 0x0

    if-eqz p4, :cond_c

    .line 22
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzen;->zzx:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzw:Z

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(J)V

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    if-eqz p4, :cond_c

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzf()V

    :cond_c
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lcom/google/android/gms/internal/ads/zzea;->zze(J)Z

    move-result p4

    if-nez p4, :cond_d

    return v1

    :cond_d
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    if-nez p4, :cond_15

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v5, :cond_e

    const/4 p4, 0x1

    goto :goto_4

    :cond_e
    const/4 p4, 0x0

    :goto_4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p4

    if-nez p4, :cond_f

    return v0

    :cond_f
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 28
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz p4, :cond_11

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzG()Z

    move-result p4

    if-nez p4, :cond_10

    return v1

    .line 30
    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(J)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    :cond_11
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzen;->zzx:J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Lcom/google/android/gms/internal/ads/zzew;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzew;->zzq()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzee;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 32
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v9, p4

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    if-nez p4, :cond_12

    sub-long v7, v5, p2

    .line 33
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x30d40

    cmp-long p4, v7, v9

    if-lez p4, :cond_12

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdu;

    .line 34
    invoke-direct {v7, p2, p3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(JJ)V

    invoke-interface {p4, v7}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/Exception;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    :cond_12
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    if-eqz p4, :cond_14

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzG()Z

    move-result p4

    if-nez p4, :cond_13

    return v1

    :cond_13
    sub-long v5, p2, v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzen;->zzx:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzen;->zzx:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzv:Z

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(J)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    if-eqz p4, :cond_14

    cmp-long v7, v5, v3

    if-eqz v7, :cond_14

    check-cast p4, Lcom/google/android/gms/internal/ads/zzep;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 37
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzp()V

    :cond_14
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    .line 38
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzee;->zzc:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzs:J

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    int-to-long v5, p4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzs:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    .line 40
    :cond_15
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->zzE(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_16

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    return v0

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzea;->zzh(J)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "DefaultAudioSink"

    const-string p2, "Resetting stalled audio track"

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()V

    return v0

    :cond_17
    return v1
.end method

.method public final zzi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdv;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzG:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzQ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzG:Z

    :cond_0
    return-void
.end method

.method public final zzj()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzk()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final zzk()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzj(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzahf;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahf;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    const/high16 v2, 0x41000000    # 8.0f

    const v3, 0x3dcccccd    # 0.1f

    .line 2
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzz(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzahf;->zzc:F

    .line 3
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzz(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzahf;-><init>(FF)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzeg;->zzb:Z

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzI(Lcom/google/android/gms/internal/ads/zzahf;Z)V

    return-void
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzahf;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    return-object v0
.end method

.method public final zzn(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzI(Lcom/google/android/gms/internal/ads/zzahf;Z)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzo:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzo:Lcom/google/android/gms/internal/ads/zzg;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()V

    return-void
.end method

.method public final zzp(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzJ:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()V

    :cond_1
    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzL:Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzh;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzL:Lcom/google/android/gms/internal/ads/zzh;

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzL:Lcom/google/android/gms/internal/ads/zzh;

    return-void
.end method

.method public final zzr(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzy:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzH()V

    :cond_0
    return-void
.end method

.method public final zzs()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzea;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzM()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzs:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzu:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzO:Z

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v3

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzeg;->zzb:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    .line 3
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzahf;ZJJLcom/google/android/gms/internal/ads/zzeh;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzen;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzx:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzg:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzB:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzC:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzH:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzG:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzF:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Lcom/google/android/gms/internal/ads/zzew;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzew;->zzp()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzD()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzea;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzP(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzh:Lcom/google/android/gms/internal/ads/zzem;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzb(Landroid/media/AudioTrack;)V

    goto :goto_0

    .line 18
    :cond_1
    throw v0

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzn:Landroid/media/AudioTrack;

    .line 11
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzen;->zzJ:Z

    if-nez v3, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzK:I

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    if-eqz v2, :cond_4

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzm:Lcom/google/android/gms/internal/ads/zzee;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzl:Lcom/google/android/gms/internal/ads/zzee;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzf:Lcom/google/android/gms/internal/ads/zzea;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzea;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zze:Landroid/os/ConditionVariable;

    .line 13
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    .line 14
    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzj:Lcom/google/android/gms/internal/ads/zzei;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzi:Lcom/google/android/gms/internal/ads/zzei;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzb()V

    return-void
.end method

.method public final zzu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzc:[Lcom/google/android/gms/internal/ads/zzde;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzde;->zzh()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zzd:[Lcom/google/android/gms/internal/ads/zzde;

    .line 4
    array-length v1, v0

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    aget-object v3, v0, v1

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzde;->zzh()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzI:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzN:Z

    return-void
.end method
