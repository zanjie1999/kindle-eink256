.class final Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzabr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Landroid/content/Context;)V

    return-void
.end method
