.class public final enum Lcom/google/android/gms/internal/firebase_messaging/zzy;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_messaging/zzy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_messaging/zzy;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase_messaging/zzy;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    .line 1
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;

    const/4 v2, 0x1

    const-string v3, "SIGNED"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;

    const/4 v3, 0x2

    const-string v4, "FIXED"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/firebase_messaging/zzy;

    sget-object v5, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_messaging/zzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzy;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_messaging/zzy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_messaging/zzy;

    return-object v0
.end method
