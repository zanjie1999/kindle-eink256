.class public final Lcom/google/android/gms/internal/firebase_messaging/zzv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase_messaging/zzz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;-><init>(ILcom/google/android/gms/internal/firebase_messaging/zzy;)V

    return-object v0
.end method
