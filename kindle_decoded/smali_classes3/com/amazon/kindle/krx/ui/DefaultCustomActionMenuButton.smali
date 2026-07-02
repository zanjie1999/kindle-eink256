.class public Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;
.super Lcom/amazon/android/menu/AbstractCustomActionMenuButton;
.source "DefaultCustomActionMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/menu/AbstractCustomActionMenuButton<",
        "Lcom/amazon/kcp/reader/ReaderActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private button:Lcom/amazon/kindle/krx/ui/IButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final iconName:Ljava/lang/String;

.field private priority:I

.field private showAsAction:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->showAsAction:Z

    .line 31
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    .line 32
    iput p4, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->priority:I

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->retrieveIconName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->iconName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "IZ)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;I)V

    .line 40
    iput-boolean p5, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->showAsAction:Z

    return-void
.end method

.method private retrieveIconName()Ljava/lang/String;
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->activity:Landroid/app/Activity;

    check-cast v2, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->activity:Landroid/app/Activity;

    check-cast v3, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 49
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    .line 48
    invoke-virtual {v2, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/menu/AbstractCustomActionMenuButton;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 115
    instance-of v0, p1, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-static {p1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/ui/IconType;->LARGE:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->priority:I

    return v0
.end method

.method public handleOnClick()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 110
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->button:Lcom/amazon/kindle/krx/ui/IButton;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showAsAction()I
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;->showAsAction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
