.class Lcom/amazon/kindle/content/LibraryContentService$19;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->addLocalContent(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$bookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$state:Lcom/amazon/kindle/model/content/ContentState;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 3252
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$state:Lcom/amazon/kindle/model/content/ContentState;

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 5

    .line 3254
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$file:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$state:Lcom/amazon/kindle/model/content/ContentState;

    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$19;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/content/LibraryContentService;->addLocalDownloadingContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3252
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService$19;->call()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method
