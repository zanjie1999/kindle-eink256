.class Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MobileWeblabDebugPageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugWebLabViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final filter:Landroid/widget/Filter;

.field final synthetic this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

.field private visibleWeblabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;"
        }
    .end annotation
.end field

.field private weblabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;)V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 350
    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->context:Landroid/content/Context;

    .line 351
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->weblabList:Ljava/util/List;

    .line 352
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->visibleWeblabList:Ljava/util/List;

    .line 354
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    new-instance p2, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter$1;-><init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)V

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->filter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;)Ljava/util/List;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->weblabList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->visibleWeblabList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->visibleWeblabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->visibleWeblabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    .line 402
    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->context:Landroid/content/Context;

    .line 404
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v3, Lcom/amazon/kindle/krxsdk/R$layout;->debug_known_webview_layout:I

    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;-><init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;Landroid/view/View;Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 407
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const/4 p3, 0x1

    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    iget-object v1, v1, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->this$0:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;

    invoke-static {v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object v1

    iget-object v2, v0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    const-string p3, "Weblab %s has overrideValue of: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    iget-object p2, p2, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->this$0:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;

    invoke-static {p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 409
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    iget-object p2, p2, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->this$0:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;

    invoke-static {p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWebLabViewAdapter;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    iget-object p3, p3, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->this$0:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;

    invoke-static {p3}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object p3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->updateViewForOverride(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->updateViewForNoOverride()V

    .line 413
    :goto_1
    iget-object p1, v0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->listItem:Landroid/view/View;

    return-object p1
.end method
