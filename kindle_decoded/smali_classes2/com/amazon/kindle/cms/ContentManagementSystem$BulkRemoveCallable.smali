.class Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BulkRemoveCallable"
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
.field events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation
.end field

.field final idsToRemove:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

.field final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1083
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->userId:Ljava/lang/String;

    .line 1085
    iput-object p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->idsToRemove:Ljava/util/Collection;

    .line 1086
    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->translate(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->events:Ljava/util/Collection;

    .line 1087
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->events:Ljava/util/Collection;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/cms/ICMSEventDAO;->addEvents(Ljava/util/Collection;)V

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

    .line 1078
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->idsToRemove:Ljava/util/Collection;

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;->events:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/cms/ContentManagementSystem;->bulkRemove(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
