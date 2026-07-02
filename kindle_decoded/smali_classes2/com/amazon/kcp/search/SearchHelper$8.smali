.class Lcom/amazon/kcp/search/SearchHelper$8;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHelper;->sortedResult(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchHelper;

.field final synthetic val$resultCounter:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHelper;Ljava/util/Map;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$8;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHelper$8;->val$resultCounter:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;)I
    .locals 2

    .line 623
    instance-of v0, p1, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper$8;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper$8;->val$resultCounter:Ljava/util/Map;

    invoke-static {v0, p1, p2, v1}, Lcom/amazon/kcp/search/SearchHelper;->access$000(Lcom/amazon/kcp/search/SearchHelper;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;Ljava/util/Map;)I

    move-result p1

    return p1

    .line 627
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v0, :cond_1

    instance-of v1, p2, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v1, :cond_1

    .line 628
    check-cast p1, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 629
    check-cast p2, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 630
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 619
    check-cast p1, Lcom/amazon/kindle/model/content/IListableBook;

    check-cast p2, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper$8;->compare(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;)I

    move-result p1

    return p1
.end method
