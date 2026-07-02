.class public Lcom/amazon/kindle/services/download/ContentDownload;
.super Ljava/lang/Object;
.source "ContentDownload.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IContentDownload;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bookId:Ljava/lang/String;

.field private currentOpenableProgress:J

.field private currentProgress:J

.field private currentState:Lcom/amazon/kindle/model/content/ContentState;

.field private downloadStartTime:J

.field downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private final errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

.field private isLuna:Z

.field private mainContentFile:Ljava/lang/String;

.field private maxOpenableProgress:J

.field private maxProgress:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentOpenableProgress:J

    .line 14
    iput-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentProgress:J

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxOpenableProgress:J

    .line 16
    iput-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxProgress:J

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->bookId:Ljava/lang/String;

    .line 39
    new-instance p1, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    .line 40
    iput-object p2, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method static getProgressPercentage(JJ)I
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p0, p0, v0

    .line 34
    div-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/services/download/ContentDownload;
    .locals 3

    .line 161
    new-instance v0, Lcom/amazon/kindle/services/download/ContentDownload;

    iget-object v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->bookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 162
    iget-wide v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->setCurrentProgress(J)V

    .line 163
    iget-wide v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentOpenableProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->setCurrentOpenableProgress(J)V

    .line 164
    iget-wide v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadStartTime:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->setDownloadStartTime(J)V

    .line 165
    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/ContentDownload;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 166
    iget-boolean v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->isLuna:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/download/ContentDownload;->setIsLuna(Z)V

    .line 167
    iget-wide v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->setMaxProgress(J)V

    .line 168
    iget-wide v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxOpenableProgress:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->setMaxOpenableProgress(J)V

    .line 169
    iget-object v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentState:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/download/ContentDownload;->setState(Lcom/amazon/kindle/model/content/ContentState;)V

    .line 170
    iget-object v1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->mainContentFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/download/ContentDownload;->setMainContentFile(Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/ContentDownload;->clone()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStartTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadStartTime:J

    return-wide v0
.end method

.method public getDownloadTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-object v0
.end method

.method public getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getMainContentFile()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->mainContentFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxOpenableProgress()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxOpenableProgress:J

    return-wide v0
.end method

.method public getMaxProgress()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxProgress:J

    return-wide v0
.end method

.method public getOpenablePercentage()I
    .locals 4

    .line 77
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentOpenableProgress:J

    iget-wide v2, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxOpenableProgress:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/services/download/ContentDownload;->getProgressPercentage(JJ)I

    move-result v0

    return v0
.end method

.method public getOpenableProgress()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentOpenableProgress:J

    return-wide v0
.end method

.method public getPercentage()I
    .locals 4

    .line 72
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentProgress:J

    iget-wide v2, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxProgress:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/services/download/ContentDownload;->getProgressPercentage(JJ)I

    move-result v0

    return v0
.end method

.method public getProgress()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentProgress:J

    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentState:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public isLuna()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->isLuna:Z

    return v0
.end method

.method public setCurrentOpenableProgress(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentOpenableProgress:J

    return-void
.end method

.method setCurrentProgress(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentProgress:J

    return-void
.end method

.method setDownloadStartTime(J)V
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->downloadStartTime:J

    return-void
.end method

.method setErrorDescriber(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method

.method setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/services/download/ContentDownload;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method setIsLuna(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->isLuna:Z

    return-void
.end method

.method public setMainContentFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->mainContentFile:Ljava/lang/String;

    return-object p1
.end method

.method setMaxOpenableProgress(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxOpenableProgress:J

    return-void
.end method

.method setMaxProgress(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->maxProgress:J

    return-void
.end method

.method setState(Lcom/amazon/kindle/model/content/ContentState;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazon/kindle/services/download/ContentDownload;->currentState:Lcom/amazon/kindle/model/content/ContentState;

    return-void
.end method
