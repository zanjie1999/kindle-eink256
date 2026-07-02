.class final synthetic Lcom/google/android/gms/internal/ads/zzji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final zza:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzji;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzji;->zza:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget p1, Lcom/google/android/gms/internal/ads/zzjt;->zza:I

    const/4 p1, 0x0

    return p1
.end method
