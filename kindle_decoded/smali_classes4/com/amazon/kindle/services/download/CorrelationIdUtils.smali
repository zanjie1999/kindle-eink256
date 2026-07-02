.class public final Lcom/amazon/kindle/services/download/CorrelationIdUtils;
.super Ljava/lang/Object;
.source "CorrelationIdUtils.kt"


# direct methods
.method public static final getDeviceGeneratedCorrelationId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 2

    const-string v0, "bookID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    const-string v1, "bookID.type"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/amazon/kindle/services/download/CorrelationIdUtils;->getDeviceGeneratedCorrelationId(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceGeneratedCorrelationId(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;
    .locals 3

    const-string v0, "bookType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeForBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object p0

    const-string p1, "ManifestContentType.getTypeForBookType(bookType)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
