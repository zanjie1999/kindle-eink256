.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V
    .locals 1

    .line 2166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2164
    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 2167
    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2168
    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2310
    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2313
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2314
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 2315
    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/png"

    .line 2228
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, ""

    .line 2231
    invoke-virtual {p0, v0, p2}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2232
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2233
    iget-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p2, :cond_0

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<Image>"

    invoke-virtual {p2, p1, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content/unknown"

    .line 2239
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    .line 2241
    invoke-virtual {p0, v2, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2242
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2243
    iget-object v1, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v1, :cond_0

    .line 2244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "<Data: %d>"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Content-Disposition: form-data; name=\"%s\""

    .line 2298
    invoke-virtual {p0, p1, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "; filename=\"%s\""

    .line 2300
    invoke-virtual {p0, p2, p1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, ""

    .line 2302
    invoke-virtual {p0, p2, p1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Content-Type"

    aput-object v1, p1, v2

    aput-object p3, p1, v0

    const-string p3, "%s: %s"

    .line 2304
    invoke-virtual {p0, p3, p1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 2306
    invoke-virtual {p0, p2, p1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 2256
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iget-object p3, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, p3, Lcom/facebook/ProgressNoopOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2262
    check-cast p3, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 2268
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2269
    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p3, 0x2000

    :try_start_2
    new-array p3, p3, [B

    const/4 v2, 0x0

    .line 2273
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2274
    iget-object v4, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v4, p3, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 2279
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :goto_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, ""

    .line 2286
    invoke-virtual {p0, p3, p2}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2287
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2288
    iget-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p2, :cond_3

    .line 2289
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    const-string v0, "<Data: %d>"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    move-object p3, p2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, p3

    :goto_2
    if-eqz p3, :cond_4

    .line 2279
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    .line 2282
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_5
    throw p1
.end method

.method public writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2249
    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2321
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "\r\n"

    .line 2322
    invoke-virtual {p0, p2, p1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/facebook/RequestOutputStream;

    if-eqz v1, :cond_0

    .line 2173
    check-cast v0, Lcom/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    .line 2176
    :cond_0
    invoke-static {p2}, Lcom/facebook/Request;->access$100(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2177
    invoke-static {p2}, Lcom/facebook/Request;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 2179
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2180
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 2181
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2182
    :cond_3
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz p3, :cond_4

    .line 2183
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2184
    :cond_4
    instance-of p3, p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz p3, :cond_5

    .line 2185
    check-cast p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    :goto_0
    return-void

    .line 2187
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRecordBoundary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v2, v0, v1

    const-string v1, "--%s"

    .line 2294
    invoke-virtual {p0, v1, v0}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2193
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/facebook/RequestOutputStream;

    if-nez v1, :cond_0

    .line 2194
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2198
    :cond_0
    check-cast v0, Lcom/facebook/RequestOutputStream;

    const/4 v1, 0x0

    .line 2199
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "["

    .line 2200
    invoke-virtual {p0, v3, v2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Request;

    .line 2203
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2204
    invoke-interface {v0, v3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    const/4 v3, 0x1

    if-lez v2, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2206
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, ",%s"

    invoke-virtual {p0, v4, v3}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 2208
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%s"

    invoke-virtual {p0, v4, v3}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "]"

    .line 2212
    invoke-virtual {p0, v0, p3}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    iget-object p3, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p3, :cond_3

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2219
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "%s"

    .line 2220
    invoke-virtual {p0, v1, v0}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 2222
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
