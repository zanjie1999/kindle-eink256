.class public Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;
.super Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;
.source "HighlightColorCustomSelectionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;
    }
.end annotation


# instance fields
.field private button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

.field private buttonIconResId:I

.field private final changeTextResId:I

.field private final color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field private final createIconResId:I

.field private final createTextResId:I

.field private final deleteIconResId:I

.field private final deleteTextResId:I

.field private isAddedToView:Z

.field private isDelete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 3

    .line 43
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getCreateTextResId()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getPriorityResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isAddedToView:Z

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isDelete:Z

    .line 44
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 45
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getChangeTextResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->changeTextResId:I

    .line 46
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getCreateIconResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->createIconResId:I

    .line 47
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getCreateTextResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->createTextResId:I

    .line 48
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getDeleteIconResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->deleteIconResId:I

    .line 49
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getDeleteTextResId()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->deleteTextResId:I

    .line 50
    new-instance p2, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;-><init>(Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    return-void
.end method


# virtual methods
.method public getButton()Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    return-object v0
.end method

.method public getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
    .locals 3

    if-nez p1, :cond_0

    .line 88
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 91
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 96
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->canHighlight()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_5

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getTabletSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    .line 100
    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->createTextResId:I

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    .line 101
    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->createIconResId:I

    iput v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->buttonIconResId:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isDelete:Z

    if-eqz p1, :cond_4

    .line 104
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->deleteIconResId:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->buttonIconResId:I

    .line 107
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->deleteTextResId:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isDelete:Z

    goto :goto_0

    .line 110
    :cond_3
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->changeTextResId:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    .line 113
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->buttonIconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1

    .line 97
    :cond_5
    :goto_1
    sget-object p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object p1
.end method

.method public getColorName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 2

    .line 63
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isDelete:Z

    invoke-interface {p1, v0, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isDelete:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/amazon/kindle/krl/R$string;->speak_highlight_deleted:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$string;->speak_highlight_created:I

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setView(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Landroid/view/View$OnClickListener;",
            ">(TT;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isAddedToView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->isAddedToView:Z

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 80
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->button:Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
