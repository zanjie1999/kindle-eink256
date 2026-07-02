.class final synthetic Lcom/google/android/gms/internal/ads/zzedk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzh(Lcom/google/android/gms/internal/ads/zzcgy;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
