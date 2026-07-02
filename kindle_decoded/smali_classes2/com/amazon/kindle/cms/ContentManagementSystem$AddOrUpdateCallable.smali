.class Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;
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
    name = "AddOrUpdateCallable"
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
.field private addToCarousel:Z

.field private events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation
.end field

.field item:Lcom/amazon/kindle/content/ContentMetadata;

.field prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

.field private userAccessed:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->item:Lcom/amazon/kindle/content/ContentMetadata;

    .line 434
    iput-object p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 435
    iput-boolean p4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->addToCarousel:Z

    .line 436
    iput-boolean p5, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->userAccessed:Z

    .line 437
    invoke-virtual {p1, p2, p4}, Lcom/amazon/kindle/cms/ContentManagementSystem;->translate(Lcom/amazon/kindle/content/ContentMetadata;Z)Lcom/amazon/kindle/cms/CMSEvent;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->events:Ljava/util/Collection;

    .line 439
    invoke-static {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$000(Lcom/amazon/kindle/cms/ContentManagementSystem;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->events:Ljava/util/Collection;

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

    .line 425
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->item:Lcom/amazon/kindle/content/ContentMetadata;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    iget-boolean v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->addToCarousel:Z

    iget-object v4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->events:Ljava/util/Collection;

    iget-boolean v5, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;->userAccessed:Z

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addOrUpdateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZLjava/util/Collection;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
