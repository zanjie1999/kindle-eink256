.class public final Lcom/google/android/gms/internal/ads/zzesp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzesn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcfw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzcfw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesp;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesp;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesp;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesp;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzesp;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcfw;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesp;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoo;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesp;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesp;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzetz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzetz;->zza()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzesn;

    const/4 v6, 0x0

    move-object v0, v7

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzesn;-><init>(Lcom/google/android/gms/internal/ads/zzcfw;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I[B)V

    return-object v7
.end method
