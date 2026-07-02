.class Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;
.super Ljava/lang/Object;
.source "LibraryBookBuilderMonitor.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;


# static fields
.field private static final ATTEMPTS_SUFFIX:Ljava/lang/String; = ".attempts"

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final METRICS_CLASS:Ljava/lang/String; = "LibraryBookBuilderMonitor"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookToIgnore:Ljava/util/Properties;

.field private bookToIgnorePath:Ljava/lang/String;

.field private fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/bookToIgnore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnorePath:Ljava/lang/String;

    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {p2, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    invoke-virtual {p2, p1}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    sget-object p2, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->TAG:Ljava/lang/String;

    const-string v0, "Unable to read the books to ignore"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private flush()V
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnorePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    const-string v2, "Books to ignore due to bad content"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write the books to ignore"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addInvalidBook(Ljava/lang/String;)Z
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NumberFormatException"

    .line 117
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    add-int/2addr v1, v5

    .line 120
    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->flush()V

    const/4 p1, 0x3

    if-lt v1, p1, :cond_1

    const-string p1, "MaxAttempts"

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, "AttemptCount"

    .line 130
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddInvalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "LibraryBookBuilderMonitor"

    invoke-virtual {v1, v3, p1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    :cond_2
    return v5
.end method

.method public isInvalidBook(Ljava/lang/String;)Z
    .locals 9

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->fileSize(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    const-string v3, "LibraryBookBuilderMonitor"

    const-wide/16 v4, 0x64

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const-string v0, ".txt"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "CheckInvalid:TooSmall"

    invoke-virtual {p1, v3, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return v2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".attempts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 81
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 82
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->removeInvalidBook(Ljava/lang/String;)Z

    return v4

    .line 91
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CheckInvalid:TooManyFailedAttempts"

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 99
    :catch_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->removeInvalidBook(Ljava/lang/String;)Z

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->flush()V

    :cond_2
    return v4
.end method

.method public removeInvalidBook(Ljava/lang/String;)Z
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->bookToIgnore:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".attempts"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int p1, v0, v1

    if-eqz p1, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;->flush()V

    :cond_2
    return p1
.end method
