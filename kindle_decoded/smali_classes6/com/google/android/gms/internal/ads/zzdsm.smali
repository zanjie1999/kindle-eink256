.class final synthetic Lcom/google/android/gms/internal/ads/zzdsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Lcom/google/android/gms/internal/ads/zzdsr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsr;->zzd(Landroid/view/View;)V

    return-void
.end method
