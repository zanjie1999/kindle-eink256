.class public final Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;
.source "ToggleBookmarkCommandItem.kt"


# instance fields
.field private final activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private final book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ToggleBookmarkCommandBar"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/AbstractReaderActionCommandItem;->isInAudibleMode(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    :cond_1
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    goto :goto_0

    .line 38
    :cond_2
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    :goto_0
    return-object p1
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 79
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_bookmark_filled:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_bookmark_outline:I

    .line 80
    :goto_2
    invoke-static {p1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 25
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    sget p1, Lcom/amazon/kindle/krl/R$integer;->newtron_command_bar_bookmark:I

    goto :goto_0

    .line 28
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$integer;->command_bar_bookmark:I

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, "activity.docViewer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 70
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_remove_bookmark:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->menuitem_add_bookmark:I

    .line 71
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 42
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 56
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const-string v3, "Menu"

    .line 57
    invoke-static {v2, v3}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportBookmarkAction(ZLjava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {p1, v3, v2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->toggleBookmark(Ljava/lang/String;Lcom/amazon/kcp/reader/ReaderActivity;)V

    if-eqz v1, :cond_1

    .line 59
    sget p1, Lcom/amazon/kindle/krl/R$string;->removing_bookmark:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$string;->adding_bookmark:I

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    iget-object p1, p0, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p0}, Lcom/amazon/android/widget/items/ToggleBookmarkCommandItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->refreshCommandBarIcon(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
