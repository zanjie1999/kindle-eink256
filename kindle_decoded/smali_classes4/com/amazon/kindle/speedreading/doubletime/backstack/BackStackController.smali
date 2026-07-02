.class public Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;
.super Ljava/lang/Object;
.source "BackStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;
    }
.end annotation


# static fields
.field private static final BACKSTACK_ENTRY_NAME:Ljava/lang/String; = "DoubleTimeBackstackEntry"


# instance fields
.field private final backStackChangedListener:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;

.field private final controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "DoubleTimeBackstackEntry"

    .line 25
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 28
    new-instance p2, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;-><init>(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)V

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->backStackChangedListener:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;

    .line 29
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-object p0
.end method


# virtual methods
.method public removeDoubleTimeFromBackStack()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->backStackChangedListener:Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController$BackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/backstack/BackStackController;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method
