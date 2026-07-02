.class final Lcom/google/android/gms/internal/ads/zzgih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgik;

.field private zzb:I

.field private zzc:Z

.field private zzd:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgik;Lcom/google/android/gms/internal/ads/zzgij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zzc(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzd:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgik;->zzb(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zzc(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgih;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzc:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zzb(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zzb(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgih;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzc:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zzj(Lcom/google/android/gms/internal/ads/zzgik;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgik;->zzb(Lcom/google/android/gms/internal/ads/zzgik;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgik;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgih;->zzb:I

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgik;->zzi(Lcom/google/android/gms/internal/ads/zzgik;I)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgih;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
