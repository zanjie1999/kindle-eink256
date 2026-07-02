.class public final Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;
.super Ljava/lang/Object;
.source "PreloadInformationReaderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createApkReader(Landroid/content/Context;)Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->associate_tag_filename:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method private static createFileSystemPreloadInformationReaderIfValid(Landroid/content/Context;)Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;
    .locals 6

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->associate_tag_filename:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/amazon/kindle/krl/R$array;->preload_tag_file_paths:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 63
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    new-instance v4, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;

    invoke-direct {v4, v3}, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    move-result-object v3

    sget-object v5, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    if-eq v3, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getPreloadInformationReader(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    .locals 2

    const-class v0, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;

    if-nez v1, :cond_3

    .line 32
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->shouldUsePreloadManagerLibrary(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    .line 34
    invoke-interface {v1}, Lcom/amazon/kcp/application/associate/PreloadInformationReader;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    sput-object v1, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-object v1

    .line 40
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->createApkReader(Landroid/content/Context;)Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    sput-object p1, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit v0

    return-object p1

    .line 46
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->createFileSystemPreloadInformationReaderIfValid(Landroid/content/Context;)Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 48
    sput-object p1, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit v0

    return-object p1

    .line 52
    :cond_2
    :try_start_3
    new-instance p1, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    monitor-exit v0

    return-object p1

    .line 56
    :cond_3
    :try_start_4
    sget-object p0, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->preloadInfoReader:Lcom/amazon/kcp/application/associate/PreloadInformationReader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static shouldUsePreloadManagerLibrary(Landroid/content/Context;)Z
    .locals 3

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/krl/R$bool;->use_preload_manager_library:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 80
    sget-object v0, Lcom/amazon/kcp/application/associate/PreloadInformationReaderFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload Manager enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
