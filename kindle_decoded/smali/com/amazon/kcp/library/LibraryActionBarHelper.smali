.class public Lcom/amazon/kcp/library/LibraryActionBarHelper;
.super Ljava/lang/Object;
.source "LibraryActionBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public announceActionModeBarIfNeeded()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->action_mode_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    .line 95
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->speak_action_mode_bar_visible:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDescendantFocusable(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    sget-object p1, Lcom/amazon/kcp/library/LibraryActionBarHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to find toolbar view"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper;->activity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabledOptions(Landroid/view/Menu;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->values()[Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->getItemId()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
