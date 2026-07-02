.class final Lcom/amazon/whispersync/org/apache/commons/io/input/BOMInputStream$1;
.super Ljava/lang/Object;
.source "BOMInputStream.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/io/input/BOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;)I
    .locals 0

    .line 140
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;->length()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;->length()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 137
    check-cast p1, Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;

    check-cast p2, Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/io/input/BOMInputStream$1;->compare(Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;Lcom/amazon/whispersync/org/apache/commons/io/ByteOrderMark;)I

    move-result p1

    return p1
.end method
