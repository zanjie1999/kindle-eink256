.class public Lcom/amazon/whispersync/device/crashmanager/Artifact;
.super Ljava/lang/Object;
.source "Artifact.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mCrashDescriptor:Ljava/lang/String;

.field private final mCreationTimeUTCMillis:J

.field private final mInputStream:Ljava/io/InputStream;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mTag:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    .line 46
    iput-wide p3, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mCreationTimeUTCMillis:J

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Creation Time cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact InputSteam cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact tag cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getCrashDescriptor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mCrashDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeUTCMillis()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mCreationTimeUTCMillis:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setCrashDescriptor(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/Artifact;->mCrashDescriptor:Ljava/lang/String;

    return-void
.end method
