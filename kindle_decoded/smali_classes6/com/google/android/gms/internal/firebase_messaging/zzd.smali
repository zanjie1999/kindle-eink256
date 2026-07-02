.class public final Lcom/google/android/gms/internal/firebase_messaging/zzd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/config/EncoderConfig<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zza;->zza:Lcom/google/android/gms/internal/firebase_messaging/zza;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
