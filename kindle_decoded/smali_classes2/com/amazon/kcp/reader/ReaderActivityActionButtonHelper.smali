.class public Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;
.super Ljava/lang/Object;
.source "ReaderActivityActionButtonHelper.java"


# static fields
.field private static final PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper$1;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static addCustomActionButtons(Landroid/view/Menu;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 9

    .line 56
    invoke-static {p0}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->clearCustomActionButtons(Landroid/view/Menu;)V

    .line 57
    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtons(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->PRIORITY_COMPARATOR:Ljava/util/Comparator;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 62
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtonItemId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v6, :cond_4

    .line 75
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v6

    const/high16 v7, 0x20000

    if-eqz v6, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v6

    const/16 v8, 0x64

    if-ne v6, v8, :cond_1

    .line 76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 77
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v6

    sget-object v8, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v2, v8}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-interface {p0, v7, v5, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SHARE_BUTTON_KEY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 80
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v6

    sget-object v8, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v2, v8}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-interface {p0, v7, v5, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 83
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v6

    sget-object v8, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v2, v8}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-interface {p0, v7, v5, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 85
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IActionButton;->showAsAction()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    move-object v6, v5

    .line 90
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v5

    sget-object v7, Lcom/amazon/kindle/krx/ui/IconType;->SOFTKEY:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {v2, v5, v7}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 95
    :cond_4
    sget-object v5, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper$2;->$SwitchMap$com$amazon$kindle$krx$ui$ComponentStatus:[I

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v4, :cond_6

    const/4 v7, 0x2

    if-eq v5, v7, :cond_5

    .line 108
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 109
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 103
    :cond_5
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :cond_6
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->max_visible_action_item_count:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_8
    :goto_2
    if-ge v3, p1, :cond_a

    .line 123
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 124
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 125
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtonItemId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    .line 129
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 131
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method private static clearCustomActionButtons(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x20000

    .line 205
    invoke-interface {p0, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 206
    invoke-interface {p0, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method private static getActionButtonItemId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 194
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getActionButtons(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCustomActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    .line 156
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 210
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getUIColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0
.end method

.method public static getMenuItemByButtonId(Landroid/view/Menu;Ljava/lang/String;)Landroid/view/MenuItem;
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtonItemId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static onCustomActionButtonSelected(Landroid/view/MenuItem;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 138
    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtons(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 140
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/reader/ReaderActivityActionButtonHelper;->getActionButtonItemId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 142
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
