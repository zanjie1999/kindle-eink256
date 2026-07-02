.class public final Lcom/google/ads/AdSize;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BANNER:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final IAB_BANNER:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final IAB_MRECT:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final SMART_BANNER:Lcom/google/ads/AdSize;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "mb"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v2, 0x140

    const/16 v3, 0x32

    .line 2
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const-string v1, "as"

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v2, 0x1d4

    const/16 v3, 0x3c

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    .line 5
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v2, 0xa0

    const/16 v3, 0x258

    .line 6
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    new-instance p3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/ads/AdSize;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/ads/AdSize;

    iget-object v0, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    .line 3
    iget-object p1, p1, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/AdSize;->zza:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
