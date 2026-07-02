.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
.source "ShareQuoteOnItemClickListener.java"


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"


# instance fields
.field private final CLASS_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 31
    const-class p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected composeShare()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Composing a quote share for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialSharing"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->validateBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->entryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareFalkorQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->entryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getClippingService()Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    move-result-object v2

    .line 52
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 51
    invoke-interface {v2, v1, v3, v0}, Lcom/amazon/kindle/krx/clipping/IKRXClippingService;->updateAndCheckClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Could not update clipping balance because selection or the start or end position were null"

    aput-object v2, v0, v1

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
