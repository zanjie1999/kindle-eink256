.class final Lcom/google/android/gms/internal/ads/zzfqd;
.super Lcom/google/android/gms/internal/ads/zzfot;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfot<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfqd<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:[Ljava/lang/Object;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field final transient zzc:[Ljava/lang/Object;

.field private final transient zze:I

.field private final transient zzf:I

.field private final transient zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 1
    sput-object v4, Lcom/google/android/gms/internal/ads/zzfqd;->zzd:[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqd;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zze:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfob;->zzb(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:I

    and-int/2addr v2, v3

    .line 3
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zze:I

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfot;->zze()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfql;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfql<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfot;->zze()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    add-int/2addr p2, p1

    return p2
.end method

.method final zzm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzn()Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzs([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    return-object v0
.end method
