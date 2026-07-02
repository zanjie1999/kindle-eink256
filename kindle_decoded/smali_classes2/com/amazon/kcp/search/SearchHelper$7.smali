.class final Lcom/amazon/kcp/search/SearchHelper$7;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)I
    .locals 1

    .line 499
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 501
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 503
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 506
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 496
    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    check-cast p2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper$7;->compare(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)I

    move-result p1

    return p1
.end method
