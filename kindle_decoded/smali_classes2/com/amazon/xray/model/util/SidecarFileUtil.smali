.class public Lcom/amazon/xray/model/util/SidecarFileUtil;
.super Ljava/lang/Object;
.source "SidecarFileUtil.java"


# static fields
.field private static final OLD_SIDECAR_JSON_NAME_REGEX:Ljava/lang/String; = "^XRAY.entities.*.asc$"

.field private static final SIDECAR_DB_NAME_FORMAT:Ljava/lang/String; = "XRAY.%s.%s.db"

.field private static final SIDECAR_DOWNLOAD_NAME_FORMAT:Ljava/lang/String; = "XRAY.%s.%s.db.download"

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.model.util.SidecarFileUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getSafeGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, ":"

    const-string v1, "_"

    .line 117
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getSidecarDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 91
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSafeGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "XRAY.%s.%s.db.download"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;
    .locals 2

    .line 61
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 75
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    .line 77
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSafeGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "XRAY.%s.%s.db"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSidecarFileSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static removeOldSidecars()V
    .locals 5

    .line 100
    sget-object v0, Lcom/amazon/xray/model/util/SidecarFileUtil;->TAG:Ljava/lang/String;

    const-string v1, "Deleting old xray JSON sidecars"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lorg/apache/commons/io/filefilter/RegexFileFilter;

    const-string v1, "^XRAY.entities.*.asc$"

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_0
    sget-object v3, Lcom/amazon/xray/model/util/SidecarFileUtil;->TAG:Ljava/lang/String;

    const-string v4, "Deletion of old Xray sidecar failed"

    invoke-static {v3, v4}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
