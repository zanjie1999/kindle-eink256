.class final Lcom/google/android/gms/internal/ads/zzfhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfhu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzc(Lcom/google/android/gms/internal/ads/zzfhu;)Lcom/google/android/gms/internal/ads/zzfho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfho;->zzc()V

    return-void
.end method
