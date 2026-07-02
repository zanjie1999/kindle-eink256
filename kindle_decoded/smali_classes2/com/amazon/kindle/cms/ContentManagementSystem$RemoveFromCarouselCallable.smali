.class Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;
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
    name = "RemoveFromCarouselCallable"
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
.field bookId:Ljava/lang/String;

.field cmsUserId:Ljava/lang/String;

.field events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation
.end field

.field libraryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 4

    .line 1727
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->cmsUserId:Ljava/lang/String;

    .line 1729
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->libraryUri:Landroid/net/Uri;

    .line 1730
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->bookId:Ljava/lang/String;

    .line 1731
    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->cmsUserId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/cms/CMSEvent$Action;->REMOVE_FROM_CAROUSEL:Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/amazon/kindle/cms/CMSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->events:Ljava/util/Collection;

    .line 1732
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->events:Ljava/util/Collection;

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

    .line 1721
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1737
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/api/CMSServer;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->cmsUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->libraryUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->bookId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/cms/api/CMSServer;->removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 1738
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;->events:Ljava/util/Collection;

    invoke-interface {v0, v1, v4}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
