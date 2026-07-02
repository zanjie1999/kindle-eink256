.class public Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;
.super Ljava/lang/Object;
.source "ReadingStreamUtil.java"


# static fields
.field private static final ANNOTATION_SYNC_SETTING_TOPIC:Ljava/lang/String; = "Configuration.DeviceAccount"

.field private static final TAG:Ljava/lang/String;

.field private static isReadingContextVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 272
    sput-boolean v0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->isReadingContextVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
    .locals 1

    .line 554
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static isMop(Lcom/amazon/android/docviewer/KindleDoc;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 538
    instance-of v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPositionValid(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs makeMetadata([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 412
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 413
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 414
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v3, p0, v3

    goto :goto_1

    :cond_0
    const-string v3, "ERROR_NO_VALUE"

    .line 415
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 453
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    .line 454
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    .line 456
    invoke-static {p0, p1, v1, v0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;II)V

    return-void
.end method

.method public static recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;II)V
    .locals 6

    .line 467
    invoke-static {}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->getEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 470
    sget-object p0, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->TAG:Ljava/lang/String;

    const-string p1, "ReadingStreamsEncoder is null"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 482
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 485
    :cond_2
    invoke-static {v1}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->isMop(Lcom/amazon/android/docviewer/KindleDoc;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 486
    invoke-static {p2}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->isPositionValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->isPositionValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 488
    invoke-static {p0, p1}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->getCSMetadata(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "verticalScrollState"

    invoke-interface {v5, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Reading"

    const-string v2, "Text"

    move v3, p2

    move v4, p3

    .line 490
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static sendAnnotationBackupSettingState(Z)V
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "annotation.backup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAnnotationBackupSettingState payloadStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 387
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil$1;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
