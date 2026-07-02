.class public abstract Lcom/amazon/kindle/cover/AbstractCoverBuilder;
.super Ljava/lang/Object;
.source "AbstractCoverBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverBuilder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field protected book:Lcom/amazon/kindle/model/content/IListableBook;

.field protected canBeDecorated:Z

.field protected cover:Lcom/amazon/kindle/cover/ICover;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->canBeDecorated:Z

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->book:Lcom/amazon/kindle/model/content/IListableBook;

    .line 38
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 42
    :cond_1
    iput-object p3, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public canBeDecorated()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->canBeDecorated:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBook()Lcom/amazon/kindle/model/content/IListableBook;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->book:Lcom/amazon/kindle/model/content/IListableBook;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 2

    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getCover()Lcom/amazon/kindle/cover/ICover;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    return-object v0
.end method

.method public getImageBuffer()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCanBeDecorated(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->canBeDecorated:Z

    return-void
.end method

.method public setDecorated(Z)V
    .locals 0

    return-void
.end method

.method protected writeBitmapToFile(Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICover;)Z
    .locals 9

    const-string v0, "Failed to write file "

    const-string v1, "Failed to close buffered output stream "

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return v2

    .line 100
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 109
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    iget-object v5, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v5, v6, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->insertOrUpdate(Lcom/amazon/kindle/cover/ICover;)J

    .line 120
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 128
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 131
    sget-object p1, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed renaming "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object p1, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 143
    sget-object p2, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v5, v7

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v5, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 137
    :goto_2
    :try_start_3
    sget-object p2, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    .line 141
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 143
    sget-object p2, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    if-eqz v5, :cond_4

    .line 141
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 143
    sget-object v0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_4
    :goto_4
    throw p1

    :cond_5
    :goto_5
    return v2
.end method
