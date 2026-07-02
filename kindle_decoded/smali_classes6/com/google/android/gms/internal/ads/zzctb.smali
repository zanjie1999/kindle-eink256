.class final synthetic Lcom/google/android/gms/internal/ads/zzctb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctf;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctf;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctb;->zza:Lcom/google/android/gms/internal/ads/zzctf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctb;->zza:Lcom/google/android/gms/internal/ads/zzctf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzctb;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzctf;->zzp(II)V

    return-void
.end method
