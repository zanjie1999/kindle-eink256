.class public final Lcom/google/android/gms/internal/ads/zzbap;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbap;",
        "Lcom/google/android/gms/internal/ads/zzbao;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzr:Lcom/google/android/gms/internal/ads/zzbap;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzbbz;

.field private zzj:Lcom/google/android/gms/internal/ads/zzggi;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbah;

.field private zzl:Lcom/google/android/gms/internal/ads/zzbak;

.field private zzm:Lcom/google/android/gms/internal/ads/zzbbd;

.field private zzn:Lcom/google/android/gms/internal/ads/zzazl;

.field private zzo:Lcom/google/android/gms/internal/ads/zzbbn;

.field private zzp:Lcom/google/android/gms/internal/ads/zzbcu;

.field private zzq:Lcom/google/android/gms/internal/ads/zzazu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbap;->zzr:Lcom/google/android/gms/internal/ads/zzbap;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbap;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzf:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzh:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->zzaD()Lcom/google/android/gms/internal/ads/zzggi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzj:Lcom/google/android/gms/internal/ads/zzggi;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzbao;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbap;->zzr:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbao;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/ads/zzbap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbap;->zzr:Lcom/google/android/gms/internal/ads/zzbap;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbap;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbap;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzj:Lcom/google/android/gms/internal/ads/zzggi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzggi;->zzc(I)Lcom/google/android/gms/internal/ads/zzggi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzj:Lcom/google/android/gms/internal/ads/zzggi;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzj:Lcom/google/android/gms/internal/ads/zzggi;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzar(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbap;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->zzaD()Lcom/google/android/gms/internal/ads/zzggi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzj:Lcom/google/android/gms/internal/ads/zzggi;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzk:Lcom/google/android/gms/internal/ads/zzbah;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzazl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzn:Lcom/google/android/gms/internal/ads/zzazl;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbbn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzo:Lcom/google/android/gms/internal/ads/zzbbn;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzbcu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzp:Lcom/google/android/gms/internal/ads/zzbcu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbap;Lcom/google/android/gms/internal/ads/zzazu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzq:Lcom/google/android/gms/internal/ads/zzazu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzf:Ljava/lang/String;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbap;->zzr:Lcom/google/android/gms/internal/ads/zzbap;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbao;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbao;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbap;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbap;->zzr:Lcom/google/android/gms/internal/ads/zzbap;

    const-string p3, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzk:Lcom/google/android/gms/internal/ads/zzbah;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbah;->zza()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzazl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzn:Lcom/google/android/gms/internal/ads/zzazl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazl;->zzc()Lcom/google/android/gms/internal/ads/zzazl;

    move-result-object v0

    :cond_0
    return-object v0
.end method
