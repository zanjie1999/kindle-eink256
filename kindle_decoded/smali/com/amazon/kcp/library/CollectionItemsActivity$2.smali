.class Lcom/amazon/kcp/library/CollectionItemsActivity$2;
.super Ljava/lang/Object;
.source "CollectionItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/CollectionItemsActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$2;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->factory()Lcom/amazon/kcp/application/ILibraryFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/ILibraryFactory;->initializeCollections()Z

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$2;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    iget-object v0, v0, Lcom/amazon/kcp/library/CollectionItemsActivity;->fragmentHandler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->refresh()V

    return-void
.end method
