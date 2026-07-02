.class Lcom/amazon/kindle/cover/CoverImageService$5;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/CoverImageService;->removeDuplicateCoversForUpgrade(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/cover/Cover;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cover/CoverImageService;)V
    .locals 0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/cover/Cover;)I
    .locals 0

    .line 1103
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/Cover;->getCoverSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p1

    .line 1104
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/Cover;->getCoverSize()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1106
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    .line 1108
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/cover/CoverImageService;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cover image size cannot be null."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1100
    check-cast p1, Lcom/amazon/kindle/cover/Cover;

    check-cast p2, Lcom/amazon/kindle/cover/Cover;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cover/CoverImageService$5;->compare(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/cover/Cover;)I

    move-result p1

    return p1
.end method
