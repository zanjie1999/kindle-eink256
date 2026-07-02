.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadFailedView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

.field final synthetic val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

.field final synthetic val$selectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->val$selectedText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 738
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 739
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->val$selectedText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupContents(Ljava/lang/String;Z)Z

    .line 740
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 741
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 742
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
