.class public Lcom/audible/mobile/activation/ActivationFileDataRepository;
.super Ljava/lang/Object;
.source "ActivationFileDataRepository.java"

# interfaces
.implements Lcom/audible/mobile/activation/ActivationDataRepository;


# static fields
.field private static final ACTIVATION_DATA_SIZE:I = 0x230

.field private static final ACTIVATION_FILE_NAME:Ljava/lang/String; = "AudibleActivation.sys"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final activationDataFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/activation/ActivationFileDataRepository;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "AudibleActivation.sys"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/activation/ActivationFileDataRepository;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "File must not be null"

    .line 51
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final isActivated()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/audible/mobile/activation/ActivationFileDataRepository;->queryActivationData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final persistActivationData([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 116
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 122
    invoke-static {v2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    throw p1

    .line 122
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0
.end method

.method public final queryActivationData()[B
    .locals 7

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/audible/mobile/activation/ActivationFileDataRepository;->activationDataFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x230

    :try_start_1
    new-array v0, v2, [B

    .line 87
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {v1}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lcom/audible/mobile/activation/ActivationFileDataRepository;->logger:Lorg/slf4j/Logger;

    const-string v2, "No activation data found, returning null"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 90
    :goto_1
    :try_start_3
    sget-object v3, Lcom/audible/mobile/activation/ActivationFileDataRepository;->logger:Lorg/slf4j/Logger;

    const-string v4, "Exception getting activation data {}"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v1}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    throw v0
.end method
