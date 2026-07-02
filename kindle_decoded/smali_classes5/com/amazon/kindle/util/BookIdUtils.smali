.class public Lcom/amazon/kindle/util/BookIdUtils;
.super Ljava/lang/Object;
.source "BookIdUtils.java"


# direct methods
.method public static logSafeString(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 55
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->isSideloadBookId(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLDID0>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/amazon/kindle/model/content/SideloadBookID;

    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->getLastModifiedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static logSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->logSafeString(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 21
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/amazon/kindle/model/content/SideloadBookID;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/SideloadBookID;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 26
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    move-result-object v0

    :cond_1
    return-object v0
.end method
