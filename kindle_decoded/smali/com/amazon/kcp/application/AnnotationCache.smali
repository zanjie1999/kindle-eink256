.class public Lcom/amazon/kcp/application/AnnotationCache;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAnnotationCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AnnotationCache$BookRecord;,
        Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;,
        Lcom/amazon/kcp/application/AnnotationCache$BookData;,
        Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    }
.end annotation


# static fields
.field private static final ANNOTATION_CACHE_FILE:Ljava/lang/String; = "CAnnotationCache.xml"

.field private static final DEFAULTS_IS_SYNC_ENABLED:Ljava/lang/String; = "autoSyncEnabled"

.field private static final JOURNAL_CONTENT_TYPE:Ljava/lang/String; = "application/x-octet-stream"

.field private static final JOURNAL_VERSION:Ljava/lang/String; = "1.0"

.field protected static final METRICS_CLASS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/application/AnnotationCache;


# instance fields
.field private appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

.field private final booksAnnotation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/sync/annotation/IBookData;",
            "Lcom/amazon/kcp/application/AnnotationCache$BookRecord;",
            ">;"
        }
    .end annotation
.end field

.field private fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private volatile garbleJournalUploadUrl:Z

.field private volatile isAnnotationSyncSuppressed:Z

.field private path:Ljava/lang/String;

.field private persistedAnnotationsVersion:Ljava/lang/String;

.field private volatile syncAnnotations:Z

.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-class v0, Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AnnotationCache;->METRICS_CLASS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;)V
    .locals 2

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$BookData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$BookData;-><init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->persistedAnnotationsVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CAnnotationCache.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 410
    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 411
    iput-object p3, p0, Lcom/amazon/kcp/application/AnnotationCache;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 412
    iput-object p4, p0, Lcom/amazon/kcp/application/AnnotationCache;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    .line 414
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/AnnotationCache;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/application/AnnotationCache;->persistedAnnotationsVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/application/AnnotationCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->persistedAnnotationsVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Lcom/amazon/kcp/application/MBPBookData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/application/AnnotationCache;)Lcom/amazon/kcp/application/AnnotationCache$BookData;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    return-object p0
.end method

.method private buildBookTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IBookData;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IBookData;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1120
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getCdeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1126
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<book guid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" key=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getCdeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" version=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" format=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1134
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1136
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1137
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1140
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->buildMobi7AnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "mobi8"

    .line 1141
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1142
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->buildMobi8AnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "topaz"

    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1144
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->buildTopazAnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1145
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yjbinary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 1146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->buildYJAnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1149
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->buildMobi7AnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const-string p1, "</book>"

    .line 1153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1121
    :cond_6
    :goto_1
    sget-object p2, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping book from journal due to null GUID or ASIN or CDETYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getCdeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private buildMobi7AnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;
    .locals 11

    .line 1244
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1245
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    .line 1265
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v7, "Error: Started adding unknown annotation type to journal"

    invoke-static {v1, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<continuous_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1262
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<graphical_highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1250
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<last_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1259
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1256
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<note"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1247
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<bookmark"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache;->getUploadAnnotationState(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)[B

    move-result-object v1

    .line 1271
    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache;->encodeState([B)Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v4, v7, :cond_8

    .line 1273
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v3, v7, :cond_8

    .line 1274
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v7

    if-nez v7, :cond_6

    .line 1275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"create\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1276
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 1277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"modify\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1278
    :cond_7
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v7

    if-ne v5, v7, :cond_8

    .line 1279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"delete\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    :cond_8
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin=\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1285
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 1286
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v8

    if-eq v8, v2, :cond_9

    .line 1287
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v8

    if-ne v8, v6, :cond_a

    .line 1288
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " end=\""

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1291
    :cond_a
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v8

    if-eq v8, v4, :cond_b

    .line 1292
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v8

    if-ne v8, v3, :cond_c

    .line 1293
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " location=\""

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1296
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pos=\""

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\" state=\""

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" timestamp=\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->getMetadataTag(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eqz v1, :cond_13

    if-eq v1, v6, :cond_11

    if-eq v1, v5, :cond_10

    if-eq v1, v4, :cond_f

    if-eq v1, v2, :cond_e

    if-eq v1, v3, :cond_d

    .line 1326
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v1, "Error: Done adding unknown annotation type to journal"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1307
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</continuous_read>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1316
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</graphical_highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1304
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</last_read>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1313
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1319
    :cond_11
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, ""

    .line 1323
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</note>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1310
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</bookmark>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private buildMobi8AnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;
    .locals 8

    .line 1335
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1336
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    .line 1356
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v7, "Error: Started adding unknown annotation type to journal"

    invoke-static {v1, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<continuous_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1353
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<graphical_highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1341
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<last_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1350
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1347
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<note"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1338
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<bookmark"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v4, v1, :cond_8

    .line 1361
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v3, v1, :cond_8

    .line 1362
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"create\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1364
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-ne v6, v1, :cond_7

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"modify\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1366
    :cond_7
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-ne v5, v1, :cond_8

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"delete\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    :cond_8
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v7, v5, :cond_9

    .line 1374
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v7, v6, :cond_9

    .line 1375
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-ne v7, v2, :cond_a

    .line 1376
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end=\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    :cond_a
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v7, v4, :cond_c

    .line 1381
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-ne v7, v3, :cond_b

    goto :goto_2

    .line 1384
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->getMetadataTag(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1382
    :cond_c
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " location=\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1387
    :goto_3
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eqz v7, :cond_13

    if-eq v7, v6, :cond_11

    if-eq v7, v5, :cond_10

    const-string v5, "/>"

    const-string v6, " timestamp=\""

    if-eq v7, v4, :cond_f

    if-eq v7, v2, :cond_e

    if-eq v7, v3, :cond_d

    .line 1413
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v0, "Error: Done adding unknown annotation type to journal"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1393
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 1403
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</graphical_highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1389
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1400
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1406
    :cond_11
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, ""

    .line 1410
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</note>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1397
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</bookmark>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method private buildTopazAnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;
    .locals 10

    .line 1160
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1161
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 1178
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v6, "Error: Started adding unknown annotation type to journal"

    invoke-static {v1, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<continuous_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<last_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1175
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1172
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<note"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1163
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<bookmark"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache;->getUploadAnnotationState(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)[B

    move-result-object v1

    .line 1183
    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache;->encodeState([B)Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v6

    if-eq v3, v6, :cond_7

    .line 1186
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v6

    if-eq v2, v6, :cond_7

    .line 1187
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    .line 1188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"create\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1189
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 1190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"modify\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1191
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v6

    if-ne v4, v6, :cond_7

    .line 1192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"delete\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    :cond_7
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin=\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1198
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 1199
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-ne v7, v5, :cond_9

    .line 1200
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " end=\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1203
    :cond_9
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-eq v7, v3, :cond_a

    .line 1204
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    if-ne v7, v2, :cond_b

    .line 1205
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " location=\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1208
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pos=\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\" state=\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" timestamp=\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->getMetadataTag(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eqz v1, :cond_11

    if-eq v1, v5, :cond_f

    if-eq v1, v4, :cond_e

    if-eq v1, v3, :cond_d

    if-eq v1, v2, :cond_c

    .line 1235
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v1, "Error: Done adding unknown annotation type to journal"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1219
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</continuous_read>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1216
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</last_read>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1225
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1228
    :cond_f
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, ""

    .line 1232
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</note>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1222
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</bookmark>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private buildYJAnnotationSpecificTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;
    .locals 10

    .line 1422
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1423
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 1443
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v7, "Error: Started adding unknown annotation type to journal"

    invoke-static {v1, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1431
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<continuous_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1440
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<graphical_highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1428
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<last_read"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<highlight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<note"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1425
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<bookmark"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v4, v1, :cond_8

    .line 1449
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v2, v1, :cond_8

    .line 1450
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"create\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1452
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-ne v6, v1, :cond_7

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"modify\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1454
    :cond_7
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getAction()I

    move-result v1

    if-ne v5, v1, :cond_8

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action=\"delete\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    :cond_8
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const-string v7, "\""

    if-ne v1, v3, :cond_9

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " beginLongFormat=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1462
    :cond_9
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const-string v8, " begin=\""

    if-eq v1, v5, :cond_a

    .line 1463
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v1, v6, :cond_a

    .line 1464
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-nez v1, :cond_b

    .line 1465
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1468
    :cond_b
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 1469
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache;->getUploadAnnotationState(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)[B

    move-result-object v1

    .line 1470
    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache;->encodeState([B)Ljava/lang/String;

    move-result-object v1

    .line 1471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " endLongFormat=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " posLongFormat=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" state=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" timestamp=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    :cond_c
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 1479
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v6, :cond_e

    .line 1480
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " end=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1484
    :cond_e
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v1, v4, :cond_10

    .line 1485
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v2, :cond_f

    goto :goto_2

    .line 1489
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->getMetadataTag(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1486
    :cond_10
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " location=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    :goto_3
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eqz v1, :cond_17

    if-eq v1, v6, :cond_15

    if-eq v1, v5, :cond_14

    const-string v5, "/>"

    const-string v6, " timestamp=\""

    if-eq v1, v4, :cond_13

    if-eq v1, v3, :cond_12

    if-eq v1, v2, :cond_11

    .line 1518
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v1, "Error: Done adding unknown annotation type to journal"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1498
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1508
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</graphical_highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1494
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1505
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</highlight>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1511
    :cond_15
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    const-string p1, ""

    .line 1515
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</note>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1502
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</bookmark>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method static decodeState(Ljava/lang/String;)[B
    .locals 6

    if-eqz p0, :cond_2

    .line 1649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1653
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1654
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    .line 1656
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 1657
    invoke-static {v2, v4, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 1658
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private deletePersistedFileIfExists()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    .line 1073
    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private deserialize(Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;->getAnnotations()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    .line 968
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 969
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    .line 971
    invoke-virtual {p0, p1, v2}, Lcom/amazon/kcp/application/AnnotationCache;->annotationChanged(Lcom/amazon/kindle/model/sync/annotation/IBookData;Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deserialize(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Close file error"

    .line 420
    iget-object v3, v1, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const/4 v4, 0x1

    const-string v5, "autoSyncEnabled"

    invoke-interface {v3, v5, v4}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    if-nez v0, :cond_0

    .line 423
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v2, "Invalid path to annotation cache"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_0
    iget-object v3, v1, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {v3, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->openFileInputStream(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/kindle/io/IFileInputStream;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 435
    :cond_1
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 440
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    const-string v7, "annotations"

    .line 441
    invoke-virtual {v5, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 447
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$1;

    invoke-direct {v7, v1}, Lcom/amazon/kcp/application/AnnotationCache$1;-><init>(Lcom/amazon/kcp/application/AnnotationCache;)V

    invoke-virtual {v5, v8, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const-string/jumbo v9, "version"

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 456
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$2;

    invoke-direct {v7, v1}, Lcom/amazon/kcp/application/AnnotationCache$2;-><init>(Lcom/amazon/kcp/application/AnnotationCache;)V

    invoke-virtual {v5, v9, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 465
    :goto_3
    new-instance v10, Lcom/amazon/kcp/application/MBPBookData;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v11, v11}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_8

    if-eqz v7, :cond_6

    .line 468
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    move-object v5, v11

    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    move-object v5, v11

    :goto_4
    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    const-string v7, "book"

    .line 471
    invoke-virtual {v5, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    .line 472
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$3;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$3;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    .line 473
    invoke-virtual {v5, v8, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    .line 481
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$4;

    invoke-direct {v7, v1}, Lcom/amazon/kcp/application/AnnotationCache$4;-><init>(Lcom/amazon/kcp/application/AnnotationCache;)V

    .line 482
    invoke-virtual {v5, v6, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    .line 489
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$5;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$5;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    const-string v12, "guid"

    .line 490
    invoke-virtual {v5, v12, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_d

    if-eqz v5, :cond_d

    .line 497
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$6;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$6;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    const-string v12, "key"

    .line 498
    invoke-virtual {v5, v12, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_e

    if-eqz v5, :cond_e

    .line 505
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$7;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$7;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    const-string/jumbo v12, "type"

    .line 506
    invoke-virtual {v5, v12, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_f

    if-eqz v5, :cond_f

    .line 513
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$8;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$8;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    .line 514
    invoke-virtual {v5, v9, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_10

    if-eqz v5, :cond_10

    .line 521
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$9;

    invoke-direct {v7, v1, v10}, Lcom/amazon/kcp/application/AnnotationCache$9;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    const-string v9, "format"

    invoke-virtual {v5, v9, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    .line 530
    :goto_c
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v10, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v10}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    invoke-direct {v9, v10}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    if-eqz v5, :cond_13

    if-eqz v7, :cond_11

    .line 533
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    if-eqz v7, :cond_12

    move-object v10, v7

    const/4 v7, 0x1

    goto :goto_d

    :cond_11
    move-object v7, v11

    :cond_12
    move-object v10, v7

    const/4 v7, 0x0

    goto :goto_d

    :cond_13
    move-object v10, v11

    :goto_d
    if-eqz v7, :cond_14

    if-eqz v10, :cond_14

    const-string v7, "bookmark"

    .line 535
    invoke-virtual {v10, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_15

    if-eqz v10, :cond_15

    .line 536
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$10;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$10;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 537
    invoke-virtual {v10, v8, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    .line 546
    :goto_f
    invoke-virtual {v9, v6}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    const-string v12, "action"

    if-eqz v7, :cond_16

    if-eqz v10, :cond_16

    .line 548
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$11;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$11;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 549
    invoke-virtual {v10, v12, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    :goto_10
    const-string v13, "begin"

    if-eqz v7, :cond_17

    if-eqz v10, :cond_17

    .line 556
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$12;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$12;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 557
    invoke-virtual {v10, v13, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto :goto_11

    :cond_17
    const/4 v7, 0x0

    :goto_11
    const-string/jumbo v14, "pos"

    if-eqz v7, :cond_18

    if-eqz v10, :cond_18

    .line 564
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$13;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$13;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 565
    invoke-virtual {v10, v14, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    goto :goto_12

    :cond_18
    const/4 v7, 0x0

    :goto_12
    const-string/jumbo v15, "state"

    if-eqz v7, :cond_19

    if-eqz v10, :cond_19

    .line 572
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$14;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$14;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 573
    invoke-virtual {v10, v15, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_13

    :cond_19
    const/4 v7, 0x0

    :goto_13
    const-string/jumbo v11, "timestamp"

    if-eqz v7, :cond_1a

    if-eqz v10, :cond_1a

    .line 580
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$15;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$15;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 581
    invoke-virtual {v10, v11, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_14

    :cond_1a
    const/4 v7, 0x0

    .line 590
    :goto_14
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v10, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v10}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    invoke-direct {v9, v10}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    if-eqz v5, :cond_1d

    if-eqz v7, :cond_1b

    .line 593
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    if-eqz v7, :cond_1c

    move-object v10, v7

    const/4 v7, 0x1

    goto :goto_15

    :cond_1b
    const/4 v7, 0x0

    :cond_1c
    move-object v10, v7

    const/4 v7, 0x0

    goto :goto_15

    :cond_1d
    const/4 v10, 0x0

    :goto_15
    if-eqz v7, :cond_1e

    if-eqz v10, :cond_1e

    const-string v7, "last_read"

    .line 595
    invoke-virtual {v10, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_16

    :cond_1e
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_1f

    if-eqz v10, :cond_1f

    .line 596
    new-instance v7, Lcom/amazon/kcp/application/AnnotationCache$16;

    invoke-direct {v7, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$16;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 597
    invoke-virtual {v10, v8, v7}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_17

    :cond_1f
    const/4 v7, 0x0

    :goto_17
    const/4 v6, 0x3

    .line 606
    invoke-virtual {v9, v6}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    if-eqz v7, :cond_20

    if-eqz v10, :cond_20

    .line 608
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$17;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$17;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 609
    invoke-virtual {v10, v12, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_18

    :cond_20
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_21

    if-eqz v10, :cond_21

    .line 616
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$18;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$18;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 617
    invoke-virtual {v10, v13, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_19

    :cond_21
    const/4 v6, 0x0

    :goto_19
    if-eqz v6, :cond_22

    if-eqz v10, :cond_22

    .line 624
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$19;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$19;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 625
    invoke-virtual {v10, v14, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_1a

    :cond_22
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_23

    if-eqz v10, :cond_23

    .line 632
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$20;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$20;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 633
    invoke-virtual {v10, v15, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    goto :goto_1b

    :cond_23
    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_24

    if-eqz v10, :cond_24

    .line 640
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$21;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$21;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 641
    invoke-virtual {v10, v11, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_1c

    :cond_24
    const/4 v6, 0x0

    :goto_1c
    const-string v7, "location"

    if-eqz v6, :cond_25

    if-eqz v10, :cond_25

    .line 648
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$22;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$22;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v10, v7, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x1

    goto :goto_1d

    :cond_25
    const/4 v6, 0x0

    .line 659
    :goto_1d
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v10, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v10}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    invoke-direct {v9, v10}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    if-eqz v5, :cond_28

    if-eqz v6, :cond_26

    .line 662
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v6

    if-eqz v6, :cond_27

    const/4 v10, 0x1

    goto :goto_1e

    :cond_26
    const/4 v6, 0x0

    :cond_27
    const/4 v10, 0x0

    :goto_1e
    move/from16 v17, v10

    move-object v10, v6

    move/from16 v6, v17

    goto :goto_1f

    :cond_28
    const/4 v10, 0x0

    :goto_1f
    if-eqz v6, :cond_29

    if-eqz v10, :cond_29

    const-string v6, "continuous_read"

    .line 664
    invoke-virtual {v10, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_20

    :cond_29
    const/4 v6, 0x0

    :goto_20
    if-eqz v6, :cond_2a

    if-eqz v10, :cond_2a

    .line 665
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$23;

    invoke-direct {v6, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$23;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 666
    invoke-virtual {v10, v8, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x1

    goto :goto_21

    :cond_2a
    const/4 v6, 0x0

    :goto_21
    const/16 v4, 0x8

    .line 675
    invoke-virtual {v9, v4}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    if-eqz v6, :cond_2b

    if-eqz v10, :cond_2b

    .line 677
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$24;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$24;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 678
    invoke-virtual {v10, v12, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_22

    :cond_2b
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_2c

    if-eqz v10, :cond_2c

    .line 685
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$25;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$25;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 686
    invoke-virtual {v10, v13, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_23

    :cond_2c
    const/4 v4, 0x0

    :goto_23
    if-eqz v4, :cond_2d

    if-eqz v10, :cond_2d

    .line 693
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$26;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$26;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 694
    invoke-virtual {v10, v14, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_24

    :cond_2d
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_2e

    if-eqz v10, :cond_2e

    .line 701
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$27;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$27;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 702
    invoke-virtual {v10, v15, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_25

    :cond_2e
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_2f

    if-eqz v10, :cond_2f

    .line 709
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$28;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$28;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 710
    invoke-virtual {v10, v11, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_26

    :cond_2f
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_30

    if-eqz v10, :cond_30

    .line 717
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$29;

    invoke-direct {v4, v1, v9}, Lcom/amazon/kcp/application/AnnotationCache$29;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v10, v7, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_27

    :cond_30
    const/4 v4, 0x0

    .line 727
    :goto_27
    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v7, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v7}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    invoke-direct {v6, v7}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    if-eqz v5, :cond_33

    if-eqz v4, :cond_31

    .line 729
    invoke-virtual {v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    if-eqz v4, :cond_32

    const/4 v7, 0x1

    goto :goto_28

    :cond_31
    const/4 v4, 0x0

    :cond_32
    const/4 v7, 0x0

    :goto_28
    move/from16 v17, v7

    move-object v7, v4

    move/from16 v4, v17

    goto :goto_29

    :cond_33
    const/4 v7, 0x0

    :goto_29
    if-eqz v4, :cond_34

    if-eqz v7, :cond_34

    const-string/jumbo v4, "note"

    .line 731
    invoke-virtual {v7, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_2a

    :cond_34
    const/4 v4, 0x0

    :goto_2a
    if-eqz v4, :cond_35

    if-eqz v7, :cond_35

    .line 732
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$30;

    invoke-direct {v4, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$30;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 733
    invoke-virtual {v7, v8, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_2b

    :cond_35
    const/4 v4, 0x1

    const/16 v16, 0x0

    .line 741
    :goto_2b
    invoke-virtual {v6, v4}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    if-eqz v16, :cond_36

    if-eqz v7, :cond_36

    .line 743
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$31;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$31;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v7, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_36

    const/4 v9, 0x1

    goto :goto_2c

    :cond_36
    const/4 v9, 0x0

    :goto_2c
    if-eqz v9, :cond_37

    if-eqz v7, :cond_37

    .line 750
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$32;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$32;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 751
    invoke-virtual {v7, v12, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_37

    const/4 v9, 0x1

    goto :goto_2d

    :cond_37
    const/4 v9, 0x0

    :goto_2d
    if-eqz v9, :cond_38

    if-eqz v7, :cond_38

    .line 758
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$33;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$33;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 759
    invoke-virtual {v7, v13, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_38

    const/4 v9, 0x1

    goto :goto_2e

    :cond_38
    const/4 v9, 0x0

    :goto_2e
    if-eqz v9, :cond_39

    if-eqz v7, :cond_39

    .line 766
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$34;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$34;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string v10, "end"

    .line 767
    invoke-virtual {v7, v10, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_39

    const/4 v9, 0x1

    goto :goto_2f

    :cond_39
    const/4 v9, 0x0

    :goto_2f
    if-eqz v9, :cond_3a

    if-eqz v7, :cond_3a

    .line 774
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$35;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$35;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 775
    invoke-virtual {v7, v14, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_3a

    const/4 v9, 0x1

    goto :goto_30

    :cond_3a
    const/4 v9, 0x0

    :goto_30
    if-eqz v9, :cond_3b

    if-eqz v7, :cond_3b

    .line 782
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$36;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$36;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 783
    invoke-virtual {v7, v15, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v9

    if-eqz v9, :cond_3b

    const/4 v9, 0x1

    goto :goto_31

    :cond_3b
    const/4 v9, 0x0

    :goto_31
    if-eqz v9, :cond_3c

    if-eqz v7, :cond_3c

    .line 790
    new-instance v9, Lcom/amazon/kcp/application/AnnotationCache$37;

    invoke-direct {v9, v1, v6}, Lcom/amazon/kcp/application/AnnotationCache$37;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 791
    invoke-virtual {v7, v11, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    goto :goto_32

    :cond_3c
    const/4 v6, 0x0

    :goto_32
    if-eqz v6, :cond_3d

    const-string v6, "highlight"

    .line 799
    invoke-direct {v1, v5, v6, v8}, Lcom/amazon/kcp/application/AnnotationCache;->deserializeHighlight(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_33

    :cond_3d
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_3e

    const/4 v6, 0x7

    const-string v7, "graphical_highlight"

    .line 800
    invoke-direct {v1, v5, v7, v6}, Lcom/amazon/kcp/application/AnnotationCache;->deserializeHighlight(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_34

    :cond_3e
    const/4 v5, 0x0

    .line 806
    :goto_34
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/kindle/io/IFileInputStream;->size()J

    move-result-wide v6

    .line 807
    sget-object v8, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v6, v9

    if-gez v11, :cond_3f

    goto :goto_35

    :cond_3f
    const/4 v4, 0x0

    :goto_35
    const-string v9, "The size of the sync Metadata file exceed max integer value"

    invoke-static {v8, v4, v9}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    long-to-int v4, v6

    .line 810
    new-array v8, v4, [B

    const/4 v9, 0x0

    .line 811
    invoke-virtual {v3, v8, v9, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v10, v4

    cmp-long v12, v10, v6

    if-gez v12, :cond_40

    .line 813
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 814
    invoke-virtual {v6, v8, v9, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 815
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 818
    :cond_40
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    const-string v6, "http://xml.org/sax/features/external-general-entities"

    const/4 v7, 0x0

    .line 820
    invoke-virtual {v4, v6, v7}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v6, "http://xml.org/sax/features/external-parameter-entities"

    .line 821
    invoke-virtual {v4, v6, v7}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 822
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 824
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 825
    invoke-virtual {v4, v6, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_37

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_38

    :catch_0
    move-exception v0

    .line 831
    :try_start_2
    sget-object v4, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v6, "Unable to parse xml"

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_37

    :catch_1
    move-exception v0

    .line 829
    :try_start_4
    sget-object v4, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v6, "Synch meta data error"

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 834
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_37

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 836
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_3
    move-exception v0

    goto :goto_36

    :catch_4
    move-exception v0

    goto :goto_36

    :catch_5
    move-exception v0

    .line 827
    :goto_36
    :try_start_6
    sget-object v4, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not set feature when parsing XML file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 834
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_37
    if-nez v5, :cond_41

    .line 841
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not okay in deserialization"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-void

    .line 834
    :goto_38
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_39

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 836
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    :goto_39
    throw v4
.end method

.method private deserializeHighlight(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;Ljava/lang/String;I)Z
    .locals 4

    .line 851
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v1, Lcom/amazon/kindle/services/sync/AnnotationExport;

    invoke-direct {v1}, Lcom/amazon/kindle/services/sync/AnnotationExport;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 854
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 856
    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    .line 857
    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$38;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$38;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 858
    invoke-virtual {p1, p2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 866
    :goto_3
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 868
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$39;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$39;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    .line 869
    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 876
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$40;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$40;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string p3, "action"

    .line 877
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 884
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$41;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$41;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string p3, "begin"

    .line 885
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 892
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$42;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$42;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string p3, "end"

    .line 893
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_7

    :cond_7
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 900
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$43;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$43;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string/jumbo p3, "pos"

    .line 901
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 907
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$44;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$44;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string p3, "beginLongFormat"

    .line 908
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x1

    goto :goto_9

    :cond_9
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 915
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$45;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$45;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string p3, "endLongFormat"

    .line 916
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_a

    :cond_a
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    .line 923
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$46;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$46;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string/jumbo p3, "posLongFormat"

    .line 924
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_b

    :cond_b
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 931
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$47;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$47;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string/jumbo p3, "state"

    .line 932
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    goto :goto_c

    :cond_c
    const/4 p2, 0x0

    :goto_c
    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 939
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$48;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$48;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    const-string/jumbo p3, "timestamp"

    .line 940
    invoke-virtual {p1, p3, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz p1, :cond_e

    .line 950
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string/jumbo p2, "metadata"

    .line 952
    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    .line 953
    new-instance p2, Lcom/amazon/kcp/application/AnnotationCache$49;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/application/AnnotationCache$49;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    :cond_e
    return v1
.end method

.method static encodeState([B)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_4

    .line 1623
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1629
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1630
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    const/16 v2, 0x30

    .line 1631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1633
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq p0, v1, :cond_3

    .line 1636
    sget-object p0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v1, "bad serialization of the state"

    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/kcp/application/IAnnotationCache;
    .locals 6

    .line 383
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->instance:Lcom/amazon/kcp/application/AnnotationCache;

    if-nez v0, :cond_1

    .line 384
    const-class v0, Lcom/amazon/kcp/application/AnnotationCache;

    monitor-enter v0

    .line 385
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->instance:Lcom/amazon/kcp/application/AnnotationCache;

    if-nez v1, :cond_0

    .line 386
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 387
    new-instance v2, Lcom/amazon/kcp/application/AnnotationCache;

    .line 388
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    .line 389
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v4

    .line 390
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    .line 391
    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amazon/kcp/application/AnnotationCache;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;)V

    sput-object v2, Lcom/amazon/kcp/application/AnnotationCache;->instance:Lcom/amazon/kcp/application/AnnotationCache;

    .line 394
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 397
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->instance:Lcom/amazon/kcp/application/AnnotationCache;

    return-object v0
.end method

.method private getMetadataTag(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)Ljava/lang/String;
    .locals 2

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<metadata><![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->escapeXmlCData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]]></metadata>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getUploadAnnotationState(Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1579
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1585
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 1589
    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 1594
    aget-byte v3, p0, v0

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aget-byte v5, p0, v2

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v7, 0xff00

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    const v7, 0x44415441

    if-ne v3, v7, :cond_3

    return-object p0

    .line 1603
    :cond_3
    array-length v3, p0

    add-int/2addr v3, v6

    new-array v3, v3, [B

    const/16 v7, 0x44

    .line 1604
    aput-byte v7, v3, v0

    const/16 v7, 0x41

    .line 1605
    aput-byte v7, v3, v4

    const/16 v4, 0x54

    .line 1606
    aput-byte v4, v3, v2

    .line 1607
    aput-byte v7, v3, v5

    .line 1608
    array-length v2, p0

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    const/4 v1, 0x5

    .line 1609
    array-length v2, p0

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    const/4 v1, 0x6

    .line 1610
    array-length v2, p0

    ushr-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    const/4 v1, 0x7

    .line 1611
    array-length v2, p0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 1612
    array-length v1, p0

    invoke-static {p0, v0, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_4
    :goto_0
    return-object v0
.end method

.method private includeInJournal(Lcom/amazon/kindle/model/sync/annotation/IBookData;)Z
    .locals 1

    .line 1671
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeAnnotationsOfType(Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;",
            ">;I)V"
        }
    .end annotation

    .line 1106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1107
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    .line 1109
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1110
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private saveSyncAnnotationsFlag(Z)V
    .locals 3

    .line 1560
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v1, "autoSyncEnabled"

    invoke-interface {v0, v1, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Z)V

    .line 1562
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-interface {p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1564
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot save sync annotation setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized annotationChanged(Lcom/amazon/kindle/model/sync/annotation/IBookData;Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    move-result-object p2

    .line 1086
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    if-nez v0, :cond_1

    .line 1088
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IBookData;->clone()Lcom/amazon/kindle/model/sync/annotation/IBookData;

    move-result-object p1

    .line 1089
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;-><init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V

    .line 1090
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    :cond_1
    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$708(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)J

    .line 1095
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 1100
    :cond_2
    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/application/AnnotationCache;->removeAnnotationsOfType(Ljava/util/Set;I)V

    .line 1102
    :cond_3
    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1081
    :cond_4
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public equalsIgnoreJournalTimestamp(Ljava/lang/String;)Z
    .locals 4

    .line 977
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 989
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getGarbleJournalUploadUrl()Z
    .locals 1

    .line 1811
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->garbleJournalUploadUrl:Z

    return v0
.end method

.method public declared-synchronized getJournal()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 996
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<annotations timestamp=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 997
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" version=\"1.0\">"

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1001
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IBookData;

    .line 1002
    invoke-direct {p0, v3}, Lcom/amazon/kcp/application/AnnotationCache;->includeInJournal(Lcom/amazon/kindle/model/sync/annotation/IBookData;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    invoke-static {v2}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object v2

    .line 1008
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1009
    invoke-direct {p0, v3, v2}, Lcom/amazon/kcp/application/AnnotationCache;->buildBookTagV1_0(Lcom/amazon/kindle/model/sync/annotation/IBookData;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "</annotations>"

    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AnnotationCache.getJournal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAnnotations()J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1028
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    .line 1029
    invoke-static {v3}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 1031
    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumNonPositionAnnotations()J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1037
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    .line 1038
    invoke-static {v3}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    const/4 v5, 0x3

    .line 1039
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/16 v5, 0x8

    .line 1040
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v4, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 1045
    :cond_2
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRevision(Lcom/amazon/kindle/model/sync/annotation/IBookData;)J
    .locals 2

    monitor-enter p0

    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    if-eqz p1, :cond_0

    .line 1798
    invoke-static {p1}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$700(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAnnotationSyncSuppressed()Z
    .locals 1

    .line 1826
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->isAnnotationSyncSuppressed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 1022
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getNumAnnotations()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncAnnotationsOn()Z
    .locals 1

    .line 1050
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    return v0
.end method

.method public declared-synchronized resetJournal()V
    .locals 2

    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->booksAnnotation:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;

    .line 1062
    invoke-static {v1}, Lcom/amazon/kcp/application/AnnotationCache$BookRecord;->access$500(Lcom/amazon/kcp/application/AnnotationCache$BookRecord;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache;->deletePersistedFileIfExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized serialize()V
    .locals 5

    monitor-enter p0

    .line 1527
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AnnotationCache;->saveSyncAnnotationsFlag(Z)V

    .line 1529
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Path file not valid !"

    invoke-static {v0, v1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1532
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache;->deletePersistedFileIfExists()V

    .line 1534
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 1538
    monitor-exit p0

    return-void

    .line 1542
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v1

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Journal stream write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 1544
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1545
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1552
    :try_start_3
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1547
    :try_start_4
    sget-object v2, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v3, "Serialization error"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1550
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 1552
    :try_start_6
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1550
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1552
    :try_start_8
    sget-object v2, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1554
    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1557
    :cond_2
    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnnotationSyncSuppressed(Z)V
    .locals 0

    .line 1821
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->isAnnotationSyncSuppressed:Z

    return-void
.end method

.method public setGarbleJournalUploadUrl(Z)V
    .locals 0

    .line 1816
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->garbleJournalUploadUrl:Z

    return-void
.end method

.method public setSyncAnnotationsOn(Z)V
    .locals 0

    .line 1055
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    .line 1056
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->saveSyncAnnotationsFlag(Z)V

    return-void
.end method

.method public uploadAndResetJournal(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/annotation/IUploadJournalsResult;",
            ">;)V"
        }
    .end annotation

    .line 1686
    sget-object v0, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string v1, "Uploading journal"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache;->TAG:Ljava/lang/String;

    const-string p2, "Journal is empty"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1690
    sget-object p1, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->SUCCESS_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    invoke-interface {p3, p1}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1695
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v0

    .line 1696
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Journal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    :try_start_0
    const-string v1, "UTF-8"

    .line 1702
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSidecarURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v2

    .line 1708
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/amazon/kcp/application/AnnotationCache;->garbleJournalUploadUrl:Z

    if-eqz v3, :cond_3

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_this_suffix_intentionally_garbles_journal_upload_url_for_testing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1712
    :cond_3
    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$50;

    invoke-direct {v3, p0, v2, v0, p3}, Lcom/amazon/kcp/application/AnnotationCache$50;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/internal/IObjectCallback;)V

    const/4 p3, 0x1

    .line 1748
    invoke-interface {v3, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p3

    const/4 v2, 0x3

    .line 1749
    invoke-interface {p3, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p3

    .line 1750
    invoke-interface {p3, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p3

    const-string v0, "Content-Type"

    const-string v2, "application/x-octet-stream"

    .line 1751
    invoke-interface {p3, v0, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p3

    const-string v0, "Content-Length"

    .line 1752
    invoke-interface {p3, v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p3

    .line 1753
    invoke-interface {p3, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    new-instance p3, Lcom/amazon/kindle/webservices/BaseResponseHandler;

    invoke-direct {p3}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 1754
    invoke-interface {p1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    if-eqz p2, :cond_4

    .line 1756
    new-instance p1, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-direct {p1, v3, p2}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    move-object v3, p1

    .line 1759
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-interface {p1, v3}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void

    :catch_0
    move-exception p1

    .line 1704
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
