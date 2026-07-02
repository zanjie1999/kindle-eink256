.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupTabletCardLinks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 405
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v0, p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocatorForAsin(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDictionaryLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 409
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupVisibility()Z

    .line 410
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_1
    return-void
.end method
