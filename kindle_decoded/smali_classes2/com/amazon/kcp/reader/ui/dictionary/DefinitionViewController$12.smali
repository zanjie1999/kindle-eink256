.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryCorruptView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
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

    .line 905
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->val$selectedText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 908
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->deleteDictionary()Z

    .line 909
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->val$dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 910
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 911
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->val$selectedText:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupContents(Ljava/lang/String;Z)Z

    .line 912
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
