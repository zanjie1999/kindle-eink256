.class final Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory$1;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;)I
    .locals 2

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory$1;->compare(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;)I

    move-result p1

    return p1
.end method
