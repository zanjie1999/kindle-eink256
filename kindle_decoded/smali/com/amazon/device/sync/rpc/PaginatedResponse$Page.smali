.class public Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
.super Ljava/lang/Object;
.source "PaginatedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/rpc/PaginatedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasNext:Z

.field private mLinks:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private mNextUri:Ljava/lang/String;

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSubscriptionUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/device/sync/rpc/PaginatedResponse;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->this$0:Lcom/amazon/device/sync/rpc/PaginatedResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mNextUri:Ljava/lang/String;

    .line 49
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mResults:Ljava/util/List;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mHasNext:Z

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mLinks:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mSubscriptionUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/util/List;Lcom/amazon/whispersync/GetDirectoryLinks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/amazon/whispersync/GetDirectoryLinks;",
            ")V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->this$0:Lcom/amazon/device/sync/rpc/PaginatedResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mResults:Ljava/util/List;

    .line 30
    invoke-virtual {p3}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/amazon/whispersync/GetDirectoryLinks;->getFuture()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->setNextLinks(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mLinks:Ljava/lang/Object;

    .line 32
    invoke-virtual {p3}, Lcom/amazon/whispersync/GetDirectoryLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mSubscriptionUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/util/List;Lcom/amazon/whispersync/GetRecordsLinks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ")V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->this$0:Lcom/amazon/device/sync/rpc/PaginatedResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mResults:Ljava/util/List;

    .line 38
    invoke-virtual {p3}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/amazon/whispersync/GetRecordsLinks;->getFuture()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->setNextLinks(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mLinks:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mSubscriptionUri:Ljava/lang/String;

    return-void
.end method

.method private setNextLinks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mNextUri:Ljava/lang/String;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mHasNext:Z

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 66
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mNextUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mHasNext:Z

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both next and future uri cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mLinks:Ljava/lang/Object;

    return-object v0
.end method

.method public getNextPageUri()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mNextUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mNextUri:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriptionUri()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mSubscriptionUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatesUri()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->getNextPageUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->mHasNext:Z

    return v0
.end method
