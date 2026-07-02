.class public final Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "KFCShareProgressCommandItem.kt"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private final contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_share_progress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "KFCShareProgressCommandItem"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    return-object p1
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1080052

    .line 65
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->command_bar_share_progress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    .line 45
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewKfcShareUxEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_2

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v1, "Utils.getFactory()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object p1

    .line 55
    new-instance v2, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    iget-object v3, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 57
    iget-object v3, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {p1, v3, v2}, Lcom/amazon/kcp/reader/IShareHelper;->showNewShareOption(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    const-string v0, "Utils.getFactory().applicationCapabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object v3

    .line 34
    iget-object v1, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v1, :cond_0

    .line 35
    new-instance v7, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v7, v1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 36
    iget-object v4, p0, Lcom/amazon/android/widget/items/KFCShareProgressCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 37
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v6

    sget-object v8, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 36
    invoke-interface/range {v3 .. v8}, Lcom/amazon/kcp/reader/IShareHelper;->share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
