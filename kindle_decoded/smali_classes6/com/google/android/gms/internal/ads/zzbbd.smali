.class public final Lcom/google/android/gms/internal/ads/zzbbd;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbbd;",
        "Lcom/google/android/gms/internal/ads/zzbaw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzbbd;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbd;

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

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbaw;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzbbd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/ads/zzbbd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbbd;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbbd;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbaw;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbaw;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbd;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbb;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbay;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbd;->zzg:Lcom/google/android/gms/internal/ads/zzbbd;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbaz;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
