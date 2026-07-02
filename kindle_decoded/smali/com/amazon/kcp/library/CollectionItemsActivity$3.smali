.class Lcom/amazon/kcp/library/CollectionItemsActivity$3;
.super Ljava/lang/Object;
.source "CollectionItemsActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/CollectionItemsActivity;->registerItemCountChanged(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V
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

    .line 179
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$3;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$3;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/CollectionItemsActivity;->access$000(Lcom/amazon/kcp/library/CollectionItemsActivity;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$3;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/CollectionItemsActivity;->access$000(Lcom/amazon/kcp/library/CollectionItemsActivity;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->isUncollected(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$3;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/CollectionItemsActivity;->access$100(Lcom/amazon/kcp/library/CollectionItemsActivity;)V

    :cond_0
    return-void
.end method
