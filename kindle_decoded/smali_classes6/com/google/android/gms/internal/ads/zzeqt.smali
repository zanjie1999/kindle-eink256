.class final synthetic Lcom/google/android/gms/internal/ads/zzeqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeqy;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;

.field private final zzd:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeqy;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zza:Lcom/google/android/gms/internal/ads/zzeqy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zza:Lcom/google/android/gms/internal/ads/zzeqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeqt;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeqy;->zzc(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
