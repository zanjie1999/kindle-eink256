.class public Lcom/amazon/kindle/cover/BackupCover;
.super Ljava/lang/Object;
.source "BackupCover.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/cover/BackupCover;


# instance fields
.field private am:Landroid/content/res/AssetManager;

.field private destinationPath:Ljava/lang/String;

.field private fileSeparator:C

.field private paths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/cover/BackupCover;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/amazon/kindle/cover/BackupCover;->instance:Lcom/amazon/kindle/cover/BackupCover;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;C)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/amazon/kindle/cover/BackupCover;->am:Landroid/content/res/AssetManager;

    .line 45
    iput-object v0, p0, Lcom/amazon/kindle/cover/BackupCover;->destinationPath:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/cover/BackupCover;->am:Landroid/content/res/AssetManager;

    .line 65
    iput-object p2, p0, Lcom/amazon/kindle/cover/BackupCover;->destinationPath:Ljava/lang/String;

    .line 66
    iput-char p3, p0, Lcom/amazon/kindle/cover/BackupCover;->fileSeparator:C

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/cover/BackupCover;
    .locals 5

    .line 49
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->instance:Lcom/amazon/kindle/cover/BackupCover;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/amazon/kindle/cover/BackupCover;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cover/BackupCover;->instance:Lcom/amazon/kindle/cover/BackupCover;

    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    .line 54
    new-instance v3, Lcom/amazon/kindle/cover/BackupCover;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/amazon/kindle/cover/BackupCover;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;C)V

    sput-object v3, Lcom/amazon/kindle/cover/BackupCover;->instance:Lcom/amazon/kindle/cover/BackupCover;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->instance:Lcom/amazon/kindle/cover/BackupCover;

    return-object v0
.end method


# virtual methods
.method public addBackupCoverToSdCard()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "generic_newspaper_cover_list_preview.jpg"

    const-string v2, "generic_magazine_cover_list_preview.jpg"

    const-string v3, "generic_doc_cover_list_preview.png"

    const-string v4, "generic_book_cover_list_preview.jpg"

    const-string v5, "generic_newspaper_cover_list.jpg"

    const-string v6, "generic_magazine_cover_list.jpg"

    const-string v7, "generic_doc_cover_list.jpg"

    const-string v8, "generic_book_cover_list.jpg"

    const-string v9, "backupCover"

    const-string v10, "Unable to close bufferedOutputStream"

    const/4 v11, 0x0

    .line 79
    :try_start_0
    iget-object v12, v1, Lcom/amazon/kindle/cover/BackupCover;->am:Landroid/content/res/AssetManager;

    invoke-virtual {v12, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v12, :cond_a

    .line 80
    :try_start_1
    array-length v13, v12

    if-lez v13, :cond_a

    .line 81
    array-length v13, v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_9

    :try_start_2
    aget-object v15, v12, v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v16, v11

    .line 82
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v12

    .line 83
    iget-object v12, v1, Lcom/amazon/kindle/cover/BackupCover;->destinationPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v12, Ljava/io/File;

    move/from16 v18, v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 88
    iget-object v13, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v19, v10

    :try_start_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    move-object/from16 v19, v10

    .line 89
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 90
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 94
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 96
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 98
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 102
    iget-object v10, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_7
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-char v13, v1, Lcom/amazon/kindle/cover/BackupCover;->fileSeparator:C

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v13, v1, Lcom/amazon/kindle/cover/BackupCover;->am:Landroid/content/res/AssetManager;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    .line 113
    invoke-static {v10, v12}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I

    move-result v12

    if-nez v12, :cond_8

    .line 116
    sget-object v12, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to create "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v11, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    add-int/lit8 v14, v14, 0x1

    move-object v11, v10

    move-object/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v10, v19

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v11, v10

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v11, v16

    :goto_2
    move-object/from16 v3, v19

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v10

    move-object/from16 v11, v16

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v3, v10

    move-object/from16 v11, v16

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_7

    :cond_9
    move-object/from16 v19, v10

    move-object/from16 v16, v11

    goto :goto_4

    :catchall_4
    move-exception v0

    :goto_3
    move-object v2, v0

    move-object v3, v10

    goto :goto_b

    :cond_a
    move-object/from16 v19, v10

    .line 126
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    const-string v2, "No files found in backupCover"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_4
    if-eqz v11, :cond_b

    .line 135
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 137
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    move-object/from16 v3, v19

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_5
    move-object/from16 v3, v19

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v3, v10

    :goto_6
    move-object v2, v0

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_7
    move-object v3, v10

    .line 130
    :goto_8
    :try_start_8
    sget-object v2, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    const-string v4, "Unable to copy backup cover to sdcard"

    invoke-static {v2, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, v1, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v11, :cond_b

    .line 135
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 137
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    :goto_9
    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    return-void

    :catchall_7
    move-exception v0

    goto :goto_6

    :goto_b
    if-eqz v11, :cond_c

    .line 135
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 137
    sget-object v0, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_c
    :goto_c
    throw v2
.end method

.method public getPath(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/cover/BackupCover;->addBackupCoverToSdCard()V

    :cond_0
    const-string v0, "generic_book_cover_list_preview.jpg"

    if-eqz p1, :cond_d

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 160
    sget-object v1, Lcom/amazon/kindle/cover/BackupCover$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "Detected invalid image size  "

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    .line 202
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_2

    .line 210
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for book cover"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "generic_book_cover_list.jpg"

    goto/16 :goto_0

    .line 188
    :cond_3
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 196
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for document cover"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "generic_doc_cover_list.jpg"

    goto :goto_0

    :cond_5
    const-string v0, "generic_doc_cover_list_preview.png"

    goto :goto_0

    .line 175
    :cond_6
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    .line 183
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for newspaper cover"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "generic_newspaper_cover_list.jpg"

    goto :goto_0

    :cond_8
    const-string v0, "generic_newspaper_cover_list_preview.jpg"

    goto :goto_0

    .line 162
    :cond_9
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    .line 170
    sget-object p1, Lcom/amazon/kindle/cover/BackupCover;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for magazine cover"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v0, "generic_magazine_cover_list.jpg"

    goto :goto_0

    :cond_b
    const-string v0, "generic_magazine_cover_list_preview.jpg"

    .line 215
    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 155
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/cover/BackupCover;->paths:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
