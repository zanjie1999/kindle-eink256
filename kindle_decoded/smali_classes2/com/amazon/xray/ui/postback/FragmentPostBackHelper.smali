.class public Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;
.super Ljava/lang/Object;
.source "FragmentPostBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;
    }
.end annotation


# static fields
.field private static final CHILD_FRAGMENT_TAG_PREFIX:Ljava/lang/String; = "CHILD_"

.field private static final FRAGMENTS_INTENT_KEY:Ljava/lang/String; = "fragments"

.field private static final ROOT_FRAGMENT_TAG:Ljava/lang/String; = "ROOT"

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.ui.postback.FragmentPostBackHelper"


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;

.field private final container:I

.field private final factory:Lcom/amazon/xray/ui/postback/FragmentFactory;

.field private final manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/xray/ui/postback/FragmentFactory;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 67
    iput-object p2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->factory:Lcom/amazon/xray/ui/postback/FragmentFactory;

    .line 68
    iput p3, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->container:I

    .line 70
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    .line 73
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    new-instance p2, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;

    invoke-direct {p2, p0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;-><init>(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method private createPostBackIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/xray/ui/postback/FragmentParcel;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating postBack intent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fragment parcels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "fragments"

    .line 170
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v1
.end method

.method private pushFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 260
    iget v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->container:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 262
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public executePendingTransactions()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHILD_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFragmentPostBackIntent()Landroid/content/Intent;
    .locals 4

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/xray/ui/postback/FragmentParcel;

    new-instance v2, Lcom/amazon/xray/ui/postback/FragmentParcel;

    invoke-virtual {p0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/xray/ui/postback/FragmentParcel;-><init>(Landroidx/fragment/app/Fragment;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->createPostBackIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPostBackIntent()Landroid/content/Intent;
    .locals 6

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v1, Lcom/amazon/xray/ui/postback/FragmentParcel;

    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    const-string v3, "ROOT"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/xray/ui/postback/FragmentParcel;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 141
    new-instance v2, Lcom/amazon/xray/ui/postback/FragmentParcel;

    iget-object v3, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHILD_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/xray/ui/postback/FragmentParcel;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->createPostBackIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getRootFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public pushFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 213
    iget-object v0, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->pushFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHILD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->pushFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public reload()V
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getPostBackIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->removeRootFragment()V

    .line 245
    invoke-virtual {p0, v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->restoreFromIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method public removeRootFragment()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getRootFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public restoreFromIntent(Landroid/content/Intent;)Z
    .locals 6

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "fragments"

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 98
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fragment parcels from intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/ui/postback/FragmentParcel;

    .line 106
    iget-object v4, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->factory:Lcom/amazon/xray/ui/postback/FragmentFactory;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/postback/FragmentParcel;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/xray/ui/postback/FragmentFactory;->createFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 107
    invoke-virtual {v2}, Lcom/amazon/xray/ui/postback/FragmentParcel;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {v2}, Lcom/amazon/xray/ui/postback/FragmentParcel;->getSavedState()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 109
    invoke-static {v4}, Lcom/amazon/xray/ui/util/FragmentStateUtil;->apply(Landroidx/fragment/app/Fragment;)V

    if-nez v1, :cond_3

    const-string v2, "ROOT"

    .line 113
    invoke-direct {p0, v4, v2, v0}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->pushFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_1

    .line 115
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHILD_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2, v3}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->pushFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v0
.end method
