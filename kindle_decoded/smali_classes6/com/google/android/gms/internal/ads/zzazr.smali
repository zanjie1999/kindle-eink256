.class public final Lcom/google/android/gms/internal/ads/zzazr;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzazr;",
        "Lcom/google/android/gms/internal/ads/zzazq;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzazr;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzazr;

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

.method public static zza()Lcom/google/android/gms/internal/ads/zzazq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazq;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzazr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzazr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzazr;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zze:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzazr;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzf:I

    return-void
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazq;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzazq;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazr;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzazr;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/zzazr;->zzg:Lcom/google/android/gms/internal/ads/zzazr;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100b\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
