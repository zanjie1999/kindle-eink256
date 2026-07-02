.class Lcom/amazon/kindle/content/LibraryContentService$11$1;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$oldLastModifiedTime:J

.field final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService$11;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$filename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$oldLastModifiedTime:J

    iput-object p6, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$userid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1957
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService$11$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .line 1959
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v0, v0, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-boolean v3, v1, Lcom/amazon/kindle/content/LibraryContentService$11;->val$performSilentUpdate:Z

    if-nez v3, :cond_0

    iget-boolean v1, v1, Lcom/amazon/kindle/content/LibraryContentService$11;->val$forced:Z

    if-eqz v1, :cond_8

    .line 1962
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$filename:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v3

    .line 1963
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1964
    invoke-static {}, Lcom/amazon/kindle/content/LibraryContentService;->access$900()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteLocalFilesPendingRemoval for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " filename "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " oldLastModifiedTime "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$oldLastModifiedTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " newLastModifiedTime "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1969
    :cond_1
    iget-wide v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$oldLastModifiedTime:J

    cmp-long v1, v5, v3

    if-ltz v1, :cond_8

    .line 1970
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$id:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1982
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 1985
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v3, v3, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$userid:Ljava/lang/String;

    .line 1986
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v5, v5, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v5}, Lcom/amazon/kindle/content/LibraryContentService;->access$700(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$userid:Ljava/lang/String;

    .line 1985
    :goto_1
    invoke-static {v3, v1, v5}, Lcom/amazon/kindle/content/LibraryContentService;->access$1000(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z

    move-result v3

    :cond_4
    if-eqz v4, :cond_5

    if-nez v3, :cond_6

    .line 1991
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$filename:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 1992
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v3, v3, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->val$filename:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 1996
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v3, v3, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v3}, Lcom/amazon/kindle/content/LibraryContentService;->access$1100(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->access$1200(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 2001
    :cond_7
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$11$1;->this$1:Lcom/amazon/kindle/content/LibraryContentService$11;

    iget-object v1, v1, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/amazon/kindle/content/LibraryContentService;->access$1300(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    :cond_8
    return-object v2
.end method
