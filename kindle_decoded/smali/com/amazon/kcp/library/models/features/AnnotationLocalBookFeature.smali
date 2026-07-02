.class public Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;
.super Ljava/lang/Object;
.source "AnnotationLocalBookFeature.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAnnotationsSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 61
    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 63
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building annotation feature; supportsAnnotations"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return v0
.end method

.method public static areBookmarksSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    if-eq v1, p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 42
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building annotation feature; supportsBookmarks="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return v0
.end method

.method private static existsInWriteProtectedDirectory(Ljava/lang/String;)Z
    .locals 1

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getDocumentFileFromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 5

    .line 82
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->existsInWriteProtectedDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 83
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    .line 84
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v2

    .line 86
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Building annotation feature; existsInWriteProtectedDirectory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPreferredDictionary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPeriodical="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contentClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
