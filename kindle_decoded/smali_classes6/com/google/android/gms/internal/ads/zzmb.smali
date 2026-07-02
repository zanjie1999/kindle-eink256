.class final synthetic Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzmi;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/Display;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzmi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmi;->zzl(Landroid/view/Display;)V

    return-void
.end method
