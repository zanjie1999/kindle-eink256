.class public final Lcom/google/android/gms/internal/ads/zzfym;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfym;",
        "Lcom/google/android/gms/internal/ads/zzfyl;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzfym;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfym;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfym;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfym;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfym;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzfyl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfyl;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/ads/zzfym;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfym;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfym;->zzb:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzfym;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfym;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfym;->zzb:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfyl;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfyl;-><init>(Lcom/google/android/gms/internal/ads/zzfyk;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfym;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfym;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfym;->zzf:Lcom/google/android/gms/internal/ads/zzfym;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfym;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method
