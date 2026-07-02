.class Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;
.super Ljava/lang/Object;
.source "LibraryCEBannerViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->getBanner()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_accept:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->access$000(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->access$100(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->access$200(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V

    goto :goto_0

    .line 176
    :cond_1
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_decline:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->access$300(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    const-string v0, "CE library banner click action is not configured."

    .line 179
    invoke-static {p1, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
