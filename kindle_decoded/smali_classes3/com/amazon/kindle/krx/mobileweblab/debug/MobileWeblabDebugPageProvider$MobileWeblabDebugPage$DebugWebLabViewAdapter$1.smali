.class Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;
.super Landroid/widget/Filter;
.source "MobileWeblabDebugPageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;-><init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

.field final synthetic val$this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->val$this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private weblabContainsAllSearchTerms(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 385
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->access$700(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 364
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 365
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

    invoke-static {v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->access$700(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    .line 366
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->weblabContainsAllSearchTerms(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_2
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 373
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->access$802(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;Ljava/util/List;)Ljava/util/List;

    .line 380
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
