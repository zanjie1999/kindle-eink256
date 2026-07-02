.class final Lcom/google/android/gms/internal/ads/zzghx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/ads/zzges;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzghy;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzges;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzghw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzghy;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghy;

    new-instance p2, Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghy;->zzf()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghy;->zzd(Lcom/google/android/gms/internal/ads/zzghy;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzghx;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Ljava/util/ArrayDeque;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzges;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzghy;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghy;->zzd(Lcom/google/android/gms/internal/ads/zzghy;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzges;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghx;->zza()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzges;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzghy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghy;->zzh(Lcom/google/android/gms/internal/ads/zzghy;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzghx;->zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzges;

    return-object v0

    .line 1
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
