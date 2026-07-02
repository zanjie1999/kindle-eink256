.class public Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;
.super Ljava/lang/Object;
.source "AiRContentTypeStorageLocationStrategy.java"

# interfaces
.implements Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SUB_DIRECTORY_NAME:Ljava/lang/String; = "audible"


# instance fields
.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Can\'t instantiate the object graph, which is needed to instantiate KindleReaderSDK."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    :goto_0
    return-void
.end method


# virtual methods
.method public getStorageLocationFor(Lcom/audible/mobile/download/ContentType;)Ljava/io/File;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->getUnspecifiedStorageLocation()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUnspecifiedStorageLocation()Ljava/io/File;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "audible"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getFilesStorageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
