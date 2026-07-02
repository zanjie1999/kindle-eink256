.class public final Lcom/google/android/gms/internal/ads/zzfzy;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfzy;",
        "Lcom/google/android/gms/internal/ads/zzfzx;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzfzy;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfzs;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzy;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzy;

    return-object p0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzfzx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzx;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfzy;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzfzy;Lcom/google/android/gms/internal/ads/zzfzs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zze:Lcom/google/android/gms/internal/ads/zzfzs;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzfzy;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzfzy;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzx;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzx;-><init>(Lcom/google/android/gms/internal/ads/zzfzw;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzy;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfzy;->zzh:Lcom/google/android/gms/internal/ads/zzfzy;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfzs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zze:Lcom/google/android/gms/internal/ads/zzfzs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzs;->zze()Lcom/google/android/gms/internal/ads/zzfzs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method
