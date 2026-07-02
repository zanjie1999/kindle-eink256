.class public Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/random/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinuxPRNGSecureRandom"
.end annotation


# static fields
.field private static final URANDOM_FILE:Ljava/io/File;

.field private static final sLock:Ljava/lang/Object;

.field private static sUrandomIn:Ljava/io/DataInputStream;

.field private static sUrandomOut:Ljava/io/OutputStream;


# instance fields
.field private mBackupRandom:Ljava/util/Random;

.field private mSeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 215
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mBackupRandom:Ljava/util/Random;

    return-void
.end method

.method private getUrandomInputStream()Ljava/io/DataInputStream;
    .locals 5

    .line 282
    sget-object v0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 289
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 292
    :try_start_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 296
    :cond_0
    :goto_0
    sget-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 297
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getUrandomOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    .line 305
    :cond_0
    sget-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 0

    .line 276
    new-array p1, p1, [B

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->engineNextBytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .locals 3

    .line 244
    iget-boolean v0, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/amazon/whispercloak/random/PRNGFixes;->access$100()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->engineSetSeed([B)V

    :cond_0
    const/4 v0, 0x0

    .line 250
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 251
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 252
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 254
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 255
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 266
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 255
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v2

    .line 252
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    .line 261
    :catch_0
    :try_start_9
    invoke-static {}, Lcom/amazon/whispercloak/random/PRNGFixes;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException thrown reading /dev/urandom. Falling back to java.util.Random"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mBackupRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextBytes([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 266
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 271
    :catch_2
    :cond_2
    throw p1
.end method

.method protected engineSetSeed([B)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    :try_start_0
    sget-object v2, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 223
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 225
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    iput-boolean v0, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-eqz v1, :cond_0

    .line 234
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 223
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 229
    :catch_0
    :try_start_6
    invoke-static {}, Lcom/amazon/whispercloak/random/PRNGFixes;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to mix seed into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    iput-boolean v0, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_1
    :cond_0
    :goto_1
    return-void

    :goto_2
    iput-boolean v0, p0, Lcom/amazon/whispercloak/random/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-eqz v1, :cond_1

    .line 234
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 239
    :catch_2
    :cond_1
    throw p1
.end method
