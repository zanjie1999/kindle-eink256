.class Lcom/amazon/kcp/library/LibraryLoaderKey;
.super Ljava/lang/Object;
.source "LibraryLoaderKey.java"


# instance fields
.field public final filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field public final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field public final groupingProvider:Lcom/amazon/kindle/content/GroupingQueryProvider;

.field public final limit:I

.field public final originId:Ljava/lang/String;

.field public final sortType:Lcom/amazon/kcp/library/LibrarySortType;

.field public final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 26
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 27
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 28
    iput p5, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    .line 29
    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->userId:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupingProvider:Lcom/amazon/kindle/content/GroupingQueryProvider;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryLoaderKey{groupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", grouping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupingProvider:Lcom/amazon/kindle/content/GroupingQueryProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
