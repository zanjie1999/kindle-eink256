.class final synthetic Lcom/google/android/gms/internal/ads/zzaeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzahd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzM(ZI)V

    return-void
.end method
