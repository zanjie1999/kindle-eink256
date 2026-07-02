.class public Lcom/amazon/device/crashmanager/Artifact;
.super Ljava/lang/Object;
.source "Artifact.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mCrashDescriptor:Ljava/lang/String;

.field private final mCreationTimeUTCMillis:J

.field private final mInputStream:Ljava/io/InputStream;

.field private mMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mMetadataMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 48
    iput-object p1, p0, Lcom/amazon/device/crashmanager/Artifact;->mTag:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    .line 50
    iput-wide p3, p0, Lcom/amazon/device/crashmanager/Artifact;->mCreationTimeUTCMillis:J

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Creation Time cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact InputSteam cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact tag cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCrashDescriptor()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mCrashDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeUTCMillis()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mCreationTimeUTCMillis:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mMetadataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public removeMetadata(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/device/crashmanager/Artifact;->mMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCrashDescriptor(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/device/crashmanager/Artifact;->mCrashDescriptor:Ljava/lang/String;

    return-void
.end method

.method public shouldUploadArtifact()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
