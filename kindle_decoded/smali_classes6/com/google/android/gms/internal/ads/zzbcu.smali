.class public final Lcom/google/android/gms/internal/ads/zzbcu;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbcu;",
        "Lcom/google/android/gms/internal/ads/zzbct;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzbcu;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcu;->zzg:Lcom/google/android/gms/internal/ads/zzbcu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbcu;

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

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbct;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcu;->zzg:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbct;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcu;->zzg:Lcom/google/android/gms/internal/ads/zzbcu;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbcu;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zze:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbcu;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcu;->zze:Z

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcu;->zzg:Lcom/google/android/gms/internal/ads/zzbcu;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbct;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbcu;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcu;->zzg:Lcom/google/android/gms/internal/ads/zzbcu;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
