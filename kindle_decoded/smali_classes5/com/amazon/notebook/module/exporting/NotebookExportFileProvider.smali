.class public Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "NotebookExportFileProvider.java"


# static fields
.field private static final AUTHORITY:Lcom/amazon/notebook/module/exporting/Authority;

.field private static final FILE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.navjagpal.file"

.field private static final NOTEBOOK_EXPORT_SUB_DIRECTORY:Ljava/lang/String; = "notebookexport"

.field private static final TAG:Ljava/lang/String;

.field private static final UUID_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static exportFilesDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/amazon/notebook/module/exporting/Authority;

    const-string v1, "NotebookShareProviderModule"

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/exporting/Authority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->AUTHORITY:Lcom/amazon/notebook/module/exporting/Authority;

    const-string v0, "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->UUID_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    return-void
.end method

.method private static getBaseName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 148
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->UUID_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    .line 150
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getCanonicalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->validateAuthority(Landroid/net/Uri;)V

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getCanonicalFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getExportFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains a path separator"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getExportFilesDir()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;

    if-nez v1, :cond_1

    .line 43
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "notebookexport"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 50
    :cond_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_1
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->exportFilesDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 115
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->AUTHORITY:Lcom/amazon/notebook/module/exporting/Authority;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/exporting/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static newExportFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 68
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 69
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getExportFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private validateAuthority(Landroid/net/Uri;)V
    .locals 3

    .line 133
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->AUTHORITY:Lcom/amazon/notebook/module/exporting/Authority;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/exporting/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authority does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->validateAuthority(Landroid/net/Uri;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getBaseName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "vnd.android.cursor.item/vnd.navjagpal.file"

    :cond_0
    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found for uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string p2, "_id"

    const-string p3, "_size"

    const-string p4, "_display_name"

    .line 86
    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p2

    .line 92
    new-instance p3, Landroid/database/MatrixCursor;

    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getCanonicalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 96
    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportFileProvider;->getBaseName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p5, 0x1

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p4, p5

    const/4 p2, 0x2

    aput-object p1, p4, p2

    invoke-virtual {p3, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "File not found for uri: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-object p3
.end method
