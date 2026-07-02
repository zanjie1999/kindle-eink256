.class final synthetic Lcom/google/android/gms/internal/ads/zzede;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzedi;

.field private final zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzedi;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzede;->zza:Lcom/google/android/gms/internal/ads/zzedi;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzede;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzede;->zza:Lcom/google/android/gms/internal/ads/zzedi;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzede;->zzb:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzb(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
