.class public Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
.super Ljava/lang/Object;
.source "LibraryQueryModelBuilder.java"


# instance fields
.field private model:Lcom/amazon/kcp/library/query/LibraryQueryModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;

    invoke-direct {v0}, Lcom/amazon/kcp/library/query/LibraryQueryModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    return-void
.end method

.method public static newInstance()Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public buildModel()Lcom/amazon/kcp/library/query/ILibraryQueryModel;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iget-object v0, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iget-object v1, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/query/LibraryQueryModel;-><init>(Lcom/amazon/kcp/library/query/LibraryQueryModel;)V

    .line 116
    invoke-virtual {v0}, Lcom/amazon/kcp/library/query/LibraryQueryModel;->buildModel()V

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required attribute filter: make sure that you initialize the model with proper attributes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput-object p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object p0
.end method

.method public withGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput-object p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object p0
.end method

.method public withLimit(I)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    return-object p0
.end method

.method public withOffset(I)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    return-object p0
.end method

.method public withOriginId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput-object p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public withSortType(Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput-object p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->model:Lcom/amazon/kcp/library/query/LibraryQueryModel;

    iput-object p1, v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    return-object p0
.end method
