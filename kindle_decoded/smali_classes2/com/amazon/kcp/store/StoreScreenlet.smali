.class public final Lcom/amazon/kcp/store/StoreScreenlet;
.super Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.source "StoreScreenlet.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# static fields
.field private static final HIDE_TITLE_KEY:Ljava/lang/String; = "hideTitle"


# instance fields
.field private final fragmentClient:Lcom/amazon/kcp/store/IStoreFragmentClient;

.field private final fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

.field private hideTitle:Z

.field private final rootViewId:I


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 7

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    .line 38
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->rootViewId:I

    .line 39
    new-instance v0, Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getTag()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/amazon/kcp/store/StoreFragment$Option;->EXPLICIT_LOADS:Lcom/amazon/kcp/store/StoreFragment$Option;

    .line 40
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getMetricsContext()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/store/StoreFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    .line 41
    new-instance p1, Lcom/amazon/kcp/store/StoreScreenlet$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/store/StoreScreenlet$1;-><init>(Lcom/amazon/kcp/store/StoreScreenlet;)V

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentClient:Lcom/amazon/kcp/store/IStoreFragmentClient;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/StoreScreenlet;)Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p0

    return-object p0
.end method

.method private static createScreenletIntent(Landroid/content/Intent;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 148
    :goto_0
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/store/StoreScreenletType;->INSTANCE:Lcom/amazon/kcp/store/StoreScreenletType;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 1

    .line 56
    new-instance v0, Lcom/amazon/kcp/store/StoreScreenlet;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-object v0
.end method

.method public static newIntentForBaseStoreFront()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 65
    sget-object v0, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    const-string v1, "kin_red_lib_0"

    invoke-static {v1, v0}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForStoreFront(Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v0

    return-object v0
.end method

.method public static newIntentForBookDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 9

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v8}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "hideTitle"

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    new-instance p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v0, Lcom/amazon/kcp/store/StoreScreenletType;->INSTANCE:Lcom/amazon/kcp/store/StoreScreenletType;

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public static newIntentForSeriesDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 9

    .line 108
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v8}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "hideTitle"

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    new-instance p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v0, Lcom/amazon/kcp/store/StoreScreenletType;->INSTANCE:Lcom/amazon/kcp/store/StoreScreenletType;

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object p1
.end method

.method static newIntentForStoreFront(Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 7

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 76
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowStorefrontIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 79
    :goto_0
    new-instance p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v0, Lcom/amazon/kcp/store/StoreScreenletType;->INSTANCE:Lcom/amazon/kcp/store/StoreScreenletType;

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public static newIntentForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 123
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    invoke-interface {v0, v1, p0, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 125
    invoke-static {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->createScreenletIntent(Landroid/content/Intent;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 138
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1, p0, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "title"

    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->createScreenletIntent(Landroid/content/Intent;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 258
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderMode()Lcom/amazon/kindle/krx/ui/HeaderMode;
    .locals 1

    .line 201
    sget-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->TITLE:Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->hideTitle:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getTitleString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public onActivate()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    iget v2, p0, Lcom/amazon/kcp/store/StoreScreenlet;->rootViewId:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 169
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentClient:Lcom/amazon/kcp/store/IStoreFragmentClient;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->setClient(Lcom/amazon/kcp/store/IStoreFragmentClient;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/amazon/kcp/store/R$id;->main_view_bottom_sheet_container:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->registerActivity(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 154
    sget v0, Lcom/amazon/kcp/store/R$layout;->store_screenlet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 155
    iget p2, p0, Lcom/amazon/kcp/store/StoreScreenlet;->rootViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    return-object p1
.end method

.method public onDeactivate()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    iget v2, p0, Lcom/amazon/kcp/store/StoreScreenlet;->rootViewId:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 183
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    .line 162
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onGoBack()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->goBack()V

    :cond_0
    return-void
.end method

.method public onGoBackToBeginning()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->goBackToFirstPage()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hideTitle"

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->hideTitle:Z

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/StoreFragment;->loadPage(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 1

    .line 234
    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BOTTOM_BAR_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    if-ne p1, v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragmentHandler;->onReSelected()V

    :cond_0
    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 0

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    return-void
.end method
