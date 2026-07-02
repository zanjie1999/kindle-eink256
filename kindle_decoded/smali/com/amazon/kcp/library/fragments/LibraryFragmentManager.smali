.class public Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;
.super Ljava/lang/Object;
.source "LibraryFragmentManager.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected activity:Landroidx/fragment/app/FragmentActivity;

.field private final containerId:I

.field protected currentLibraryContext:Lcom/amazon/kcp/library/LibraryContext;

.field private currentTag:Ljava/lang/String;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected final fragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILcom/amazon/kcp/library/LibraryFragmentManagerClient;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentTag:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragments:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 50
    iput p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->containerId:I

    .line 51
    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    .line 52
    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-object p1
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/LibraryFragmentManagerClient;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragments:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v2, v3, p1, p0, p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragments:Ljava/util/HashMap;

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2, p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 161
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewModeChanged(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 138
    iget v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->containerId:I

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/library/fragments/IFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 139
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 144
    iget p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->containerId:I

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentLibraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 145
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/LibraryFragmentManagerClient;->setLibraryMenuOptionsBarEnabled(Z)V

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/LibraryFragmentManagerClient;->showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public switchToFragmentHandler(Ljava/lang/String;ZZLcom/amazon/kcp/library/LibraryContext;)V
    .locals 4

    .line 87
    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentLibraryContext:Lcom/amazon/kcp/library/LibraryContext;

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 101
    sget-object p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to switch to unregistered FragmentHandler: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 109
    iget v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->containerId:I

    invoke-interface {v0, v3, v2}, Lcom/amazon/kcp/library/fragments/IFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 114
    iget p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->containerId:I

    invoke-interface {v1, p2, v2, p4}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 117
    :cond_4
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->currentTag:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    if-eqz p3, :cond_5

    .line 125
    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 127
    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
