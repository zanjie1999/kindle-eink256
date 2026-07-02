.class Lcom/amazon/kcp/library/CollectionItemsActivity$1;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;
.source "CollectionItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/CollectionItemsActivity;
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

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$1;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$1;->this$0:Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
