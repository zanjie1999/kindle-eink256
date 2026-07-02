.class final synthetic Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcms;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcms;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzJ()V

    return-void
.end method
