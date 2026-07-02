.class final Lcom/google/android/gms/internal/ads/zzghl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzghz<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzghi;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:[I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Lcom/google/android/gms/internal/ads/zzggw;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzgio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzp:Lcom/google/android/gms/internal/ads/zzgfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzq:Lcom/google/android/gms/internal/ads/zzghn;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzghd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/ads/zzghl;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgiy;->zzt()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzghi;ZZ[IIILcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzggw;Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghd;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/zzghi;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/zzghn;",
            "Lcom/google/android/gms/internal/ads/zzggw;",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghd;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zze:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzf:I

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzgga;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzi:Z

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzj:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/ads/zzgfn;->zza(Lcom/google/android/gms/internal/ads/zzghi;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzq:Lcom/google/android/gms/internal/ads/zzghn;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzg:Lcom/google/android/gms/internal/ads/zzghi;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzr:Lcom/google/android/gms/internal/ads/zzghd;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    aget p4, p4, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result p4

    const v0, 0xfffff

    and-int/2addr p4, v0

    int-to-long v0, p4

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object p4

    if-nez p4, :cond_1

    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghc;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghb;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private static zzB(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzghz;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzghz;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzC(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzght;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzG(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzght;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzi:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzght;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzght;->zzq()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzD(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzE(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzF(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzG(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzH(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzI(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzK(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzL(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzO(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzE(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgex;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 15
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgex;

    if-eqz p2, :cond_c

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgex;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 19
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 20
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 21
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 22
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 23
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 24
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 25
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    .line 27
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzP(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzE(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzQ(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzE(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzR(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzE(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzS(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzghl;->zzU(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzT(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzf:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzU(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzU(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 2
    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final zzV(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzgfi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    const v5, 0xfffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0xfffff

    :goto_0
    if-ge v7, v3, :cond_4

    .line 2
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v11, v11, v7

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v15, v7, 0x2

    .line 4
    aget v13, v13, v15

    and-int v15, v13, v5

    if-eq v15, v9, :cond_0

    int-to-long v8, v15

    .line 5
    invoke-virtual {v4, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v9, v15

    :cond_0
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    and-int/2addr v10, v5

    int-to-long v5, v10

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 104
    :pswitch_0
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 105
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    .line 106
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto :goto_2

    .line 107
    :pswitch_1
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 108
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzq(IJ)V

    goto :goto_2

    .line 109
    :pswitch_2
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzp(II)V

    goto :goto_2

    .line 111
    :pswitch_3
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzd(IJ)V

    goto :goto_2

    .line 113
    :pswitch_4
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 114
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(II)V

    goto :goto_2

    .line 115
    :pswitch_5
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 116
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzg(II)V

    goto :goto_2

    .line 117
    :pswitch_6
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 118
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzo(II)V

    goto :goto_2

    .line 119
    :pswitch_7
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    goto :goto_2

    .line 121
    :pswitch_8
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 123
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_2

    .line 124
    :pswitch_9
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzX(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_2

    .line 126
    :pswitch_a
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 127
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzL(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzl(IZ)V

    goto/16 :goto_2

    .line 128
    :pswitch_b
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 129
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzk(II)V

    goto/16 :goto_2

    .line 130
    :pswitch_c
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 131
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(IJ)V

    goto/16 :goto_2

    .line 132
    :pswitch_d
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzi(II)V

    goto/16 :goto_2

    .line 134
    :pswitch_e
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzh(IJ)V

    goto/16 :goto_2

    .line 136
    :pswitch_f
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 137
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc(IJ)V

    goto/16 :goto_2

    .line 138
    :pswitch_10
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 139
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzI(Ljava/lang/Object;J)F

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zze(IF)V

    goto/16 :goto_2

    .line 140
    :pswitch_11
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzH(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzf(ID)V

    goto/16 :goto_2

    .line 142
    :pswitch_12
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v11, v5, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzW(Lcom/google/android/gms/internal/ads/zzgfi;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 99
    :pswitch_13
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 100
    aget v10, v10, v7

    .line 101
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 102
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    .line 103
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_2

    .line 96
    :pswitch_14
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 97
    aget v10, v10, v7

    .line 98
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 99
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 93
    :pswitch_15
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 94
    aget v10, v10, v7

    .line 95
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 96
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 90
    :pswitch_16
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 91
    aget v10, v10, v7

    .line 92
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 87
    :pswitch_17
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 88
    aget v10, v10, v7

    .line 89
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 90
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 84
    :pswitch_18
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 85
    aget v10, v10, v7

    .line 86
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 87
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 81
    :pswitch_19
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 82
    aget v10, v10, v7

    .line 83
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 84
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 78
    :pswitch_1a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 79
    aget v10, v10, v7

    .line 80
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 81
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 75
    :pswitch_1b
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 76
    aget v10, v10, v7

    .line 77
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 72
    :pswitch_1c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 73
    aget v10, v10, v7

    .line 74
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 75
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 69
    :pswitch_1d
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 70
    aget v10, v10, v7

    .line 71
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 72
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 66
    :pswitch_1e
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 67
    aget v10, v10, v7

    .line 68
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 69
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 63
    :pswitch_1f
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 64
    aget v10, v10, v7

    .line 65
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 66
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 60
    :pswitch_20
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 61
    aget v10, v10, v7

    .line 62
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 63
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 57
    :pswitch_21
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 58
    aget v10, v10, v7

    .line 59
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 60
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzgib;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 54
    :pswitch_22
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 55
    aget v10, v10, v7

    .line 56
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v11, 0x0

    .line 57
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v11, 0x0

    .line 51
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 52
    aget v10, v10, v7

    .line 53
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 54
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    :pswitch_24
    const/4 v11, 0x0

    .line 48
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 49
    aget v10, v10, v7

    .line 50
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    :pswitch_25
    const/4 v11, 0x0

    .line 45
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 46
    aget v10, v10, v7

    .line 47
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 48
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    :pswitch_26
    const/4 v11, 0x0

    .line 42
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 43
    aget v10, v10, v7

    .line 44
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 45
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v11, 0x0

    .line 39
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 40
    aget v10, v10, v7

    .line 41
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 42
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/ads/zzgib;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_2

    .line 36
    :pswitch_28
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 37
    aget v10, v10, v7

    .line 38
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 39
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_2

    .line 32
    :pswitch_29
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 33
    aget v10, v10, v7

    .line 34
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 35
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    .line 36
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_2

    .line 29
    :pswitch_2a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 30
    aget v10, v10, v7

    .line 31
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 32
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_2

    .line 26
    :pswitch_2b
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 27
    aget v10, v10, v7

    .line 28
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 29
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v12, 0x0

    .line 23
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 24
    aget v10, v10, v7

    .line 25
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 26
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v12, 0x0

    .line 20
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 21
    aget v10, v10, v7

    .line 22
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 23
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v12, 0x0

    .line 17
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 18
    aget v10, v10, v7

    .line 19
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 20
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v12, 0x0

    .line 14
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 15
    aget v10, v10, v7

    .line 16
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 17
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v12, 0x0

    .line 11
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 12
    aget v10, v10, v7

    .line 13
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 14
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v12, 0x0

    .line 8
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 9
    aget v10, v10, v7

    .line 10
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 11
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v12, 0x0

    .line 5
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 6
    aget v10, v10, v7

    .line 7
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 8
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/ads/zzgib;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 143
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    .line 144
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_3

    :pswitch_34
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 145
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzq(IJ)V

    goto/16 :goto_3

    :pswitch_35
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 146
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzp(II)V

    goto/16 :goto_3

    :pswitch_36
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 147
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzd(IJ)V

    goto/16 :goto_3

    :pswitch_37
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 148
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(II)V

    goto/16 :goto_3

    :pswitch_38
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 149
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzg(II)V

    goto/16 :goto_3

    :pswitch_39
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 150
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzo(II)V

    goto/16 :goto_3

    :pswitch_3a
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 151
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    goto/16 :goto_3

    :pswitch_3b
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 152
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 153
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_3

    :pswitch_3c
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 154
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzX(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_3

    :pswitch_3d
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 155
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v5

    .line 156
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzl(IZ)V

    goto :goto_3

    :pswitch_3e
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 157
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzk(II)V

    goto :goto_3

    :pswitch_3f
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 158
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(IJ)V

    goto :goto_3

    :pswitch_40
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 159
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzi(II)V

    goto :goto_3

    :pswitch_41
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 160
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzh(IJ)V

    goto :goto_3

    :pswitch_42
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 161
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc(IJ)V

    goto :goto_3

    :pswitch_43
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 162
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v5

    .line 163
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zze(IF)V

    goto :goto_3

    :pswitch_44
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 164
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 165
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzf(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x3

    const v5, 0xfffff

    goto/16 :goto_0

    .line 168
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 166
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgio;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    return-void

    .line 165
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 167
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 v1, 0x0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzW(Lcom/google/android/gms/internal/ads/zzgfi;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzgfi;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghb;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method private static final zzX(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    return-void
.end method

.method static zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zza()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zzb()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzghf;Lcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzggw;Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghd;)Lcom/google/android/gms/internal/ads/zzghl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzghf;",
            "Lcom/google/android/gms/internal/ads/zzghn;",
            "Lcom/google/android/gms/internal/ads/zzggw;",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzghl<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzghs;

    if-eqz p0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzghs;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzm(Lcom/google/android/gms/internal/ads/zzghs;Lcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzggw;Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghd;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgil;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method static zzm(Lcom/google/android/gms/internal/ads/zzghs;Lcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzggw;Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghd;)Lcom/google/android/gms/internal/ads/zzghl;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzghs;",
            "Lcom/google/android/gms/internal/ads/zzghn;",
            "Lcom/google/android/gms/internal/ads/zzggw;",
            "Lcom/google/android/gms/internal/ads/zzgio<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzgfn<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzghd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzghl<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzghs;->zzc()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzghs;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzghl;->zza:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 10
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 23
    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v33, v12

    move v12, v9

    move/from16 v9, v33

    .line 6
    :goto_b
    sget-object v15, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzghs;->zze()[Ljava/lang/Object;

    move-result-object v17

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzghs;->zzb()Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v7, v11, 0x3

    .line 26
    new-array v7, v7, [I

    add-int/2addr v11, v11

    .line 27
    new-array v11, v11, [Ljava/lang/Object;

    add-int v21, v14, v9

    move/from16 v22, v14

    move/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v4, v3, :cond_32

    add-int/lit8 v24, v4, 0x1

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    move/from16 v2, v24

    :goto_e
    add-int/lit8 v24, v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v27, v5, 0x1

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v5, v3, :cond_18

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v2, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v3, v28

    goto :goto_f

    :cond_18
    shl-int v3, v5, v24

    or-int/2addr v2, v3

    move/from16 v3, v27

    goto :goto_10

    :cond_19
    move/from16 v28, v3

    move/from16 v3, v24

    :goto_10
    and-int/lit16 v5, v2, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v20, 0x1

    .line 32
    aput v9, v13, v20

    move/from16 v20, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v3, 0x1

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v3, v14, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_11
    add-int/lit8 v31, v14, 0x1

    .line 34
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_1b

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v27

    or-int/2addr v3, v12

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v12, v32

    goto :goto_11

    :cond_1b
    shl-int v12, v14, v27

    or-int/2addr v3, v12

    move/from16 v14, v31

    goto :goto_12

    :cond_1c
    move/from16 v32, v12

    move/from16 v14, v27

    :goto_12
    add-int/lit8 v12, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v12, v14, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v14, 0xc

    if-ne v12, v14, :cond_1f

    if-nez v10, :cond_1f

    .line 41
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 36
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_14

    .line 34
    :cond_1e
    :goto_13
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 35
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_14
    move/from16 v16, v14

    :cond_1f
    add-int/2addr v3, v3

    .line 37
    aget-object v12, v17, v3

    .line 38
    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    .line 39
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 40
    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 41
    aput-object v12, v17, v3

    :goto_15
    move-object/from16 v31, v7

    move v14, v8

    .line 42
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    add-int/lit8 v3, v3, 0x1

    .line 43
    aget-object v7, v17, v3

    .line 44
    instance-of v12, v7, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    .line 45
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 46
    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 47
    aput-object v7, v17, v3

    :goto_16
    move v3, v8

    .line 48
    invoke-virtual {v15, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    move-object/from16 v30, v0

    move-object v7, v1

    move v1, v8

    move-object/from16 v29, v11

    const/16 v25, 0x1

    move v8, v3

    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_22
    move-object/from16 v31, v7

    move v14, v8

    move/from16 v32, v12

    add-int/lit8 v7, v16, 0x1

    .line 49
    aget-object v8, v17, v16

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x11

    if-ne v5, v12, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_29

    const/16 v12, 0x31

    if-ne v5, v12, :cond_24

    goto :goto_18

    :cond_24
    const/16 v12, 0xc

    if-eq v5, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_25

    goto :goto_17

    :cond_25
    const/16 v12, 0x32

    if-ne v5, v12, :cond_26

    add-int/lit8 v12, v22, 0x1

    .line 53
    aput v9, v13, v22

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v27, v7, 0x1

    .line 54
    aget-object v7, v17, v7

    aput-object v7, v11, v22

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_27

    add-int/lit8 v7, v27, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 55
    aget-object v27, v17, v27

    aput-object v27, v11, v22

    move/from16 v22, v12

    :cond_26
    const/16 v25, 0x1

    goto :goto_1b

    :cond_27
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_1c

    :cond_28
    :goto_17
    if-nez v10, :cond_26

    .line 51
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 52
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    goto :goto_19

    :cond_29
    :goto_18
    const/16 v25, 0x1

    .line 63
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 51
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    :goto_19
    move/from16 v12, v27

    goto :goto_1c

    :cond_2a
    :goto_1a
    const/16 v25, 0x1

    .line 49
    div-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 50
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_1b
    move v12, v7

    .line 56
    :goto_1c
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    and-int/lit16 v7, v2, 0x1000

    const v27, 0xfffff

    move-object/from16 v29, v11

    const/16 v11, 0x1000

    if-ne v7, v11, :cond_2e

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2e

    add-int/lit8 v7, v3, 0x1

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v11, 0xd800

    if-lt v3, v11, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v26, 0xd

    :goto_1d
    add-int/lit8 v27, v7, 0x1

    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_2b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v26

    or-int/2addr v3, v7

    add-int/lit8 v26, v26, 0xd

    move/from16 v7, v27

    goto :goto_1d

    :cond_2b
    shl-int v7, v7, v26

    or-int/2addr v3, v7

    goto :goto_1e

    :cond_2c
    move/from16 v27, v7

    :goto_1e
    add-int v7, v6, v6

    div-int/lit8 v26, v3, 0x20

    add-int v7, v7, v26

    .line 59
    aget-object v11, v17, v7

    move-object/from16 v30, v0

    .line 60
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    .line 61
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 62
    :cond_2d
    check-cast v11, Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzghl;->zzo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 63
    aput-object v11, v17, v7

    :goto_1f
    move-object v7, v1

    .line 64
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v3, v3, 0x20

    goto :goto_20

    :cond_2e
    move-object/from16 v30, v0

    move-object v7, v1

    move/from16 v27, v3

    const v1, 0xfffff

    const/4 v3, 0x0

    :goto_20
    const/16 v0, 0x12

    if-lt v5, v0, :cond_2f

    const/16 v0, 0x31

    if-gt v5, v0, :cond_2f

    add-int/lit8 v0, v23, 0x1

    .line 65
    aput v8, v13, v23

    move/from16 v23, v0

    :cond_2f
    move/from16 v16, v12

    :goto_21
    add-int/lit8 v0, v9, 0x1

    .line 66
    aput v4, v31, v9

    add-int/lit8 v4, v0, 0x1

    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_30

    const/high16 v9, 0x20000000

    goto :goto_22

    :cond_30
    const/4 v9, 0x0

    :goto_22
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_23

    :cond_31
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v2, v9

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v2, v5

    or-int/2addr v2, v8

    .line 67
    aput v2, v31, v0

    add-int/lit8 v9, v4, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 68
    aput v0, v31, v4

    move-object v1, v7

    move v8, v14

    move/from16 v14, v24

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v11, v29

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    move/from16 v12, v32

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move/from16 v32, v12

    move/from16 v24, v14

    move v14, v8

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghl;

    move-object v4, v0

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzghs;->zzb()Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v1, v29

    const/16 v20, 0x0

    move-object/from16 v5, v31

    move-object v6, v1

    move v7, v14

    move/from16 v8, v32

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/ads/zzghl;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzghi;ZZ[IIILcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzggw;Lcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzghd;[B)V

    return-object v0
.end method

.method private static zzo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 5
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final zzq(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method private final zzr(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v8, v8, v3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v9

    const/16 v10, 0x11

    const/4 v11, 0x1

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v12, v3, 0x2

    .line 4
    aget v10, v10, v12

    and-int v12, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    if-eq v12, v6, :cond_1

    int-to-long v5, v12

    .line 5
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v12

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_1
    and-int/2addr v7, v1

    int-to-long v12, v7

    const/16 v7, 0x3f

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_b

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzghi;

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    .line 9
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgfh;->zzF(ILcom/google/android/gms/internal/ads/zzghi;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto/16 :goto_3

    .line 10
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 11
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v7

    goto/16 :goto_6

    .line 12
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_6

    .line 14
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 15
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_a

    .line 16
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_9

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v7

    goto/16 :goto_6

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_6

    .line 22
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 23
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v8, v8, 0x3

    .line 24
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_4

    .line 26
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 27
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 28
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgib;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto/16 :goto_3

    .line 29
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 31
    instance-of v9, v7, Lcom/google/android/gms/internal/ads/zzgex;

    if-eqz v9, :cond_2

    .line 32
    check-cast v7, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_4

    .line 34
    :cond_2
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 35
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzz(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_6

    .line 36
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_5

    .line 38
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 39
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_9

    .line 40
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 41
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_a

    .line 42
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 43
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v7

    goto/16 :goto_6

    .line 44
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 45
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v8

    goto/16 :goto_8

    .line 46
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 47
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v8

    goto/16 :goto_8

    .line 48
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 49
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_9

    .line 50
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 51
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_a

    .line 52
    :pswitch_12
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object v9

    .line 53
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzghd;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_b

    .line 54
    :pswitch_13
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 55
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    .line 56
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgib;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto/16 :goto_3

    .line 57
    :pswitch_14
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 58
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzf(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 59
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 60
    :pswitch_15
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 61
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzn(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 62
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 63
    :pswitch_16
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 65
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 66
    :pswitch_17
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 67
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 68
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 69
    :pswitch_18
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 70
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzh(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 71
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 72
    :pswitch_19
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 73
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzl(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 74
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 75
    :pswitch_1a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 76
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzt(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 77
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 78
    :pswitch_1b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 79
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 80
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto/16 :goto_2

    .line 81
    :pswitch_1c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 82
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 83
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_2

    .line 84
    :pswitch_1d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 85
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzj(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 86
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_2

    .line 87
    :pswitch_1e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 88
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzd(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 89
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_2

    .line 90
    :pswitch_1f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 91
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzb(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 92
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_2

    .line 93
    :pswitch_20
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 94
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 95
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_2

    .line 96
    :pswitch_21
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 97
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 98
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    :goto_2
    add-int/2addr v8, v9

    goto/16 :goto_6

    .line 99
    :pswitch_22
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 100
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzg(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 101
    :pswitch_23
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 102
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzo(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 103
    :pswitch_24
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 104
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 105
    :pswitch_25
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 106
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 107
    :pswitch_26
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 108
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzi(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 109
    :pswitch_27
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 110
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzm(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 111
    :pswitch_28
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzy(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 113
    :pswitch_29
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    .line 114
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgib;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto :goto_3

    .line 115
    :pswitch_2a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzgib;->zzv(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 116
    :pswitch_2b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 117
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzu(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 118
    :pswitch_2c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 119
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 120
    :pswitch_2d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 121
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 122
    :pswitch_2e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 123
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzk(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 124
    :pswitch_2f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 125
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zze(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 126
    :pswitch_30
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 127
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzc(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 128
    :pswitch_31
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 129
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 130
    :pswitch_32
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 131
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v7

    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_b

    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzghi;

    .line 133
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    .line 134
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgfh;->zzF(ILcom/google/android/gms/internal/ads/zzghi;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto :goto_3

    :pswitch_34
    and-int v9, v5, v10

    if-eqz v9, :cond_4

    .line 135
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v7

    goto/16 :goto_6

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 136
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 137
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_a

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 138
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_9

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 139
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v8, v8, 0x3

    .line 142
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    :goto_4
    add-int/2addr v9, v7

    add-int/2addr v8, v9

    goto/16 :goto_7

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 145
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzgib;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 146
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 147
    instance-of v9, v7, Lcom/google/android/gms/internal/ads/zzgex;

    if-eqz v9, :cond_3

    .line 148
    check-cast v7, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 149
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v9

    goto :goto_4

    .line 150
    :cond_3
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    .line 151
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzz(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 152
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    :goto_5
    add-int/2addr v7, v11

    goto/16 :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 153
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto :goto_9

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 154
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    goto :goto_a

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 155
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v7

    :goto_6
    add-int/2addr v8, v7

    :goto_7
    add-int/2addr v4, v8

    goto :goto_b

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v8

    goto :goto_8

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 157
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v8

    :goto_8
    add-int/2addr v7, v8

    goto/16 :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 158
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    :goto_9
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_3

    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 159
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v7

    :goto_a
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3

    :cond_4
    :goto_b
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 160
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgio;->zzq(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v0, :cond_6

    return v4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 162
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzs(Ljava/lang/Object;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfs;->zzJ:Lcom/google/android/gms/internal/ads/zzgfs;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgfs;->zza()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfs;->zzW:Lcom/google/android/gms/internal/ads/zzgfs;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgfs;->zza()I

    move-result v4

    if-gt v5, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v9, v2, 0x2

    .line 6
    aget v4, v4, v9

    :cond_0
    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    .line 45
    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzghi;

    .line 47
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 48
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzF(ILcom/google/android/gms/internal/ads/zzghi;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto/16 :goto_2

    .line 49
    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    goto/16 :goto_5

    .line 51
    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_5

    .line 53
    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 54
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_9

    .line 55
    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 56
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_8

    .line 57
    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v4

    goto/16 :goto_5

    .line 59
    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_5

    .line 61
    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v5, v6, 0x3

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_3

    .line 65
    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 67
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto/16 :goto_2

    .line 68
    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 70
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgex;

    if-eqz v5, :cond_1

    .line 71
    check-cast v4, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_3

    .line 73
    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 74
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzz(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    .line 75
    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 76
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_4

    .line 77
    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_8

    .line 79
    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 80
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_9

    .line 81
    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v4

    goto/16 :goto_5

    .line 83
    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    goto/16 :goto_7

    .line 85
    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    goto/16 :goto_7

    .line 87
    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 88
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_8

    .line 89
    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 90
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_9

    .line 91
    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object v5

    .line 92
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzghd;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 42
    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 43
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 44
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto/16 :goto_2

    .line 93
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 94
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 95
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 96
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 97
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzn(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 98
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 99
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 100
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 101
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 102
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 103
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 104
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 105
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 107
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 108
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 109
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzl(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 110
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 111
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 112
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 113
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 114
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 115
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 116
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto/16 :goto_1

    .line 117
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 118
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 119
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_1

    .line 120
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 121
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 122
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_1

    .line 123
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 124
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 125
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_1

    .line 126
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 127
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 128
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_1

    .line 129
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 130
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzp(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 131
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_1

    .line 132
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    goto/16 :goto_5

    .line 40
    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 41
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 38
    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 39
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 36
    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 37
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 34
    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 35
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 32
    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 33
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 30
    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 31
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzm(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 28
    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 29
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzy(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    .line 25
    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 26
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 27
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto :goto_2

    .line 23
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 24
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzv(ILjava/util/List;)I

    move-result v4

    goto :goto_2

    .line 21
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 22
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 19
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 20
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 17
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 18
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 15
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 16
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzk(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 13
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 14
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 11
    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 9
    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 10
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 7
    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 8
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzs(ILjava/util/List;Z)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_a

    .line 135
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzghi;

    .line 137
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 138
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzF(ILcom/google/android/gms/internal/ads/zzghi;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto :goto_2

    .line 139
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    goto/16 :goto_5

    .line 141
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_5

    .line 143
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 144
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_9

    .line 145
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 146
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_8

    .line 147
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v4

    goto/16 :goto_5

    .line 149
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto/16 :goto_5

    .line 151
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v5, v6, 0x3

    .line 153
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 154
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    :goto_3
    add-int/2addr v6, v4

    add-int/2addr v5, v6

    goto/16 :goto_6

    .line 155
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 157
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)I

    move-result v4

    goto/16 :goto_2

    .line 158
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 160
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgex;

    if-eqz v5, :cond_2

    .line 161
    check-cast v4, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 162
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    goto :goto_3

    .line 163
    :cond_2
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    .line 164
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzz(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 165
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 166
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 167
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 168
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto :goto_8

    .line 169
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 170
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    goto :goto_9

    .line 171
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzw(I)I

    move-result v4

    :goto_5
    add-int/2addr v5, v4

    :goto_6
    add-int/2addr v3, v5

    goto :goto_a

    .line 173
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    goto :goto_7

    .line 175
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v4

    :goto_7
    add-int/2addr v6, v4

    add-int/2addr v3, v6

    goto :goto_a

    .line 177
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 178
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    :goto_8
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    .line 179
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 180
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    :goto_9
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_a
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzq(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzt(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzgej;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 1
    sget-object v11, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzggj;

    .line 2
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v12, v12

    .line 4
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/zzggj;->zze(I)Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_48

    .line 6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzgek;->zzj(Lcom/google/android/gms/internal/ads/zzghz;[BIIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 8
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 12
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 13
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 14
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 15
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_28

    .line 16
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_48

    .line 17
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 18
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 19
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    :goto_2
    if-ge v1, v5, :cond_6

    .line 20
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v8

    .line 22
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v1

    :pswitch_1
    if-ne v6, v14, :cond_9

    .line 23
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggb;

    .line 24
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_7

    .line 25
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_28

    .line 27
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_48

    .line 28
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggb;

    .line 29
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    :goto_5
    if-ge v1, v5, :cond_b

    .line 31
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_a

    goto :goto_6

    .line 32
    :cond_a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v4

    .line 33
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v1

    :pswitch_2
    if-ne v6, v14, :cond_c

    .line 34
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzl([BILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_48

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzk(I[BIILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    .line 36
    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->zza()Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v4

    if-ne v3, v4, :cond_d

    const/4 v3, 0x0

    .line 37
    :cond_d
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    move/from16 v6, p6

    .line 38
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgge;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_11

    :cond_e
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgip;

    .line 39
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzgga;->zzc:Lcom/google/android/gms/internal/ads/zzgip;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_48

    .line 40
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v4, :cond_16

    .line 42
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    if-nez v4, :cond_f

    .line 44
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 45
    :cond_f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_14

    .line 46
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_10

    goto :goto_a

    .line 47
    :cond_10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v4, :cond_13

    .line 48
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_12

    if-nez v4, :cond_11

    .line 52
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    .line 49
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 50
    :cond_11
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 52
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 51
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_14
    :goto_a
    return v1

    .line 43
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 41
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :pswitch_4
    if-eq v6, v14, :cond_17

    goto/16 :goto_27

    .line 53
    :cond_17
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 54
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/ads/zzgek;->zzm(Lcom/google/android/gms/internal/ads/zzghz;I[BIILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_48

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v12

    if-nez v6, :cond_1c

    .line 70
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_18

    .line 72
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 79
    :cond_18
    new-instance v8, Ljava/lang/String;

    .line 73
    sget-object v9, Lcom/google/android/gms/internal/ads/zzggk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 74
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v4, v6

    :goto_c
    if-ge v4, v5, :cond_48

    .line 75
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ne v2, v8, :cond_48

    .line 76
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v6, :cond_1a

    if-nez v6, :cond_19

    .line 77
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    new-instance v8, Ljava/lang/String;

    .line 78
    sget-object v9, Lcom/google/android/gms/internal/ads/zzggk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 79
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 80
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 71
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 55
    :cond_1c
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v6, :cond_22

    if-nez v6, :cond_1d

    .line 57
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    add-int v8, v4, v6

    .line 58
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb([BII)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 59
    new-instance v9, Ljava/lang/String;

    .line 60
    sget-object v10, Lcom/google/android/gms/internal/ads/zzggk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 61
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    move v4, v8

    :goto_e
    if-ge v4, v5, :cond_48

    .line 62
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ne v2, v8, :cond_48

    .line 63
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-ltz v6, :cond_20

    if-nez v6, :cond_1e

    .line 64
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    add-int v8, v4, v6

    .line 65
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb([BII)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 69
    new-instance v9, Ljava/lang/String;

    .line 66
    sget-object v10, Lcom/google/android/gms/internal/ads/zzggk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 69
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzl()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 68
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 59
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzl()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 56
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zze()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_26

    .line 81
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgel;

    .line 82
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v4, v2

    :goto_f
    if-ge v2, v4, :cond_24

    .line 83
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    cmp-long v8, v5, v12

    if-eqz v8, :cond_23

    const/4 v5, 0x1

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    .line 84
    :goto_10
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzgel;->zzd(Z)V

    goto :goto_f

    :cond_24
    if-ne v2, v4, :cond_25

    :goto_11
    move v1, v2

    goto/16 :goto_28

    .line 85
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_26
    if-nez v6, :cond_48

    .line 86
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgel;

    .line 87
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_12

    :cond_27
    const/4 v6, 0x0

    .line 88
    :goto_12
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzgel;->zzd(Z)V

    :goto_13
    if-ge v4, v5, :cond_2a

    .line 89
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v8, :cond_28

    goto :goto_15

    .line 90
    :cond_28
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_14

    :cond_29
    const/4 v6, 0x0

    .line 91
    :goto_14
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzgel;->zzd(Z)V

    goto :goto_13

    :cond_2a
    :goto_15
    return v4

    :pswitch_7
    if-ne v6, v14, :cond_2d

    .line 92
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggb;

    .line 93
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_2b

    .line 94
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_16

    :cond_2b
    if-ne v1, v2, :cond_2c

    goto/16 :goto_28

    .line 95
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_2d
    if-ne v6, v9, :cond_48

    .line 96
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggb;

    .line 97
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    :goto_17
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2f

    .line 98
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_2e

    goto :goto_18

    .line 99
    :cond_2e
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(I)V

    goto :goto_17

    :cond_2f
    :goto_18
    return v1

    :pswitch_8
    if-ne v6, v14, :cond_32

    .line 100
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 101
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_30

    .line 102
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_19

    :cond_30
    if-ne v1, v2, :cond_31

    goto/16 :goto_28

    .line 103
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_32
    if-ne v6, v10, :cond_48

    .line 104
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 105
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    :goto_1a
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_34

    .line 106
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_33

    goto :goto_1b

    .line 107
    :cond_33
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    goto :goto_1a

    :cond_34
    :goto_1b
    return v1

    :pswitch_9
    if-ne v6, v14, :cond_35

    .line 108
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzl([BILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    goto/16 :goto_28

    :cond_35
    if-eqz v6, :cond_36

    goto/16 :goto_27

    :cond_36
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 109
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/ads/zzgek;->zzk(I[BIILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_39

    .line 110
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 111
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_37

    .line 112
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 113
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    goto :goto_1c

    :cond_37
    if-ne v1, v2, :cond_38

    goto/16 :goto_28

    .line 114
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_39
    if-nez v6, :cond_48

    .line 115
    check-cast v11, Lcom/google/android/gms/internal/ads/zzggx;

    .line 116
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 117
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    :goto_1d
    if-ge v1, v5, :cond_3b

    .line 118
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_3a

    goto :goto_1e

    .line 119
    :cond_3a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 120
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzggx;->zzg(J)V

    goto :goto_1d

    :cond_3b
    :goto_1e
    return v1

    :pswitch_b
    if-ne v6, v14, :cond_3e

    .line 121
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgft;

    .line 122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_3c

    .line 123
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 124
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzgft;->zzd(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1f

    :cond_3c
    if-ne v1, v2, :cond_3d

    goto/16 :goto_28

    .line 125
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_3e
    if-ne v6, v9, :cond_48

    .line 126
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgft;

    .line 127
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 128
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzgft;->zzd(F)V

    :goto_20
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_40

    .line 129
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_3f

    goto :goto_21

    .line 130
    :cond_3f
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 131
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzgft;->zzd(F)V

    goto :goto_20

    :cond_40
    :goto_21
    return v1

    :pswitch_c
    if-ne v6, v14, :cond_43

    .line 132
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgfj;

    .line 133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    add-int/2addr v2, v1

    :goto_22
    if-ge v1, v2, :cond_41

    .line 134
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 135
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzgfj;->zzd(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_22

    :cond_41
    if-ne v1, v2, :cond_42

    goto :goto_28

    .line 136
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzd()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    :cond_43
    if-ne v6, v10, :cond_48

    .line 137
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgfj;

    .line 138
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 139
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzgfj;->zzd(D)V

    :goto_23
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_45

    .line 140
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v6, :cond_44

    goto :goto_24

    .line 141
    :cond_44
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 142
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzgfj;->zzd(D)V

    goto :goto_23

    :cond_45
    :goto_24
    return v1

    :goto_25
    if-ge v4, v5, :cond_47

    .line 9
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-eq v2, v9, :cond_46

    goto :goto_26

    :cond_46
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 10
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzgek;->zzj(Lcom/google/android/gms/internal/ads/zzghz;[BIIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 11
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_47
    :goto_26
    return v4

    :cond_48
    :goto_27
    move v1, v4

    :goto_28
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzu(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzgej;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzghd;->zzb(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghc;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzghc;->zzc()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object p5

    .line 5
    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzghd;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    :goto_0
    check-cast p3, Lcom/google/android/gms/internal/ads/zzghb;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private final zzv(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzgej;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 1
    sget-object v12, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    .line 2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgek;->zzj(Lcom/google/android/gms/internal/ads/zzghz;[BIIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 7
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v5, :cond_2

    goto/16 :goto_9

    .line 10
    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-eqz v5, :cond_3

    goto/16 :goto_9

    .line 13
    :cond_3
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_13

    .line 16
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 17
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 18
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzgge;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgip;->zzh(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-eq v5, v15, :cond_6

    goto/16 :goto_9

    .line 22
    :cond_6
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzh([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 23
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_13

    .line 25
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v2

    move/from16 v5, p4

    .line 26
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzi(Lcom/google/android/gms/internal/ads/zzghz;[BIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    .line 27
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 28
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_8

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 29
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 32
    :cond_8
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 30
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_13

    .line 33
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    if-nez v4, :cond_9

    const-string v3, ""

    .line 34
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_b

    add-int v5, v2, v4

    .line 35
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb([BII)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    .line 39
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzl()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v1

    throw v1

    .line 35
    :cond_b
    :goto_6
    new-instance v5, Ljava/lang/String;

    .line 36
    sget-object v6, Lcom/google/android/gms/internal/ads/zzggk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 38
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_13

    .line 40
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 41
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-eq v5, v7, :cond_d

    goto/16 :goto_9

    .line 43
    :cond_d
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-eq v5, v2, :cond_e

    goto :goto_9

    .line 45
    :cond_e
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_f

    goto :goto_9

    .line 47
    :cond_f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-eqz v5, :cond_10

    goto :goto_9

    .line 50
    :cond_10
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_11

    goto :goto_9

    .line 53
    :cond_11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_d
    const/4 v2, 0x1

    if-eq v5, v2, :cond_12

    goto :goto_9

    .line 56
    :cond_12
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_13
    :goto_9
    move v2, v4

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzw(I)Lcom/google/android/gms/internal/ads/zzghz;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzghz;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghq;->zza()Lcom/google/android/gms/internal/ads/zzghq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzx(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzy(I)Lcom/google/android/gms/internal/ads/zzgge;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgge;

    return-object p1
.end method

.method private final zzz(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1
    sget-object v9, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzb(I[BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 3
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzT(II)I

    move-result v0

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzS(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_12

    .line 51
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    .line 5
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v0

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_d

    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v21, v2, 0x2

    .line 6
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_5

    move/from16 v23, v1

    move/from16 v20, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 7
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 8
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_4

    :cond_5
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    :goto_4
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    goto/16 :goto_b

    :pswitch_0
    if-nez v3, :cond_6

    .line 9
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_9

    :cond_6
    move/from16 v13, v20

    move/from16 v20, p3

    goto :goto_5

    :pswitch_1
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 12
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v1

    .line 14
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 15
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 16
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_9

    .line 17
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzh([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 18
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_8

    .line 19
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    .line 20
    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzi(Lcom/google/android/gms/internal/ads/zzghz;[BIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    .line 21
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 22
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 23
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_8
    move/from16 v2, p4

    :cond_9
    :goto_5
    const v19, 0xfffff

    goto/16 :goto_b

    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v20

    const/4 v0, 0x2

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v0, :cond_c

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_a

    .line 25
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzf([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    goto :goto_6

    .line 26
    :cond_a
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzg([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    .line 25
    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 28
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    .line 29
    :goto_7
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzgiy;->zzi(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 30
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_8
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 31
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_a

    :pswitch_9
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 32
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 33
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 34
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 35
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_e

    :pswitch_b
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 36
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 37
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzk(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 38
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 39
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzm(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int v6, v6, v21

    goto :goto_d

    :cond_c
    :goto_b
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_12

    :cond_d
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v3, v1, :cond_10

    .line 40
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzggj;

    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_c

    :cond_e
    add-int/2addr v1, v1

    .line 43
    :goto_c
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzggj;->zze(I)Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    .line 44
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v5, v0

    .line 45
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgek;->zzm(Lcom/google/android/gms/internal/ads/zzghz;I[BIILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    move v6, v8

    :goto_d
    move-object v9, v10

    move v2, v13

    :goto_e
    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_10
    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_11
    const/16 v1, 0x31

    if-gt v0, v1, :cond_13

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v19, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 47
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzghl;->zzt(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    if-eq v0, v15, :cond_12

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_13

    :cond_12
    move v2, v0

    goto :goto_11

    :cond_13
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_15

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_14

    :goto_10
    move v2, v15

    :goto_11
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_12

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 48
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzu(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzgej;)I

    const/4 v0, 0x0

    throw v0

    :cond_15
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move-wide/from16 v10, v26

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 49
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzv(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    if-eq v0, v15, :cond_12

    goto :goto_f

    .line 50
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgek;->zzn(I[BIILcom/google/android/gms/internal/ads/zzgip;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    :goto_13
    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_16
    move/from16 v24, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_17

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    .line 52
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_17
    move/from16 v1, p4

    if-ne v0, v1, :cond_18

    return v0

    .line 53
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzg:Lcom/google/android/gms/internal/ads/zzghi;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzE(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v7

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 6
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzD(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 44
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 48
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 51
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 55
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 57
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzL(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzggk;->zzf(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzI(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzH(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzggk;->zzf(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zze(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v5, v5, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzq(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v5, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzq(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v5, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzr:Lcom/google/android/gms/internal/ads/zzghd;

    .line 12
    invoke-static {v2, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgib;->zzI(Lcom/google/android/gms/internal/ads/zzghd;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    .line 13
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzggw;->zzc(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 15
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 17
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_8
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_9
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_a
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 26
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_c
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_d
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_f
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_10
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzi(Ljava/lang/Object;JZ)V

    .line 42
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_11
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 45
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 48
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_13
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_14
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 54
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_15
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_16
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzk(Ljava/lang/Object;JF)V

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_17
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzm(Ljava/lang/Object;JD)V

    .line 63
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 64
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzF(Lcom/google/android/gms/internal/ads/zzgio;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 65
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzE(Lcom/google/android/gms/internal/ads/zzgfn;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_3
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzj:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzs(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzr(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzgfm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzght;",
            "Lcom/google/android/gms/internal/ads/zzgfm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_19

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    move-object v3, v0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzb()I

    move-result v4

    .line 3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzghl;->zzS(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_7

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 219
    aget p3, p3, p2

    .line 220
    invoke-direct {p0, p1, p3, v3, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_16

    .line 221
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v5, :cond_3

    move-object v4, v0

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzg:Lcom/google/android/gms/internal/ads/zzghi;

    .line 4
    invoke-virtual {v2, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgfn;->zzf(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzghi;I)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7
    :cond_4
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zza(Lcom/google/android/gms/internal/ads/zzght;)Z

    if-nez v3, :cond_5

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    :cond_5
    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge p2, p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 219
    aget p3, p3, p2

    .line 220
    invoke-direct {p0, p1, p3, v3, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_16

    .line 221
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    goto/16 :goto_b

    .line 10
    :cond_7
    :try_start_3
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v7

    const v8, 0xfffff

    packed-switch v7, :pswitch_data_0

    if-nez v3, :cond_12

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgio;->zzg()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_0
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 87
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v8

    invoke-interface {p2, v8, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzp(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v8

    .line 88
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 84
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzw()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 85
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 86
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 81
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzv()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 82
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 83
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 78
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzu()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 79
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 80
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 75
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 76
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 90
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzs()I

    move-result v7

    .line 91
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 92
    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/ads/zzgge;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    .line 95
    :cond_8
    invoke-static {v4, v7, v3, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzH(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    :goto_4
    and-int/2addr v6, v8

    int-to-long v8, v6

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 72
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzr()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 73
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 70
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzq()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 96
    :pswitch_8
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_a

    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 101
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 102
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v9

    .line 103
    invoke-interface {p2, v9, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzo(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v9

    .line 104
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 105
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_a
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 97
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v8

    .line 98
    invoke-interface {p2, v8, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzo(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v8

    .line 99
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 100
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    .line 106
    :goto_5
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 107
    :pswitch_9
    invoke-direct {p0, p1, v6, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzC(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzght;)V

    .line 108
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 67
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzl()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 68
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 69
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 64
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzk()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 65
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 61
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzj()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 62
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 58
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 59
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 60
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 55
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzg()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 56
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 52
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzh()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 53
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 49
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzf()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 50
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v6, v8

    int-to-long v6, v6

    .line 46
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zze()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 47
    invoke-static {p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzR(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 109
    :pswitch_12
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object v4

    .line 110
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v5

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 111
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 112
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzghd;->zzb(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghc;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzghc;->zzc()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v8

    .line 114
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzghd;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p1, v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    goto :goto_6

    .line 116
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghc;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzghc;->zzc()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v7

    .line 117
    invoke-static {p1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 118
    :cond_c
    :goto_6
    check-cast v7, Lcom/google/android/gms/internal/ads/zzghc;

    .line 119
    check-cast v4, Lcom/google/android/gms/internal/ads/zzghb;

    .line 120
    throw v0

    :pswitch_13
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 43
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    .line 44
    invoke-virtual {v5, p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 45
    invoke-interface {p2, v5, v4, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzH(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)V

    goto/16 :goto_0

    .line 108
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 121
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 122
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 123
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 124
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 125
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 126
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 127
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 128
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int/2addr v6, v8

    int-to-long v8, v6

    .line 129
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 130
    invoke-interface {p2, v6}, Lcom/google/android/gms/internal/ads/zzght;->zzK(Ljava/util/List;)V

    .line 131
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v5

    .line 132
    invoke-static {v4, v6, v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgge;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_19
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 133
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 134
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 135
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 136
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 137
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 138
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 139
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 140
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 141
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 142
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 143
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 144
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 145
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 146
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 147
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 148
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 149
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 150
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 151
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 152
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 153
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 154
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 155
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 156
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 157
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 158
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int/2addr v6, v8

    int-to-long v8, v6

    .line 159
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 160
    invoke-interface {p2, v6}, Lcom/google/android/gms/internal/ads/zzght;->zzK(Ljava/util/List;)V

    .line 161
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v5

    .line 162
    invoke-static {v4, v6, v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgge;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 163
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 164
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 165
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 166
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzI(Ljava/util/List;)V

    goto/16 :goto_0

    .line 167
    :pswitch_29
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v4

    and-int v5, v6, v8

    int-to-long v5, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    .line 168
    invoke-virtual {v7, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 169
    invoke-interface {p2, v5, v4, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzG(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)V

    goto/16 :goto_0

    .line 38
    :pswitch_2a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzG(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 39
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgfd;

    const/4 v6, 0x1

    .line 40
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzgfd;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 41
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgfd;

    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzgfd;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 169
    :pswitch_2b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 170
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 171
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 172
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 173
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 174
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 175
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 176
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 177
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 178
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 179
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 180
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 181
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 182
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 183
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    and-int v5, v6, v8

    int-to-long v5, v5

    .line 184
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzggw;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 185
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/ads/zzght;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    .line 186
    :pswitch_33
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_e

    and-int v4, v6, v8

    int-to-long v6, v4

    .line 191
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 192
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 193
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzp(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v5

    .line 194
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 187
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v4

    .line 188
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzp(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 37
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzw()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 38
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 35
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzv()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 33
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzu()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 34
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 31
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzt()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 196
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzs()I

    move-result v7

    .line 197
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 198
    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/ads/zzgge;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_7

    .line 201
    :cond_f
    invoke-static {v4, v7, v3, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzH(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    :goto_7
    and-int v4, v6, v8

    int-to-long v8, v4

    .line 199
    invoke-static {p1, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 200
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzr()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 27
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzq()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 28
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 202
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    and-int v4, v6, v8

    int-to-long v6, v4

    .line 207
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 208
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 209
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzo(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v5

    .line 210
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 211
    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 203
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v4

    .line 204
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzght;->zzo(Lcom/google/android/gms/internal/ads/zzghz;Lcom/google/android/gms/internal/ads/zzgfm;)Ljava/lang/Object;

    move-result-object v4

    .line 205
    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 212
    :pswitch_3c
    invoke-direct {p0, p1, v6, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzC(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzght;)V

    .line 213
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 25
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzl()Z

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzi(Ljava/lang/Object;JZ)V

    .line 26
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 23
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzk()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 24
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 21
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzj()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 22
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzi()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zze(Ljava/lang/Object;JI)V

    .line 20
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzg()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 15
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzh()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzg(Ljava/lang/Object;JJ)V

    .line 16
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 13
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zzf()F

    move-result v4

    invoke-static {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzgiy;->zzk(Ljava/lang/Object;JF)V

    .line 14
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v4, v6, v8

    int-to-long v6, v4

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzght;->zze()D

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzgiy;->zzm(Ljava/lang/Object;JD)V

    .line 12
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 215
    :cond_12
    :goto_8
    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;)Z

    move-result v4
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzggl; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge p2, p3, :cond_13

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 219
    aget p3, p3, p2

    .line 220
    invoke-direct {p0, p1, p3, v3, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_13
    if-eqz v3, :cond_16

    .line 221
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 216
    :catch_0
    :try_start_5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zza(Lcom/google/android/gms/internal/ads/zzght;)Z

    if-nez v3, :cond_14

    .line 217
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    :cond_14
    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzght;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge p2, p3, :cond_15

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 219
    aget p3, p3, p2

    .line 220
    invoke-direct {p0, p1, p3, v3, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_15
    if-eqz v3, :cond_16

    .line 221
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 213
    :goto_b
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge p3, v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 219
    aget v0, v0, p3

    .line 220
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_17
    if-eqz v3, :cond_18

    .line 221
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzgio;->zzl(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    :cond_18
    throw p2

    .line 1
    :cond_19
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzh(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgej;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1
    sget-object v10, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1c

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzb(I[BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v27, v1

    move v1, v0

    move/from16 v0, v27

    :goto_1
    ushr-int/lit8 v7, v1, 0x3

    and-int/lit8 v8, v1, 0x7

    const/4 v4, 0x3

    if-le v7, v2, :cond_1

    div-int/2addr v3, v4

    .line 3
    invoke-direct {v15, v7, v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzT(II)I

    move-result v2

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzS(I)I

    move-result v2

    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v2, v0

    move v8, v1

    move/from16 v18, v5

    move/from16 v24, v7

    move-object/from16 v26, v10

    move v7, v11

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    goto/16 :goto_12

    .line 61
    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v19, v2, 0x1

    .line 5
    aget v3, v3, v19

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v4

    move/from16 v20, v1

    const v17, 0xfffff

    and-int v1, v3, v17

    move/from16 v21, v0

    int-to-long v0, v1

    move-wide/from16 v22, v0

    const/16 v0, 0x11

    if-gt v4, v0, :cond_e

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v24, v2, 0x2

    .line 6
    aget v0, v0, v24

    ushr-int/lit8 v24, v0, 0x14

    const/4 v1, 0x1

    shl-int v24, v1, v24

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_4

    move/from16 v17, v2

    if-eq v6, v11, :cond_3

    int-to-long v1, v6

    .line 7
    invoke-virtual {v10, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v1, v0

    .line 8
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v25, v0

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    move/from16 v25, v6

    :goto_3
    move v6, v5

    const/4 v0, 0x5

    packed-switch v4, :pswitch_data_0

    move/from16 v11, v20

    move/from16 v2, v21

    move-wide/from16 v4, v22

    const/4 v0, 0x3

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_d

    .line 9
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    shl-int/lit8 v1, v20, 0x3

    or-int/lit8 v8, v1, 0x4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-wide v12, v4

    move v4, v8

    move-object/from16 v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgek;->zzj(Lcom/google/android/gms/internal/ads/zzghz;[BIIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    and-int v1, v6, v24

    if-nez v1, :cond_c

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_0
    if-nez v8, :cond_5

    move/from16 v1, v21

    .line 15
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v8

    iget-wide v0, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfc;->zzH(J)J

    move-result-wide v4

    move-wide/from16 v2, v22

    move-object v0, v10

    move/from16 v11, v20

    move-object/from16 v1, p1

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_7

    :cond_5
    move/from16 v11, v20

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    move/from16 v2, v21

    goto/16 :goto_c

    :pswitch_1
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 18
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfc;->zzG(I)I

    move-result v1

    .line 20
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 21
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 22
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzy(I)Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 23
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzgge;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 25
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/ads/zzgip;->zzh(ILjava/lang/Object;)V

    move v5, v6

    goto/16 :goto_9

    .line 24
    :cond_7
    :goto_4
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    const/4 v0, 0x2

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_b

    .line 26
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzh([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    const/4 v0, 0x2

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_b

    .line 28
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    .line 29
    invoke-static {v0, v12, v1, v13, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzi(Lcom/google/android/gms/internal/ads/zzghz;[BIILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    and-int v1, v6, v24

    if-nez v1, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 30
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    .line 31
    :cond_8
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 32
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v4, v22

    const/4 v0, 0x2

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_b

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_9

    .line 34
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzf([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    goto :goto_5

    .line 35
    :cond_9
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzg([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    .line 34
    :goto_5
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 36
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v4, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-nez v8, :cond_b

    .line 37
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    const-wide/16 v21, 0x0

    cmp-long v3, v1, v21

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 38
    :goto_6
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzi(Ljava/lang/Object;JZ)V

    goto/16 :goto_8

    :pswitch_7
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v4, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_b

    .line 39
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_8

    :pswitch_8
    move/from16 v11, v20

    move/from16 v1, v21

    move-wide/from16 v4, v22

    const/4 v0, 0x1

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_b

    .line 40
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v21

    move v8, v1

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_8

    :cond_b
    move v2, v1

    goto/16 :goto_c

    :pswitch_9
    move/from16 v11, v20

    move/from16 v2, v21

    move-wide/from16 v4, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-nez v8, :cond_d

    .line 41
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zza([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzgej;->zza:I

    .line 42
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_a
    move/from16 v11, v20

    move/from16 v2, v21

    move-wide/from16 v4, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-nez v8, :cond_d

    .line 43
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/ads/zzgek;->zzc([BILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v8

    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    .line 44
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_7
    or-int v5, v6, v24

    move v3, v7

    move v0, v8

    goto :goto_a

    :pswitch_b
    move/from16 v11, v20

    move/from16 v2, v21

    move-wide/from16 v4, v22

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_d

    .line 45
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzgek;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 46
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzk(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_8

    :pswitch_c
    move/from16 v11, v20

    move/from16 v2, v21

    move-wide/from16 v4, v22

    const/4 v0, 0x1

    move/from16 v20, v7

    move/from16 v7, v17

    const/16 v17, -0x1

    if-ne v8, v0, :cond_d

    .line 47
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzgek;->zze([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 48
    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzm(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_8
    or-int v5, v6, v24

    :goto_9
    move v3, v7

    :goto_a
    move v1, v11

    goto/16 :goto_e

    .line 12
    :cond_c
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzgej;->zzc:Ljava/lang/Object;

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzggk;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_b
    or-int v5, v6, v24

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto :goto_9

    :cond_d
    :goto_c
    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v26, v10

    move v8, v11

    move/from16 v24, v20

    move/from16 v6, v25

    const/4 v14, 0x0

    move/from16 v7, p5

    goto/16 :goto_12

    :cond_e
    move/from16 v11, v20

    move-wide/from16 v12, v22

    const/16 v17, -0x1

    move/from16 v20, v7

    move v7, v2

    move/from16 v2, v21

    const/16 v0, 0x1b

    if-ne v4, v0, :cond_12

    const/4 v0, 0x2

    if-ne v8, v0, :cond_11

    .line 49
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzggj;

    .line 50
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_10

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xa

    goto :goto_d

    :cond_f
    add-int/2addr v1, v1

    .line 52
    :goto_d
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzggj;->zze(I)Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    .line 53
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v8, v0

    .line 54
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    move v1, v11

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v18, v5

    move-object v5, v8

    move/from16 v25, v6

    move-object/from16 v6, p6

    .line 55
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgek;->zzm(Lcom/google/android/gms/internal/ads/zzghz;I[BIILcom/google/android/gms/internal/ads/zzggj;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move/from16 v5, v18

    :goto_e
    move/from16 v2, v20

    move/from16 v6, v25

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    move/from16 v18, v5

    move/from16 v25, v6

    move v15, v2

    move/from16 v19, v7

    move-object/from16 v26, v10

    move/from16 v24, v20

    move/from16 v20, v11

    goto/16 :goto_10

    :cond_12
    move/from16 v18, v5

    move/from16 v25, v6

    move v6, v2

    const/16 v0, 0x31

    if-gt v4, v0, :cond_14

    int-to-long v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-object/from16 v2, p2

    move v3, v6

    move v5, v4

    const/4 v15, 0x0

    move/from16 v4, p4

    move/from16 p3, v5

    move v5, v11

    move v15, v6

    move/from16 v6, v20

    move/from16 v19, v7

    move/from16 v24, v20

    move v7, v8

    move/from16 v8, v19

    move-object/from16 v26, v10

    move-wide/from16 v9, v21

    move/from16 v20, v11

    move/from16 v11, p3

    move-object/from16 v14, p6

    .line 56
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzghl;->zzt(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    if-eq v0, v15, :cond_13

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v1, v20

    move/from16 v2, v24

    move/from16 v6, v25

    move-object/from16 v10, v26

    goto/16 :goto_0

    :cond_13
    move/from16 v7, p5

    move v2, v0

    goto :goto_11

    :cond_14
    move/from16 p3, v4

    move v15, v6

    move/from16 v19, v7

    move-object/from16 v26, v10

    move/from16 v24, v20

    move/from16 v20, v11

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_16

    const/4 v0, 0x2

    if-eq v8, v0, :cond_15

    :goto_10
    move/from16 v7, p5

    move v2, v15

    :goto_11
    move/from16 v8, v20

    move/from16 v6, v25

    const/4 v14, 0x0

    goto :goto_12

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide v6, v12

    move-object/from16 v8, p6

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzghl;->zzu(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzgej;)I

    const/4 v14, 0x0

    throw v14

    :cond_16
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move/from16 v6, v24

    move v7, v8

    move v8, v10

    move-wide v10, v12

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 58
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzghl;->zzv(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    if-eq v0, v15, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v7, p5

    move v2, v0

    move/from16 v8, v20

    move/from16 v6, v25

    :goto_12
    if-ne v8, v7, :cond_18

    if-eqz v7, :cond_18

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v0, v2

    move v1, v8

    move-object v3, v14

    move/from16 v5, v18

    goto/16 :goto_15

    :cond_18
    move-object/from16 v9, p0

    move-object v3, v14

    .line 69
    iget-boolean v0, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-eqz v0, :cond_1b

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzgej;->zzd:Lcom/google/android/gms/internal/ads/zzgfm;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzg:Lcom/google/android/gms/internal/ads/zzghi;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzgej;->zzd:Lcom/google/android/gms/internal/ads/zzgfm;

    move/from16 v11, v24

    .line 62
    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/ads/zzgfm;->zzc(Lcom/google/android/gms/internal/ads/zzghi;I)Lcom/google/android/gms/internal/ads/zzgfy;

    move-result-object v0

    if-nez v0, :cond_19

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgek;->zzn(I[BIILcom/google/android/gms/internal/ads/zzgip;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    move-object/from16 v12, p1

    goto :goto_14

    :cond_19
    move-object/from16 v12, p1

    .line 70
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgfx;

    .line 71
    throw v3

    :cond_1a
    move-object/from16 v12, p1

    goto :goto_13

    :cond_1b
    move-object/from16 v12, p1

    move-object/from16 v10, p6

    :goto_13
    move/from16 v11, v24

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzghl;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgip;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgek;->zzn(I[BIILcom/google/android/gms/internal/ads/zzgip;Lcom/google/android/gms/internal/ads/zzgej;)I

    move-result v0

    :goto_14
    move/from16 v13, p4

    move v1, v8

    move-object v15, v9

    move-object v9, v10

    move v2, v11

    move-object v14, v12

    move/from16 v5, v18

    move/from16 v3, v19

    move-object/from16 v10, v26

    move-object/from16 v12, p2

    move v11, v7

    goto/16 :goto_0

    :cond_1c
    move/from16 v18, v5

    move/from16 v25, v6

    move-object/from16 v26, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    const/4 v3, 0x0

    :goto_15
    const v2, 0xfffff

    if-eq v6, v2, :cond_1d

    int-to-long v10, v6

    move-object/from16 v2, v26

    .line 65
    invoke-virtual {v2, v12, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d
    iget v2, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_16
    iget v4, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge v2, v4, :cond_1e

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 66
    aget v4, v4, v2

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 67
    invoke-direct {v9, v12, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzA(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgio;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_1e
    if-nez v7, :cond_20

    move/from16 v2, p4

    if-ne v0, v2, :cond_1f

    goto :goto_17

    .line 68
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 v2, p4

    if-gt v0, v2, :cond_21

    if-ne v1, v7, :cond_21

    :goto_17
    return v0

    .line 69
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzk()Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzgej;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzj:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzghl;->zzz(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgej;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzghl;->zzh(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgej;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzm:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzghc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzghc;->zzd()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgiy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 5
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzn:Lcom/google/android/gms/internal/ads/zzggw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzggw;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzm(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzd(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzl:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzk:[I

    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 2
    aget v13, v2, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzghl;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzN(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzghc;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzx(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/zzghb;

    .line 22
    throw v11

    .line 16
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzghl;->zzB(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzghz;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzghz;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzghl;->zzN(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzghl;->zzB(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzghz;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 23
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    throw v11
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzgfi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzj:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzh:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzD(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 3
    aget v4, v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghl;->zzF(I)I

    move-result v5

    const/4 v6, 0x1

    const v7, 0xfffff

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 103
    :pswitch_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 104
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 105
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 106
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 107
    :pswitch_1
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 108
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzq(IJ)V

    goto/16 :goto_1

    .line 109
    :pswitch_2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 110
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzp(II)V

    goto/16 :goto_1

    .line 111
    :pswitch_3
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 112
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzd(IJ)V

    goto/16 :goto_1

    .line 113
    :pswitch_4
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 114
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(II)V

    goto/16 :goto_1

    .line 115
    :pswitch_5
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 116
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzg(II)V

    goto/16 :goto_1

    .line 117
    :pswitch_6
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 118
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzo(II)V

    goto/16 :goto_1

    .line 119
    :pswitch_7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 120
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgex;

    .line 121
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    goto/16 :goto_1

    .line 122
    :pswitch_8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 123
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 124
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 125
    :pswitch_9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 126
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzX(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_1

    .line 127
    :pswitch_a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 128
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzL(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzl(IZ)V

    goto/16 :goto_1

    .line 129
    :pswitch_b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 130
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzk(II)V

    goto/16 :goto_1

    .line 131
    :pswitch_c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 132
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(IJ)V

    goto/16 :goto_1

    .line 133
    :pswitch_d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 134
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzJ(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzi(II)V

    goto/16 :goto_1

    .line 135
    :pswitch_e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 136
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzh(IJ)V

    goto/16 :goto_1

    .line 137
    :pswitch_f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 138
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzK(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc(IJ)V

    goto/16 :goto_1

    .line 139
    :pswitch_10
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 140
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzI(Ljava/lang/Object;J)F

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zze(IF)V

    goto/16 :goto_1

    .line 141
    :pswitch_11
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzQ(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 142
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzghl;->zzH(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzf(ID)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 102
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzW(Lcom/google/android/gms/internal/ads/zzgfi;ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 97
    :pswitch_13
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 98
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 99
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 100
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 101
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 94
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 95
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 96
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 97
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 91
    :pswitch_15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 92
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 93
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 94
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 88
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 89
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 90
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 91
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 85
    :pswitch_17
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 86
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 87
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 82
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 83
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 84
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 85
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 79
    :pswitch_19
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 80
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 81
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 76
    :pswitch_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 77
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 78
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 79
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 73
    :pswitch_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 74
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 75
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 70
    :pswitch_1c
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 71
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 72
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 73
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 67
    :pswitch_1d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 68
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 69
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 64
    :pswitch_1e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 65
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 66
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 61
    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 62
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 63
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 58
    :pswitch_20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 59
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 60
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 55
    :pswitch_21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 56
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 57
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 58
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/ads/zzgib;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 52
    :pswitch_22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 53
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 55
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 49
    :pswitch_23
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 50
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 52
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 46
    :pswitch_24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 47
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 49
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 43
    :pswitch_25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 44
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 46
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 40
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 41
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 43
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 37
    :pswitch_27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 38
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 40
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 34
    :pswitch_28
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 35
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 37
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_1

    .line 30
    :pswitch_29
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 31
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 33
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 34
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/ads/zzgib;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 27
    :pswitch_2a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 28
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 30
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzgib;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_1

    .line 24
    :pswitch_2b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 25
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 27
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 21
    :pswitch_2c
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 22
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 24
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 18
    :pswitch_2d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 19
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 21
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 15
    :pswitch_2e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 16
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 18
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 12
    :pswitch_2f
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 13
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 15
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 9
    :pswitch_30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 10
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 12
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 6
    :pswitch_31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 7
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 9
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 3
    :pswitch_32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzc:[I

    .line 4
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 6
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgfi;Z)V

    goto/16 :goto_1

    .line 143
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 144
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 145
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    .line 146
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 147
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 148
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 149
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzq(IJ)V

    goto/16 :goto_1

    .line 150
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 151
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 152
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzp(II)V

    goto/16 :goto_1

    .line 153
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 154
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 155
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzd(IJ)V

    goto/16 :goto_1

    .line 156
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 157
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 158
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(II)V

    goto/16 :goto_1

    .line 159
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 160
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 161
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzg(II)V

    goto/16 :goto_1

    .line 162
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 163
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 164
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzo(II)V

    goto/16 :goto_1

    .line 165
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 166
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgex;

    .line 167
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    goto/16 :goto_1

    .line 168
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 169
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 170
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzw(I)Lcom/google/android/gms/internal/ads/zzghz;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgfi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzghz;)V

    goto/16 :goto_1

    .line 171
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 172
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzX(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    goto/16 :goto_1

    .line 173
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 174
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    .line 175
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzl(IZ)V

    goto/16 :goto_1

    .line 176
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 177
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 178
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzk(II)V

    goto :goto_1

    .line 179
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 180
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 181
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(IJ)V

    goto :goto_1

    .line 182
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 183
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd(Ljava/lang/Object;J)I

    move-result v3

    .line 184
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzi(II)V

    goto :goto_1

    .line 185
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 186
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 187
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzh(IJ)V

    goto :goto_1

    .line 188
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 189
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzf(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 190
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc(IJ)V

    goto :goto_1

    .line 191
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 192
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzj(Ljava/lang/Object;J)F

    move-result v3

    .line 193
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zze(IF)V

    goto :goto_1

    .line 194
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzghl;->zzO(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 195
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzgiy;->zzl(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 196
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgfi;->zzf(ID)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzo:Lcom/google/android/gms/internal/ads/zzgio;

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgio;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzghl;->zzp:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 198
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgfn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfr;

    const/4 p1, 0x0

    throw p1

    .line 200
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzghl;->zzV(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfi;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
