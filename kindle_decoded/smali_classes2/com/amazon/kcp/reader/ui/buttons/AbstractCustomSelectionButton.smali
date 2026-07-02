.class public abstract Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;
.super Ljava/lang/Object;
.source "AbstractCustomSelectionButton.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buttonTextResId:I

.field private final category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

.field protected context:Landroid/content/Context;

.field protected priority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    .line 32
    iput p4, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->priority:I

    .line 33
    iput p3, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    return-void
.end method


# virtual methods
.method public getButtonText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    return-object v0
.end method

.method public getCorrespondingFeatureType()Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$drawable;->tablet_selection_button_placeholder:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->buttonTextResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 44
    iget p1, p0, Lcom/amazon/kcp/reader/ui/buttons/AbstractCustomSelectionButton;->priority:I

    return p1
.end method

.method public isImageOnlyPresentationPreferred()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
