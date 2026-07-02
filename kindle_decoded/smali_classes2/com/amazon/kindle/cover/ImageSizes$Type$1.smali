.class final Lcom/amazon/kindle/cover/ImageSizes$Type$1;
.super Ljava/lang/Object;
.source "ImageSizes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/ImageSizes$Type;->getValuesByPriority()[Lcom/amazon/kindle/cover/ImageSizes$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/cover/ImageSizes$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ImageSizes$Type;)I
    .locals 0

    .line 98
    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getPriority()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lcom/amazon/kindle/cover/ImageSizes$Type;

    check-cast p2, Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cover/ImageSizes$Type$1;->compare(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ImageSizes$Type;)I

    move-result p1

    return p1
.end method
