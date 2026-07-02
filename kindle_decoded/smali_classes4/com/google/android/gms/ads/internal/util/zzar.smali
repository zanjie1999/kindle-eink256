.class final synthetic Lcom/google/android/gms/ads/internal/util/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzav;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzav;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzav;->zzo(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
