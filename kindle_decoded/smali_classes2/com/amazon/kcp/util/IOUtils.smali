.class public Lcom/amazon/kcp/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static createBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 399
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 400
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 401
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static slice([BII)[B
    .locals 2

    add-int v0, p1, p2

    .line 72
    array-length v1, p0

    if-le v0, v1, :cond_0

    array-length p2, p0

    sub-int/2addr p2, p1

    .line 74
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static writeInToFile(Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 179
    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/util/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static writeInToFile(Ljava/io/InputStream;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    invoke-static {p0, v1, p2}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 203
    :cond_0
    throw p0
.end method

.method public static writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 146
    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p0

    return p0
.end method

.method public static writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    if-ge v3, p2, :cond_0

    .line 169
    invoke-static {v0, v1, v3}, Lcom/amazon/kcp/util/IOUtils;->slice([BII)[B

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v0

    .line 170
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method
