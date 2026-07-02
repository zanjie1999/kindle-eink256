.class public Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;
.super Ljava/lang/Object;
.source "KRXCustomSelectionButton.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;


# instance fields
.field private button:Lcom/amazon/kindle/krx/ui/IButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private selection:Lcom/amazon/kindle/krx/content/ContentSelection;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    .line 24
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    .line 26
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    return-void
.end method

.method private getButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq v0, p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 111
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/ContentSelection;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/IButton;

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    return-void
.end method


# virtual methods
.method public getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->getButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 36
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz p1, :cond_2

    .line 37
    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 43
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 41
    :cond_0
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 39
    :cond_1
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->DISABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 47
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1
.end method

.method public getButtonText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz p1, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCorrespondingFeatureType()Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz p1, :cond_0

    .line 76
    invoke-static {p2}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz p1, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->LONG:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->getButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isImageOnlyPresentationPreferred()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;->selection:Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    .line 94
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_0
    return-void
.end method

.method public shouldRefreshButtonsOnClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
