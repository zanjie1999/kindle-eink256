.class final synthetic Lcom/google/android/gms/internal/ads/zzddc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# instance fields
.field private final zza:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzddc;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddc;->zza:I

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbs(I)V

    return-void
.end method
