.class public Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;
.super Lcom/amazon/kedu/ftue/events/Tutorial;
.source "EducationFeaturesTutorial.java"


# instance fields
.field private volatile lastWorkingXrayState:Z

.field private requiresXray:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/kedu/ftue/events/TutorialPageProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/kedu/ftue/events/Tutorial;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->lastWorkingXrayState:Z

    .line 36
    iput-boolean p4, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->requiresXray:Z

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 7

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->isXrayForTextbooksEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v3

    .line 52
    iget-boolean v4, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->requiresXray:Z

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->requiresXray:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result v4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 108
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method getSidecarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 94
    invoke-interface {v0, p2, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KLO.entities"

    if-eqz p1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".asc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method isSidecarPresent(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isXrayForTextbooksEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->lastWorkingXrayState:Z

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->isSidecarPresent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    .line 69
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->lastWorkingXrayState:Z

    :cond_0
    return v0
.end method
