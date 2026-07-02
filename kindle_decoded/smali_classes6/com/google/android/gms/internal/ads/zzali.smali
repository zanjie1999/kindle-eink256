.class final synthetic Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzalj;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzalj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:Lcom/google/android/gms/internal/ads/zzalj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:Lcom/google/android/gms/internal/ads/zzalj;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzall;

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzall;->zzb(ILcom/google/android/gms/internal/ads/zzalj;)V

    goto :goto_0

    :cond_0
    return-void
.end method
