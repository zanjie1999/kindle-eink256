.class final synthetic Lcom/google/android/gms/internal/ads/zzepz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeqa;

.field private final zzb:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeqa;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepz;->zza:Lcom/google/android/gms/internal/ads/zzeqa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepz;->zzb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepz;->zza:Lcom/google/android/gms/internal/ads/zzeqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepz;->zzb:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeqa;->zzb(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
