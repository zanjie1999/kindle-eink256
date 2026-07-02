.class final Lcom/amazon/kcp/search/SearchHelper$6;
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
        "Lcom/amazon/kindle/model/content/IListableBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;)I
    .locals 0

    .line 485
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 482
    check-cast p1, Lcom/amazon/kindle/model/content/IListableBook;

    check-cast p2, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper$6;->compare(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result p1

    return p1
.end method
