.class public Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;
.super Landroid/content/BroadcastReceiver;
.source "AndroidFileSystemPathDescriptor.java"

# interfaces
.implements Lcom/amazon/kindle/io/IPathDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;
    }
.end annotation


# static fields
.field protected static final COVER_CACHE_SUBDIRECTORY:Ljava/lang/String; = "covers"

.field public static final DATA_PATH:Ljava/lang/String; = "kindle"

.field private static final MIGRATE_TAG:Ljava/lang/String; = "SIDECAR_MIGRATION"

.field public static final SIDELOADED_BOOK_DIRECTORY:Ljava/lang/String; = "Books"

.field private static final TAG:Ljava/lang/String;

.field static final TEMP_PATH:Ljava/lang/String; = "/Temp/"

.field private static final migratingSideCarLock:Ljava/lang/Object;


# instance fields
.field private volatile applicationPaths:[Ljava/lang/String;

.field private final bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private final extraApplicationPaths:[Ljava/lang/String;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private volatile nonBookApplicationPaths:[Ljava/lang/String;

.field private volatile persistentPath:Ljava/lang/String;

.field private volatile primaryExternalFilesDir:Ljava/io/File;

.field private final primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sideloadedFileObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->migratingSideCarLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 153
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->extraApplicationPaths:[Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->isPrimaryStorageMountedInEnv()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 167
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_CHECKING"

    .line 169
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_NOFS"

    .line 172
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_SHARED"

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 176
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "file"

    .line 177
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->constructPaths()V

    return-void
.end method

.method static synthetic access$000(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private areSidecarsMigrated()Z
    .locals 1

    .line 589
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areSidecarsMigrated()Z

    move-result v0

    return v0
.end method

.method static computeBookDirectoryName(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 3

    .line 458
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 463
    :goto_0
    instance-of p0, p0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    if-eqz v1, :cond_2

    const-string v1, "_sample"

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3

    const-string v0, "_update"

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructPaths()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->sideloadedFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 243
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 247
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {p0, v3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0, v2, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->addSideloadedBookDirectories(Ljava/util/Set;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->addLegacyDataDirectories(Ljava/util/Set;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->addLegacyDocumentDirectories(Ljava/util/Set;)V

    const/4 v2, 0x1

    .line 254
    invoke-virtual {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getModuleDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->extraApplicationPaths:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 260
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 262
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->applicationPaths:[Ljava/lang/String;

    .line 263
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->nonBookApplicationPaths:[Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up sideloadedFileObserver for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getFileObserver()Landroid/os/FileObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->sideloadedFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_3
    return-void
.end method

.method private getExistingBookDirectories(Ljava/io/File;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/internal/AmznBookID;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 751
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 752
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    .line 762
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    .line 765
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x11

    if-ne v6, v8, :cond_1

    const-string v6, "_sample"

    .line 766
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 768
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Directory Named \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" being skipped for bad length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 773
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    .line 774
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 776
    :cond_4
    new-instance v7, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_2

    :cond_5
    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    :goto_2
    invoke-direct {v7, v5, v6}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private getSidecarMigrationDestination()Ljava/io/File;
    .locals 3

    .line 615
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isExternalStorageReady()Z
    .locals 1

    .line 924
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPrimaryStorageMountedInEnv()Z
    .locals 2

    .line 531
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private logDiscoveredAsins(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/internal/AmznBookID;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 790
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logOrphanedAsins(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 801
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markSidecarsMigrated()V
    .locals 1

    .line 597
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->markSidecarsMigrated()V

    return-void
.end method

.method private migrateSidecars()V
    .locals 15

    .line 624
    sget-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->migratingSideCarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getSidecarMigrationSource()Ljava/io/File;

    move-result-object v1

    .line 626
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getSidecarMigrationDestination()Ljava/io/File;

    move-result-object v2

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "SIDECAR_MIGRATION"

    const-string v2, "No source directory, so nothing to migrate."

    .line 629
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->markSidecarsMigrated()V

    .line 631
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 636
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExistingBookDirectories(Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    .line 637
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " directories as ASINs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v4, "(?:^|\\.|_|-)([A-Z0-9]{10})(?:\\.|_|-|$)"

    const/4 v5, 0x0

    .line 643
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 646
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 648
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_d

    aget-object v8, v1, v7

    .line 649
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    .line 650
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "[%s] is not a file, not migrating..."

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v5

    .line 651
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    .line 656
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 658
    invoke-static {v9}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 659
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File Named \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" being skipped for bad name."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v9, "Bad Name"

    .line 660
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 665
    :cond_2
    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    .line 668
    :try_start_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v13

    if-ne v13, v10, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v11

    .line 673
    :catch_0
    :cond_3
    :try_start_3
    invoke-static {v12}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 674
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find an ASIN in filename "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " so we\'re gonna orphan it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v9, "Couldn\'t Parse AISN"

    .line 675
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 680
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_EBSP\\.(?:prc|pdb|azw|azw1|mobi|tpz|azw3|mop|azw4)"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 681
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 682
    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 683
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "[%s] is a sample, not migrating..."

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v5

    .line 684
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    .line 691
    :cond_5
    new-instance v11, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v13, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v11, v12, v13}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    if-nez v11, :cond_6

    .line 693
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There was no full book destination directory for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    :cond_6
    new-instance v13, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v14, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v13, v12, v14}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    if-nez v11, :cond_7

    if-nez v13, :cond_7

    .line 698
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There is no destination directory for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " full book or sample, so the file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " will be orphaned."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v9, "No Destination Directory"

    .line 699
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_7
    if-eqz v11, :cond_8

    const/4 v12, 0x1

    goto :goto_1

    :cond_8
    const/4 v12, 0x0

    :goto_1
    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_a

    if-eqz v12, :cond_a

    .line 707
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v11, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-static {v8, v10}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 710
    invoke-static {v8, v11}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 711
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "SIDECAR_MIGRATION"

    .line 713
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t delete sidecar "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " after copying to sample and full book directory. It\'s orphaned now."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v12, :cond_b

    .line 719
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 720
    :goto_3
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v8, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "SIDECAR_MIGRATION"

    .line 724
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t move sidecar "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to destination "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". File is orphaned"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 724
    invoke-static {v9, v8}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 730
    :cond_d
    invoke-direct {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->logDiscoveredAsins(Ljava/util/Map;)V

    .line 731
    invoke-direct {p0, v3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->logOrphanedAsins(Ljava/util/Map;)V

    .line 733
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->markSidecarsMigrated()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "SIDECAR_MIGRATION"

    const-string v3, "Error when trying to move Sidecars. Might be in a bad state."

    .line 735
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private pathExists(Ljava/lang/String;)Z
    .locals 1

    .line 910
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 914
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected addLegacyDataDirectories(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "kindle"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addLegacyDocumentDirectories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected addSideloadedBookDirectories(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getSideloadedBookPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplicationPaths()[Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->applicationPaths:[Ljava/lang/String;

    return-object v0
.end method

.method protected getBookDir()Ljava/lang/String;
    .locals 1

    const-string v0, "kindle"

    return-object v0
.end method

.method public getBookId(Ljava/io/File;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 6

    if-eqz p2, :cond_7

    .line 479
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_update"

    .line 487
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v4, "_sample"

    .line 493
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 498
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v0

    .line 502
    :cond_3
    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p2, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    .line 506
    new-instance v0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :goto_3
    return-object v0

    .line 476
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bookType is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 2

    .line 337
    invoke-virtual {p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPrimaryBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalSDCardBookPath(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->isBookInExternalSDCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    .line 395
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPrimaryBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalSDCardBookPath(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p1, p2, [Ljava/lang/String;

    aput-object v0, p1, v1

    return-object p1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    aput-object p1, v2, p2

    return-object v2
.end method

.method public getBooksDirectory()Ljava/io/File;
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->shouldUseExternalSDCard(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {p0, v2, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalSDCardBookPath(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 548
    invoke-virtual {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPrimaryBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getCoverCacheDirectory()Ljava/lang/String;
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 833
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbFriendlySidecarDirectory(Lcom/amazon/kindle/model/content/IBookID;)Ljava/io/File;
    .locals 2

    .line 557
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "databases"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDefaultContentDirectory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDocsDir()Ljava/lang/String;
    .locals 1

    const-string v0, "kindle"

    return-object v0
.end method

.method public getDocumentPath(Z)Ljava/lang/String;
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isPdocDownloadLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 322
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocsDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getSidecarDirectory()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getExternalFilesDir()Ljava/io/File;
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryExternalFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryExternalFilesDir:Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method protected getExternalSDCardBookPath(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 847
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 853
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    aget-object v2, v0, v3

    if-nez v2, :cond_1

    goto :goto_0

    .line 857
    :cond_1
    aget-object v0, v0, v3

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    :cond_2
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->computeBookDirectoryName(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method protected getFileObserver()Landroid/os/FileObserver;
    .locals 3

    .line 305
    new-instance v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$1;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x180

    invoke-direct {v0, p0, v1, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$1;-><init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 6

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v2, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$2;

    invoke-direct {v2, p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$2;-><init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;)V

    .line 429
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPrimaryBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 432
    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalSDCardBookPath(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 437
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 443
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 444
    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 445
    array-length v3, v2

    if-lez v3, :cond_2

    .line 446
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/io/File;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    return-object p1
.end method

.method public getModuleDataPath()Ljava/lang/String;
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonBookApplicationPaths()[Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->nonBookApplicationPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getPersistentPath()Ljava/lang/String;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->persistentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->persistentPath:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->persistentPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrimaryBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getExternalFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->areSidecarsMigrated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->migrateSidecars()V

    :cond_2
    if-nez p1, :cond_3

    return-object v0

    .line 373
    :cond_3
    invoke-static {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->computeBookDirectoryName(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    .line 379
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSidecarDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getSidecarMigrationSource()Ljava/io/File;
    .locals 4

    .line 606
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getBookDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getSidecarDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getSideloadedBookPath()Ljava/lang/String;
    .locals 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Books"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isBookInExternalSDCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 890
    invoke-direct {p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->pathExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 896
    :cond_0
    invoke-direct {p0, p2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->pathExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 901
    :cond_1
    iget-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->shouldUseExternalSDCard(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isPathInExternalPrimaryStorage(Ljava/lang/String;)Z
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 572
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    .line 574
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isPathInExternalSDCard(Ljava/lang/String;)Z
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 563
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->isExternalStorageReady()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", External storage state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->bookPathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 221
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryStorageAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->isPrimaryStorageMountedInEnv()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->constructPaths()V

    .line 224
    new-instance v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;

    invoke-direct {v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;-><init>()V

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->setMediaIntentAction(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 227
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->primaryExternalFilesDir:Ljava/io/File;

    return-void

    :catchall_0
    move-exception p2

    .line 227
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
