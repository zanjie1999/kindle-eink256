.class Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$3;
.super Ljava/lang/Object;
.source "BaseLibraryFragmentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$3;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$3;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setEmptyLibraryCount(I)V

    return-void
.end method
