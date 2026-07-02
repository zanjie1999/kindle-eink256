.class public final Lcom/google/android/gms/internal/ads/zzfxi;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfxi;",
        "Lcom/google/android/gms/internal/ads/zzfxh;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzfxi;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfxl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfxi;

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

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxi;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzfxh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxh;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/ads/zzfxi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfxi;I)V
    .locals 0

    const/16 p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zzb:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzfxi;Lcom/google/android/gms/internal/ads/zzfxl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zze:Lcom/google/android/gms/internal/ads/zzfxl;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zzb:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxh;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfxh;-><init>(Lcom/google/android/gms/internal/ads/zzfxg;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxi;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfxi;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfxi;->zzf:Lcom/google/android/gms/internal/ads/zzfxi;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfxl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxi;->zze:Lcom/google/android/gms/internal/ads/zzfxl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zzd()Lcom/google/android/gms/internal/ads/zzfxl;

    move-result-object v0

    :cond_0
    return-object v0
.end method
