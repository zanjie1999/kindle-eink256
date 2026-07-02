.class public abstract Lcom/google/android/gms/internal/firebase_messaging/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase_messaging/zzae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzad;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzd;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzad;->zza()Lcom/google/android/gms/internal/firebase_messaging/zzae;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zze;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzae;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/Object;)[B
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zze;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzae;

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzae;->zza(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zzc()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
.end method
