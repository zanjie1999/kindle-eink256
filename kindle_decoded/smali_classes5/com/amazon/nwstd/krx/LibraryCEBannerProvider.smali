.class public Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;
.super Ljava/lang/Object;
.source "LibraryCEBannerProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Landroid/view/View;",
        "Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLibraryCEBannerController:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

.field private final mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    .line 36
    new-instance v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->mLibraryCEBannerController:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;)Landroid/view/View;
    .locals 2

    .line 51
    sget-object v0, Lcom/amazon/kindle/krx/ui/DecorationPosition;->TOP:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    iget-object v1, p1, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->position:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    iget-object v1, p1, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object p1, p1, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, p1, :cond_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->mLibraryCEBannerController:Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->getBanner()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->get(Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->getPriority(Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;)I

    move-result p1

    return p1
.end method

.method public register()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->mLibraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLibraryDecorationProviderForSpecificView(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    return-void
.end method
