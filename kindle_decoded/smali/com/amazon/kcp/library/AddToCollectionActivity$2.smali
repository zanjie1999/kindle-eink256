.class Lcom/amazon/kcp/library/AddToCollectionActivity$2;
.super Ljava/lang/Object;
.source "AddToCollectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AddToCollectionActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AddToCollectionActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity$2;->this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionActivity$2;->this$0:Lcom/amazon/kcp/library/AddToCollectionActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AddToCollectionActivity;->getGridFragment()Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->addCollectionItems()V

    return-void
.end method
