.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->onAnimationStart(Landroid/animation/Animator;)V
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
.field final synthetic this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;

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

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;

    iget-object v1, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->val$displayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->prepOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Landroid/content/Intent;

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

    .line 633
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
