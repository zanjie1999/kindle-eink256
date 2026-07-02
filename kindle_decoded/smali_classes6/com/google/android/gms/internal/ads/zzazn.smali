.class public final Lcom/google/android/gms/internal/ads/zzazn;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzazn;",
        "Lcom/google/android/gms/internal/ads/zzazm;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzazn;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzazr;

.field private zzg:Lcom/google/android/gms/internal/ads/zzazt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazn;->zzh:Lcom/google/android/gms/internal/ads/zzazn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzazn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzazm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazn;->zzh:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazm;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzazn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazn;->zzh:Lcom/google/android/gms/internal/ads/zzazn;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzazr;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzf:Lcom/google/android/gms/internal/ads/zzazr;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzazt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzg:Lcom/google/android/gms/internal/ads/zzazt;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzazn;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zze:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazn;->zzh:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazm;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzazm;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzazn;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzazp;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzazn;->zzh:Lcom/google/android/gms/internal/ads/zzazn;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
