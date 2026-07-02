.class public final Lcom/google/android/gms/internal/firebase_messaging/zzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase_messaging/zzf;

.field private static volatile zzb:Lcom/google/android/gms/internal/firebase_messaging/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzh;-><init>(Lcom/google/android/gms/internal/firebase_messaging/zzg;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzi;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzf;

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzi;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzf;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_messaging/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzi;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzf;

    return-object v0
.end method
