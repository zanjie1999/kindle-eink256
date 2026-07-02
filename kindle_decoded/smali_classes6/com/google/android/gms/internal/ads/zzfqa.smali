.class final Lcom/google/android/gms/internal/ads/zzfqa;
.super Lcom/google/android/gms/internal/ads/zzfot;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfot<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzfon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient zzb:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfon;Lcom/google/android/gms/internal/ads/zzfoj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfot;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfon;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfon;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfql;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfql<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzt(I)Lcom/google/android/gms/internal/ads/zzfqm;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
