.class Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;
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
    name = "RemoveCallable"
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

.field id:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

.field userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 574
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->userId:Ljava/lang/String;

    .line 576
    iput-object p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->id:Ljava/lang/String;

    .line 577
    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent;

    sget-object v1, Lcom/amazon/kindle/cms/CMSEvent$Action;->DELETE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/amazon/kindle/cms/CMSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->events:Ljava/util/Collection;

    .line 578
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->events:Ljava/util/Collection;

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

    .line 569
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->call()Ljava/lang/Void;

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

    .line 583
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;->events:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/cms/ContentManagementSystem;->removeItemFromCMS(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
