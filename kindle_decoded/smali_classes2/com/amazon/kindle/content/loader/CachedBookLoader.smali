.class public abstract Lcom/amazon/kindle/content/loader/CachedBookLoader;
.super Ljava/lang/Object;
.source "CachedBookLoader.java"

# interfaces
.implements Lcom/amazon/kindle/content/loader/IContentLoader;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

.field private enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    .line 31
    iput-object v0, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    return-void
.end method

.method private getDefaultLastAccessTime(Ljava/io/File;Lcom/amazon/kindle/model/content/ILocalBookItem;)J
    .locals 1

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isDefaultContentSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isDefaultContent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isChineseLanguage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method private updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    .line 113
    invoke-interface {p2, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 114
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    .line 115
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setAuthorPronunciation(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/content/ContentMetadata;->setLocalBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 117
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setLanguage(Ljava/lang/String;)V

    .line 118
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/content/ContentMetadata;->setContentType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public loadContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 30

    move-object/from16 v0, p0

    .line 73
    iget-object v1, v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    iget-object v2, v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v14, Lcom/amazon/kindle/content/LocalContent;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileLastModified()J

    move-result-wide v4

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getWatermark()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v8

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v9

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J

    move-result-wide v10

    move-object v2, v14

    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/content/LocalContent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentOwnershipType;J)V

    .line 76
    new-instance v29, Lcom/amazon/kindle/content/UserContent;

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/loader/CachedBookLoader;->getDefaultLastAccessTime(Ljava/io/File;Lcom/amazon/kindle/model/content/ILocalBookItem;)J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const-wide/16 v22, -0x1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const-wide/16 v27, 0x0

    const-string v26, ""

    move-object/from16 v15, v29

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v28}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    new-instance v15, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v8

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    sget-object v13, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    move-object v2, v15

    move-object v0, v15

    move-object/from16 v15, v29

    invoke-direct/range {v2 .. v15}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;)V

    move-object v2, v0

    move-object/from16 v0, p0

    .line 82
    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/loader/CachedBookLoader;->updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 90
    iget-object v2, v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    iget-object v3, v0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bookId / ASIN mismatch between todo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface/range {p4 .. p4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and krf pulled asin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    :cond_0
    invoke-interface {v2, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 101
    new-instance v17, Lcom/amazon/kindle/content/LocalContent;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileLastModified()J

    move-result-wide v7

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getWatermark()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v11

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v12

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v5, v17

    invoke-direct/range {v5 .. v14}, Lcom/amazon/kindle/content/LocalContent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentOwnershipType;J)V

    .line 102
    new-instance v1, Lcom/amazon/kindle/content/UserContent;

    move-object/from16 v3, p2

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/loader/CachedBookLoader;->getDefaultLastAccessTime(Ljava/io/File;Lcom/amazon/kindle/model/content/ILocalBookItem;)J

    move-result-wide v20

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const-wide/16 v25, -0x1

    const-wide/16 v30, 0x0

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v18, v1

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v31}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    new-instance v3, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v7

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v11

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v5, v3

    move-object/from16 v16, p3

    invoke-direct/range {v5 .. v18}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;)V

    .line 105
    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/loader/CachedBookLoader;->updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-object v3

    :cond_1
    move-object/from16 v3, p2

    .line 108
    sget-object v1, Lcom/amazon/kindle/content/loader/CachedBookLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadContent fail, bookItem is null, file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public loadContent(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 4

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isOpenForReading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v3

    .line 53
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;I)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->bookBuilder:Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/loader/CachedBookLoader;->enumerator:Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;->buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/loader/CachedBookLoader;->updateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_1
    return-void
.end method

.method public resolveContentLoaderConflict(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resolveContentLoaderConflict(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
