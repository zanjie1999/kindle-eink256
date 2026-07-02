.class Lcom/amazon/kcp/library/ContentInteractionHandler$1;
.super Ljava/lang/Object;
.source "ContentInteractionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ContentInteractionHandler;->openItemAndReportMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ContentInteractionHandler;

.field final synthetic val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ContentInteractionHandler;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/ContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/ContentInteractionHandler$1;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentInteractionHandler$1;->this$0:Lcom/amazon/kcp/library/ContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentInteractionHandler$1;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->prepOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/content/Intent;

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

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentInteractionHandler$1;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
