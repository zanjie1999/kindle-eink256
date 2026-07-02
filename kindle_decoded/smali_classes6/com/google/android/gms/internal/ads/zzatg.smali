.class public final Lcom/google/android/gms/internal/ads/zzatg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzatg;


# instance fields
.field public final zzb:I

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzatf;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatg;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzatf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzatg;-><init>([Lcom/google/android/gms/internal/ads/zzatf;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zza:Lcom/google/android/gms/internal/ads/zzatg;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzatg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatg;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzd:I

    :cond_0
    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzatf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatf;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:[Lcom/google/android/gms/internal/ads/zzatf;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
