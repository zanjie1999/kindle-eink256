.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionContext;
.source "LibraryContentInteractionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->newActionContext(Ljava/util/List;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$books:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/util/List;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;->val$books:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v0, v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public getBooks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;->val$books:Ljava/util/List;

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$25;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v0, v0, Lcom/amazon/kcp/library/ContentInteractionHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method
