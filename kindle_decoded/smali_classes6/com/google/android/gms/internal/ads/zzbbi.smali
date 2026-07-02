.class public final Lcom/google/android/gms/internal/ads/zzbbi;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbbi;",
        "Lcom/google/android/gms/internal/ads/zzbbh;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zzggg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggg<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzr:Lcom/google/android/gms/internal/ads/zzbbi;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzggf;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbbd;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzj:Lcom/google/android/gms/internal/ads/zzggg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->zzaB()Lcom/google/android/gms/internal/ads/zzggf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzi:Lcom/google/android/gms/internal/ads/zzggf;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method public static zzi([B)Lcom/google/android/gms/internal/ads/zzbbi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgga;->zzaJ(Lcom/google/android/gms/internal/ads/zzgga;[B)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbi;

    return-object p0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbh;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/ads/zzbbi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbbi;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zze:J

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbbi;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzg:J

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbbi;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzh:J

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzi:Lcom/google/android/gms/internal/ads/zzggf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzaC(Lcom/google/android/gms/internal/ads/zzggf;)Lcom/google/android/gms/internal/ads/zzggf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzi:Lcom/google/android/gms/internal/ads/zzggf;

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzi:Lcom/google/android/gms/internal/ads/zzggf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazx;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzggf;->zzh(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzbbd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzk:Lcom/google/android/gms/internal/ads/zzbbd;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzo:I

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzbbm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbm;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzq:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/ads/zzbbi;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zze:J

    return-wide v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbh;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbi;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazx;->zzc()Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string v0, "zzn"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string v0, "zzo"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "zzp"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbm;->zzc()Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbi;->zzr:Lcom/google/android/gms/internal/ads/zzbbi;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzg:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzh:J

    return-wide v0
.end method

.method public final zze()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzi:Lcom/google/android/gms/internal/ads/zzggf;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbi;->zzj:Lcom/google/android/gms/internal/ads/zzggg;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzggg;)V

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbbd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzk:Lcom/google/android/gms/internal/ads/zzbbd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbd;->zze()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzo:I

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzbbm;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    :cond_0
    return-object v0
.end method

.method public final zzs()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbi;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
