.class public final Lcom/amazon/kcp/debug/ScopedStorageUtils;
.super Ljava/lang/Object;
.source "ScopedStorageUtils.kt"


# instance fields
.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final isExternalStorageLegacy$delegate:Lkotlin/Lazy;

.field private final isMigrationDocsWeblabEnabled$delegate:Lkotlin/Lazy;

.field private final isSideloadPermissionWeblabEnabled$delegate:Lkotlin/Lazy;

.field private final migrationDocsWeblab$delegate:Lkotlin/Lazy;

.field private final sideloadedPermissionWeblab$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 43
    new-instance p1, Lcom/amazon/kcp/debug/ScopedStorageUtils$migrationDocsWeblab$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$migrationDocsWeblab$2;-><init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->migrationDocsWeblab$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/amazon/kcp/debug/ScopedStorageUtils$isMigrationDocsWeblabEnabled$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$isMigrationDocsWeblabEnabled$2;-><init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsWeblabEnabled$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;-><init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->sideloadedPermissionWeblab$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;-><init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionWeblabEnabled$delegate:Lkotlin/Lazy;

    .line 53
    sget-object p1, Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;->INSTANCE:Lcom/amazon/kcp/debug/ScopedStorageUtils$isExternalStorageLegacy$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMigrationDocsWeblab$p(Lcom/amazon/kcp/debug/ScopedStorageUtils;)Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getMigrationDocsWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSideloadedPermissionWeblab$p(Lcom/amazon/kcp/debug/ScopedStorageUtils;)Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getSideloadedPermissionWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object p0

    return-object p0
.end method

.method private final findUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 143
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1, p3}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static synthetic getDocumentFileFromFile$default(Lcom/amazon/kcp/debug/ScopedStorageUtils;Landroid/content/Context;Ljava/io/File;ILjava/lang/Object;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 155
    iget-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "factory.context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getDocumentFileFromFile(Landroid/content/Context;Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFileDescriptorFromFilename$default(Lcom/amazon/kcp/debug/ScopedStorageUtils;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "factory.context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFileDescriptorFromFilename(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private final getMigrationDocsWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->migrationDocsWeblab$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method

.method private final getSideloadedPermissionWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->sideloadedPermissionWeblab$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method

.method private final isMigrationDocsWeblabEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsWeblabEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isSideloadPermissionWeblabEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionWeblabEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isStoragePermissionsRequired(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/model/content/SideloadBookID;->isSideloadBookId(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    const-string v2, "contentMetadata.bookType"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "externalFilesDir.absolutePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {v1, p1, v3, p2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public final getDocumentFileFromFile(Landroid/content/Context;Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDocumentFileFromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getDocumentFileFromFile$default(Lcom/amazon/kcp/debug/ScopedStorageUtils;Landroid/content/Context;Ljava/io/File;ILjava/lang/Object;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    return-object p1
.end method

.method public final getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-object v0
.end method

.method public final getFileDescriptorFromFilename(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filepath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "Uri.parse(treeUriString)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file.name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->findUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "r"

    .line 131
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method

.method public final getFileDescriptorFromFilename(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFileDescriptorFromFilename$default(Lcom/amazon/kcp/debug/ScopedStorageUtils;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dirPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ScopedStoragePrefs"

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isDirectoryPermissionGranted(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filepath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/system/PermissionsManager;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isExternalStorageLegacy()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isMigrationDocsEnabled()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isPdocDownloadLocationEnabled()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isPdocDownloadLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public final isSideloadPermissionChangesEnabled()Z
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    .line 78
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStoragePermissionsGranted(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentMetadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isStoragePermissionsRequired(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/system/PermissionsManager;->hasExternalStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public final setUriForFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dirPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uriString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ScopedStoragePrefs"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 103
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
