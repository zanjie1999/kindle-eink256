.class Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;
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
    name = "BulkAddOrUpdateCallable"
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
.field final addToCarousel:Z

.field events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation
.end field

.field final itemsToAddOrUpdate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation

    .line 913
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->itemsToAddOrUpdate:Ljava/util/Collection;

    .line 915
    iput-boolean p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->addToCarousel:Z

    .line 916
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/cms/ContentManagementSystem;->translate(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->events:Ljava/util/Collection;

    .line 918
    invoke-static {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$000(Lcom/amazon/kindle/cms/ContentManagementSystem;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 919
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->events:Ljava/util/Collection;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/cms/ICMSEventDAO;->addEvents(Ljava/util/Collection;)V

    :cond_0
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

    .line 908
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->call()Ljava/lang/Void;

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

    .line 925
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->itemsToAddOrUpdate:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->addToCarousel:Z

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;->events:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/cms/ContentManagementSystem;->bulkAddOrUpdate(Ljava/util/Collection;ZLjava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
