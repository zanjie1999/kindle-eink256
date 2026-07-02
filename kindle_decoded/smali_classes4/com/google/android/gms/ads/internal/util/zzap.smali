.class final synthetic Lcom/google/android/gms/ads/internal/util/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzav;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:I

.field private final zzd:I

.field private final zze:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzav;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzc:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzd:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zze:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzc:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zzd:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzap;->zze:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/util/zzav;->zzp(Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method
