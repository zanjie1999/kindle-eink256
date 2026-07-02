.class public final Lcom/google/android/gms/internal/ads/zzfzh;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfzh;",
        "Lcom/google/android/gms/internal/ads/zzfzg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfzh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzh;

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

.method public static zza(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfzh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzh;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzfzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzfzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzg;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfzg;-><init>(Lcom/google/android/gms/internal/ads/zzfzf;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>()V

    return-object p1

    .line 1
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzh;->zzb:Lcom/google/android/gms/internal/ads/zzfzh;

    const-string p2, "\u0000\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
