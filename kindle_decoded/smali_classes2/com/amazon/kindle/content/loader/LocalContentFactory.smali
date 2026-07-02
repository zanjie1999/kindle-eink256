.class public Lcom/amazon/kindle/content/loader/LocalContentFactory;
.super Ljava/lang/Object;
.source "LocalContentFactory.java"

# interfaces
.implements Lcom/amazon/kindle/content/loader/ILocalContentFactory;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/content/loader/ILocalContentFactory;


# instance fields
.field private loaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/loader/IContentLoader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/content/loader/LocalContentFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->instance:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loaders:Ljava/util/Map;

    return-void
.end method

.method private getContentLoaders(Ljava/io/File;)Ljava/util/Set;
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/loader/IContentLoader;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist, file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getContentLoaders(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/loader/IContentLoader;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loaders:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    .line 293
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suffix is null, fileName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {}, Lcom/amazon/kindle/io/FileSystemHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/amazon/kindle/io/FileSystemHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->instance:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    return-object v0
.end method

.method private getLocalContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 233
    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    monitor-enter v0

    .line 236
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/loader/IContentLoader;

    .line 237
    invoke-interface {v2, p1, p2}, Lcom/amazon/kindle/content/loader/IContentLoader;->loadContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    monitor-exit v0

    return-object v2

    .line 243
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocalContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 250
    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    monitor-enter v0

    .line 254
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/loader/IContentLoader;

    .line 255
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/amazon/kindle/content/loader/IContentLoader;->loadContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    monitor-exit v0

    return-object v2

    .line 261
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 263
    :cond_2
    sget-object p1, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Empty loaders for file "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    sget-object p1, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No valid loader for file "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadLocalContents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/loader/IContentLoader;",
            ">;>;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v3, 0x0

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 142
    monitor-enter v1

    .line 143
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/loader/IContentLoader;

    .line 144
    invoke-interface {v3, p1, v2}, Lcom/amazon/kindle/content/loader/IContentLoader;->loadContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 150
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobipocket/jsr75/filesystem/Lab126FileSystemPathDescriptor;->isPreloadedDictionaryPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 162
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excluding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_5
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private scanLocalContent(Ljava/io/File;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/loader/IContentLoader;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for local content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getDocumentFileFromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 190
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_c

    aget-object v3, v0, v1

    .line 191
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    .line 195
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->scanLocalContent(Ljava/io/File;ZLjava/util/Map;Ljava/util/Map;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6

    .line 202
    sget-object p2, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "I/O error occurred while scanning "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_6
    array-length p1, v0

    :goto_2
    if-ge v1, p1, :cond_c

    aget-object v2, v0, v1

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez p2, :cond_7

    goto :goto_3

    .line 209
    :cond_7
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->scanLocalContent(Ljava/io/File;ZLjava/util/Map;Ljava/util/Map;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_9

    .line 214
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_4
    if-eqz p2, :cond_a

    .line 216
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_a

    return-void

    .line 219
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "."

    .line 220
    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c

    invoke-static {}, Lcom/amazon/kindle/io/FileSystemHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/io/File;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 223
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 224
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found content for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    :cond_b
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method


# virtual methods
.method public contentExists(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFileSupported(Ljava/lang/String;)Z
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 329
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getLocalContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public loadLocalContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getLocalContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    .line 97
    sget-object p3, Lcom/amazon/kindle/content/loader/LocalContentFactory;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadLocalContent fail, Metadata is null, filePath "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 299
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const-string v1, "LocalContentFactory.loadLocalContent(ContentMetadata)"

    .line 303
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 304
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getContentLoaders(Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 307
    monitor-enter v1

    .line 308
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/loader/IContentLoader;

    if-eqz v0, :cond_3

    .line 310
    invoke-interface {v4, p1}, Lcom/amazon/kindle/content/loader/IContentLoader;->resolveContentLoaderConflict(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    :cond_3
    invoke-interface {v4, p1}, Lcom/amazon/kindle/content/loader/IContentLoader;->loadContent(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 315
    :cond_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    const-string p1, "LocalContentFactory.loadLocalContent(ContentMetadata)"

    .line 318
    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public loadLocalContents(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, v0, p4}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->scanLocalContent(Ljava/io/File;ZLjava/util/Map;Ljava/util/Map;)V

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loadLocalContents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public loadManifestContent(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Long;[Ljava/io/File;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    new-instance v1, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;

    invoke-direct {v1}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;-><init>()V

    invoke-virtual {v1, p2, p3, p4}, Lcom/amazon/kindle/content/preparer/DownloadedContentPreparer;->prepareContent(Ljava/util/Set;Ljava/lang/Long;[Ljava/io/File;)Ljava/util/List;

    move-result-object p2

    .line 114
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    const/4 p4, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->scanLocalContent(Ljava/io/File;ZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loadLocalContents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public register(Lcom/amazon/kindle/content/loader/IContentLoader;)V
    .locals 4

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/content/loader/IContentLoader;->getSupportedExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/amazon/kindle/content/loader/LocalContentFactory$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/content/loader/LocalContentFactory$1;-><init>(Lcom/amazon/kindle/content/loader/LocalContentFactory;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 75
    iget-object v3, p0, Lcom/amazon/kindle/content/loader/LocalContentFactory;->loaders:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    monitor-enter v2

    .line 79
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
