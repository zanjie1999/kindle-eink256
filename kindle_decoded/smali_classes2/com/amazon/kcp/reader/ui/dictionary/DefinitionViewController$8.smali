.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getAlertDialogBuilderForDictionarySelect([Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

.field final synthetic val$dictionaries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/util/ArrayList;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->val$dictionaries:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 526
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->val$dictionaries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$002(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->val$dictionaries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$502(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    .line 536
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DICTIONARY_PURCHASED"

    const-string v2, "PurchasedDictionarySelected"

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 543
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getLanguageFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DICTIONARY_FREE"

    const-string v2, "FreeDictionarySelected"

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 551
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object p2

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionaryAsinFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictionaryASIN(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 557
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictCardImpressionPending(Z)V

    const-string v1, "DictionarySelect"

    .line 558
    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v1, "-"

    .line 567
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x2d

    .line 568
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 572
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->setPreferedDictionaryForLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 580
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setDictionaryLanguage(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 582
    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setDictionaryLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 586
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDictionaryLocal()Z

    move-result v0

    if-nez v0, :cond_4

    .line 587
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 590
    :cond_4
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupVisibility()Z

    goto :goto_2

    .line 592
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No dictionary selected in Dictionaries UI even when selected dictionary is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    .line 593
    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
