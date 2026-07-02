.class public final Lcom/amazon/android/docviewer/KindleDocViewerGenerator;
.super Ljava/lang/Object;
.source "KindleDocViewerGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMER_KEY:Ljava/lang/String; = "BookOpenTimer"


# instance fields
.field private defaultFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/KindleDocViewerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/KindleDocViewerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackFactory:Lcom/amazon/android/docviewer/KindleDocViewerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->factories:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->defaultFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->fallbackFactory:Lcom/amazon/android/docviewer/KindleDocViewerFactory;

    .line 45
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->fallbackFactory:Lcom/amazon/android/docviewer/KindleDocViewerFactory;

    return-void
.end method

.method private static formatBookTypeTimerKey(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 3

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocViewer"

    const-string v2, "View"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getCDEBookFormat()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown"

    .line 201
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 3

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/KindleDocViewerFactory;

    .line 151
    invoke-interface {v2, p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerFactory;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->defaultFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/KindleDocViewerFactory;

    .line 161
    invoke-interface {v2, p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerFactory;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->fallbackFactory:Lcom/amazon/android/docviewer/KindleDocViewerFactory;

    invoke-interface {v1, p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewerFactory;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazon/android/docviewer/KindleDocViewerGenerator$InvalidBookCompositionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    const-string v1, "A DocViewerFactory threw an InvalidBookCompositionException. Not trying to open document."

    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    if-nez p2, :cond_6

    .line 178
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string v1, "Unable to open item "

    if-eqz v0, :cond_4

    .line 179
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_4
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, "Sideloaded book"

    :goto_1
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_2
    invoke-static {p1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BookOpenFailure-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "CONTENT_OPEN"

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_6
    return-object p2
.end method

.method private register(Lcom/amazon/android/docviewer/KindleDocViewerFactory;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->defaultFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->defaultFactories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->factories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 76
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    const-string p2, "Trying to add the same factory again"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public create(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 16

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v0, 0x0

    .line 99
    invoke-static {v0}, Lcom/amazon/kcp/debug/AaMenuUtils;->enableCache(Z)V

    .line 101
    invoke-direct/range {p0 .. p2}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->openBook(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v9

    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->markBookAsRead(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_0
    if-eqz v9, :cond_3

    .line 112
    invoke-interface {v9}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 113
    instance-of v2, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 115
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v11, v0, v7

    .line 116
    invoke-static {v9}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->formatBookTypeTimerKey(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v13

    .line 117
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "OpenReaderCommnadTimer"

    const-string v2, "BookOpenTimer"

    move-object v0, v6

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookOpenTimer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "OpenReaderCommnadTimer"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    if-eqz v10, :cond_2

    .line 120
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MopDoc"

    const-string v2, "OpenedMOP"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v10

    sget-object v13, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v14, v0, v7

    const-string v11, "MopDocTimer"

    const-string v12, "OpenedMOPTimer"

    invoke-virtual/range {v10 .. v15}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 124
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->onNewBookOpen()V

    .line 127
    invoke-interface {v9}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0, v9}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialize(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_3
    return-object v9
.end method

.method public markBookAsRead(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/model/content/LocalBookState;->setBookRead(Z)V

    .line 213
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 215
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    const-string v1, "Unable to persist bookState in markBookAsRead"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->TAG:Ljava/lang/String;

    const-string v0, "Unable to persist bookState in markBookAsRead, caught an IOException"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public registerDefaultFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->register(Lcom/amazon/android/docviewer/KindleDocViewerFactory;Z)Z

    move-result p1

    return p1
.end method

.method public registerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->register(Lcom/amazon/android/docviewer/KindleDocViewerFactory;Z)Z

    move-result p1

    return p1
.end method
