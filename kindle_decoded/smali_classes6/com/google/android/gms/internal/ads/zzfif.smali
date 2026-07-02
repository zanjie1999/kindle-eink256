.class final synthetic Lcom/google/android/gms/internal/ads/zzfif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfif;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfif;->zzb:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfif;->zza:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfif;->zzb:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "GLAS"

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkk;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfkk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
