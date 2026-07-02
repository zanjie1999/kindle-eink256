.class public Lcom/audible/sdk/SdkUtils;
.super Ljava/lang/Object;
.source "SdkUtils.java"


# static fields
.field private static final CODEC_ACELP16:Ljava/lang/String; = "_acelp16"

.field private static final CODEC_ACELP85:Ljava/lang/String; = "_acelp85"

.field private static final CODEC_MP332:Ljava/lang/String; = "_mp332"

.field private static final CODEC_REV1:Ljava/lang/String; = "_rev1"

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/sdk/SdkUtils;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/sdk/SdkUtils;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxAvailableTimeMs(Lcom/audible/sdk/AudibleSDK;)I
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/audible/sdk/AudibleSDK;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    sget-object p0, Lcom/audible/sdk/SdkUtils;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "No file loaded, time available is 0"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    .line 65
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 71
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/audible/sdk/AudibleSDK;->byteOffsetToTimeOffset(J)I

    move-result v2

    .line 73
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 75
    sget-object v0, Lcom/audible/sdk/SdkUtils;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Native exception getting time available {}, time available will be 0"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public static stripCodecFromProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ""

    const-string v1, "_mp332"

    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_acelp85"

    .line 42
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_acelp16"

    .line 43
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_rev1"

    .line 44
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
