.class abstract Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;
.super Ljava/lang/Object;
.source "AbstractDetArtifactProcessor.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;


# static fields
.field protected static final ARTIFACT_BUFFER_SIZE:I = 0x6400

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected final mBuffer:[C

.field protected final mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

.field protected final mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

.field protected final mDeviceType:Ljava/lang/String;

.field protected final mExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "AbstractDetArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/utils/det/DetUtil;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6400

    new-array v0, v0, [C

    .line 31
    iput-object v0, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mBuffer:[C

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    .line 54
    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDeviceType:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mExtraInfo:Ljava/util/Map;

    .line 69
    new-instance p1, Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-direct {p1}, Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceType must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DetUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ARTIFACT_UPLOAD"

    .line 161
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->addHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method protected addHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/utils/det/DetUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v4, "StartTime"

    invoke-interface {v3, v4, v2, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 153
    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v4, "EndTime"

    invoke-interface {v3, v4, v2, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 154
    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashTimeUTC"

    invoke-interface {v2, v1, v0, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashType"

    invoke-interface {v0, v2, v1, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 157
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->addSpecificHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract addSpecificHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract canProcessTag(Ljava/lang/String;)Z
.end method

.method public processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ARTIFACT_UPLOAD"

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Error closing crash report file"

    const-string v1, "constructCrashUploadMessage"

    if-eqz p2, :cond_2

    const-string v2, "BUILD_MAP"

    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ARTIFACT_UPLOAD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown Action!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 113
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x6400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 116
    :try_start_0
    new-instance v5, Lcom/amazon/device/utils/det/MfbsInputStream;

    invoke-direct {v5, v2}, Lcom/amazon/device/utils/det/MfbsInputStream;-><init>(Ljava/io/BufferedReader;)V

    .line 118
    invoke-virtual {v5}, Lcom/amazon/device/utils/det/MfbsInputStream;->getLogFileWriter()Ljava/io/Writer;

    move-result-object v6

    .line 120
    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v8, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    iget-object v9, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDeviceType:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mExtraInfo:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/amazon/device/utils/det/DetUtil;->addMetadataSectionHeader(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/util/Map;Ljava/io/Writer;)V

    .line 122
    invoke-virtual {p0, p1, v2, v6, p2}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->addHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/det/DetUtil;->addEventsSectionHeader(Ljava/io/Writer;)V

    .line 126
    invoke-virtual {v5}, Lcom/amazon/device/utils/det/MfbsInputStream;->pump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v1, v0, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v5

    :catchall_0
    move-exception p1

    .line 131
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 133
    sget-object v2, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-virtual {v2, v1, v0, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_2
    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Action Cannot be NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
