.class public final Lcom/google/android/gms/internal/measurement/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzi;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;-><init>(Lcom/google/android/gms/internal/measurement/zzj;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzl;->zza:Lcom/google/android/gms/internal/measurement/zzi;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzi;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzi;

    return-object v0
.end method
