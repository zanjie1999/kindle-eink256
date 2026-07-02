.class Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;
.super Ljava/lang/Object;
.source "BackStackController.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackStackChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const-string v1, "DoubleTimeBackstackEntry"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v4}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v4}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->isDoubletimePaused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    .line 76
    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->isShowingClutch()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V

    :cond_5
    :goto_3
    return-void
.end method
