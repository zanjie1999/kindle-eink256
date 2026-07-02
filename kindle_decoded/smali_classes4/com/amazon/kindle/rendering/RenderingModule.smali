.class public Lcom/amazon/kindle/rendering/RenderingModule;
.super Ljava/lang/Object;
.source "RenderingModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# static fields
.field private static final DEFAULT_RESOURCE_BUNDLE_FILENAME:Ljava/lang/String; = "res_android.dat"

.field private static final READER_RESOURCE_BUNDLE_FILENAME:Ljava/lang/String; = "reader_res_android.dat"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/rendering/RenderingModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/RenderingModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/amazon/kindle/rendering/RenderingModule;->isYjBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/amazon/kindle/rendering/RenderingModule;->isYJLavaMagazine(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result p0

    return p0
.end method

.method private static extractRawResource(ILjava/lang/String;Landroid/content/res/Resources;Z)V
    .locals 1

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    invoke-static {p0, v0}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I

    :cond_1
    return-void
.end method

.method public static getDefaultResourceBundleFilePath()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "res_android.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReaderResourceBundleFilePath()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reader_res_android.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isYJLavaMagazine(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 0

    .line 179
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isYjBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 2

    .line 172
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kfx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "rendering"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5

    const-string v0, ".kfx"

    const-string v1, ".apf"

    const-string v2, ".kdf"

    .line 55
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->addSupportedExtensions(Ljava/util/Collection;)V

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    .line 59
    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getLocalContentFactory()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/rendering/KRIFContentLoader;

    invoke-direct {v2}, Lcom/amazon/kindle/rendering/KRIFContentLoader;-><init>()V

    .line 63
    invoke-interface {v1, v2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->register(Lcom/amazon/kindle/content/loader/IContentLoader;)V

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;

    invoke-direct {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewerFactory;-><init>()V

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/IReaderController;->registerDefaultKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 68
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/rendering/RenderingModule$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/rendering/RenderingModule$1;-><init>(Lcom/amazon/kindle/rendering/RenderingModule;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->addLayoutProvider(Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;)V

    .line 75
    invoke-static {}, Lcom/amazon/kindle/rendering/RenderingModule;->getDefaultResourceBundleFilePath()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/amazon/kindle/rendering/RenderingModule;->getReaderResourceBundleFilePath()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    .line 83
    sget v4, Lcom/amazon/kindle/renderingmodule/R$raw;->res_android:I

    invoke-static {v4, v1, v3, v0}, Lcom/amazon/kindle/rendering/RenderingModule;->extractRawResource(ILjava/lang/String;Landroid/content/res/Resources;Z)V

    .line 84
    sget v1, Lcom/amazon/kindle/renderingmodule/R$raw;->reader_res_android:I

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kindle/rendering/RenderingModule;->extractRawResource(ILjava/lang/String;Landroid/content/res/Resources;Z)V

    .line 87
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->instance()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->register(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/rendering/RenderingModule$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/rendering/RenderingModule$2;-><init>(Lcom/amazon/kindle/rendering/RenderingModule;Landroid/content/Context;)V

    .line 94
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method
