.class Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;
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
    name = "CoverUpdateCallable"
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
.field bookID:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;->bookID:Ljava/lang/String;

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

    .line 1288
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;->bookID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->notifyCoverChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
