.class public final Lcom/google/android/gms/internal/ads/zzgab;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgab;",
        "Lcom/google/android/gms/internal/ads/zzgaa;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzgab;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgab;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgab;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgab;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgaa;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgaa;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgab;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzgab;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzgab;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgab;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgab;I)V
    .locals 0

    const/4 p1, 0x4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgad;->zza(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgab;->zzb:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgab;I)V
    .locals 0

    const/4 p1, 0x5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaf;->zza(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgab;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgab;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgaa;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgaa;-><init>(Lcom/google/android/gms/internal/ads/zzfzz;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgab;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgab;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgab;->zzg:Lcom/google/android/gms/internal/ads/zzgab;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzg()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgab;->zzb:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgab;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgaf;->zzb(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
