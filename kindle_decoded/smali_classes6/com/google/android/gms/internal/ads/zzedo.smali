.class final synthetic Lcom/google/android/gms/internal/ads/zzedo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzedq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzeds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeds;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedo;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedo;->zzb:Lcom/google/android/gms/internal/ads/zzeds;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzf(Lcom/google/android/gms/internal/ads/zzeds;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
