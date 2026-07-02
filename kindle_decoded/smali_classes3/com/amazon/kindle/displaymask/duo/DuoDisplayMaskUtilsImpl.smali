.class final Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsImpl;
.super Ljava/lang/Object;
.source "DuoFoldable.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsImpl;->getFragmentForActivity$DisplayMaskLibrary_release(Landroidx/fragment/app/FragmentActivity;)Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->addListener(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)Z

    return-void
.end method

.method public deviceSupportsDisplayMask()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getFragmentForActivity$DisplayMaskLibrary_release(Landroidx/fragment/app/FragmentActivity;)Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "DUO_SPANNED_LISTENER"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    check-cast v1, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;

    invoke-direct {v1}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-object v1
.end method

.method public getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/microsoft/device/display/DisplayMask;->fromResourcesRect(Landroid/content/Context;)Lcom/microsoft/device/display/DisplayMask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "context.resources"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/microsoft/device/display/DisplayMask;->getBoundingRectsForRotation(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public removeScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsImpl;->getFragmentForActivity$DisplayMaskLibrary_release(Landroidx/fragment/app/FragmentActivity;)Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->removeListener(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)Z

    return-void
.end method
