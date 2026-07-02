.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;
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

    .line 418
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 421
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/util/ArrayList;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 428
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 429
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 430
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v4

    .line 432
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v7}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v5, v3, :cond_3

    .line 441
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v4}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 442
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v4}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$600(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    .line 444
    aget-object v7, v1, v6

    invoke-virtual {v7, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 452
    :cond_3
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_6

    .line 461
    aget-object v6, v1, v4

    invoke-static {v6}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getContentDescriptionForDictionary(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 463
    aput-object v6, v1, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 468
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0, v1, v5, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$700(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;[Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 488
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-ne v5, v3, :cond_7

    .line 491
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    return-void
.end method
