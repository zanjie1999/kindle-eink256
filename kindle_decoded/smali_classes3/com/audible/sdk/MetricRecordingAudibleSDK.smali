.class public Lcom/audible/sdk/MetricRecordingAudibleSDK;
.super Lcom/audible/sdk/AudibleSDK;
.source "MetricRecordingAudibleSDK.java"


# instance fields
.field private final metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/audible/sdk/AudibleSDK;-><init>()V

    const-string v0, "MetricManager must not be null"

    .line 25
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-direct {v0, p1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    return-void
.end method


# virtual methods
.method public authenticate([BLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/DeviceNotActivatedForThisFileException;,
            Lcom/audible/sdk/DeviceNotActivatedException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startAuthenticateTimer()V

    .line 88
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->authenticate([BLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object p2, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {p2}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAuthenticateTimer()V

    return p1

    :catch_0
    move-exception p1

    .line 90
    iget-object p2, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {p2, p1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->recordAuthenticateException(Ljava/lang/Exception;)V

    .line 91
    throw p1
.end method

.method public closeFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startCloseFileTimer()V

    .line 128
    invoke-super {p0}, Lcom/audible/sdk/AudibleSDK;->closeFile()Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopCloseFileTimer()V

    return v0
.end method

.method public getAudioSectionOffset(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startReadAudioSectionOffsetTimer()V

    .line 110
    invoke-super {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getAudioSectionOffset(Ljava/lang/String;)I

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopReadAudioSectionOffsetTimer()V

    return p1
.end method

.method public getCoverArtBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startReadCoverArtTimer()V

    .line 67
    invoke-super {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getCoverArtBytes(I)[B

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopReadCoverArtTimer()V

    return-object p1
.end method

.method public getCoverArtInfo(I)Lcom/audible/sdk/AudibleSDK$CoverArtInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startReadCoverArtInfoTimer()V

    .line 76
    invoke-super {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getCoverArtInfo(I)Lcom/audible/sdk/AudibleSDK$CoverArtInfo;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopReadCoverArtInfoTimer()V

    return-object p1
.end method

.method public getMetadataByTag(I)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startReadMetadataTimer()V

    .line 49
    invoke-super {p0, p1}, Lcom/audible/sdk/AudibleSDK;->getMetadataByTag(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopReadMetadataTimer()V

    return-object p1
.end method

.method public getMetadataInfo(Lcom/audible/sdk/AudibleSDK$MetadataTag;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startReadMetadataInfoTimer()V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->getMetadataInfo(Lcom/audible/sdk/AudibleSDK$MetadataTag;I)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {p2}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopReadMetadataInfoTimer()V

    return p1
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/audible/sdk/UnsupportedFileFormatException;,
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startOpenFileTimer()V

    .line 36
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/audible/sdk/AudibleSDK;->openFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget-object p2, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {p2}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopOpenFileTimer()V

    return p1

    :catch_0
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {p2, p1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->recordOpenFileException(Ljava/lang/Exception;)V

    .line 39
    throw p1
.end method

.method public seek(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startSeekTimer()V

    .line 101
    invoke-super {p0, p1}, Lcom/audible/sdk/AudibleSDK;->seek(I)Z

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopSeekTimer()V

    return p1
.end method

.method public verifyFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/sdk/AudibleSDKException;,
            Lcom/audible/sdk/UnsupportedFileFormatException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->startVerifyFileTimer()V

    .line 119
    invoke-super {p0}, Lcom/audible/sdk/AudibleSDK;->verifyFile()Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/audible/sdk/MetricRecordingAudibleSDK;->metricRecorder:Lcom/audible/sdk/metric/LegacySdkMetricRecorder;

    invoke-virtual {v1}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopVerifyFileTimer()V

    return v0
.end method
