.class public Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "ReadingModeSwitchCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSwitchButtonActive:Z

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->isSwitchButtonActive:Z

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "LavaMagazineSwitchButton"

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 49
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_lava_magazine_switch:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_lava_magazine_switch_to_fixed:I

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 88
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p2

    .line 89
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_lava_magazine_switch_to_reflowable:I

    goto :goto_2

    :cond_2
    :goto_1
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_lava_magazine_switch_to_fixed:I

    .line 92
    :cond_3
    :goto_2
    invoke-static {p1, p2}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->command_bar_lava_magazine_switch:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 71
    sget p2, Lcom/amazon/kindle/krl/R$string;->lava_magazine_switch:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 54
    iget-boolean p1, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->isSwitchButtonActive:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 57
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->isSwitchButtonActive:Z

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onReadingModeSwitchPressed()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->onClick(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getSettingType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->READING_MODE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    if-ne v0, v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    if-ne v0, v1, :cond_1

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    .line 116
    :goto_0
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    sget-object v2, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 118
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem$1;-><init>(Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onThumbnailPlaceholderVisibilityEvent(Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 130
    iget-boolean p1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;->areShown:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->isSwitchButtonActive:Z

    return-void
.end method
