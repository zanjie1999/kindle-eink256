.class final synthetic Lcom/google/android/gms/internal/ads/zzeqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeqy;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeki;

.field private final zzd:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeqy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeki;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zza:Lcom/google/android/gms/internal/ads/zzeqy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzc:Lcom/google/android/gms/internal/ads/zzeki;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zza:Lcom/google/android/gms/internal/ads/zzeqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzc:Lcom/google/android/gms/internal/ads/zzeki;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeqv;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeqy;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeki;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
