.class Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;
.super Ljava/lang/Object;
.source "StoreUnavailableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->addPositiveButton(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;->this$0:Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;->this$0:Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder;

    const/4 v1, 0x0

    const-string v2, "kin_red_store_0"

    invoke-direct {v0, p2, v1, v2}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment$2;->this$0:Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;->access$000(Lcom/amazon/kcp/store/StoreUnavailableDialogFragment;)V

    :cond_0
    return-void
.end method
