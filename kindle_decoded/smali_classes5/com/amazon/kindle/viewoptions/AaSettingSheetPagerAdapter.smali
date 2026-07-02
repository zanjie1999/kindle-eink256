.class public final Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "AaSettingSheetPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingSheetPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingSheetPagerAdapter.kt\ncom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1819#2,2:65\n1517#2:68\n1588#2,3:69\n734#2:72\n825#2,2:73\n1819#2,2:75\n1517#2:77\n1588#2,3:78\n1#3:67\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingSheetPagerAdapter.kt\ncom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter\n*L\n39#1,2:65\n55#1:68\n55#1,3:69\n56#1:72\n56#1,2:73\n60#1,2:75\n23#1:77\n23#1,3:78\n*E\n"
.end annotation


# instance fields
.field private final delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tabContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;",
            "Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;",
            ")V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tabContents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->tabContents:Ljava/util/ArrayList;

    .line 22
    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 79
    check-cast p3, Lcom/amazon/kindle/viewoptions/AaTab;

    .line 23
    invoke-direct {p0, p3}, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->itemForTab(Lcom/amazon/kindle/viewoptions/AaTab;)Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->items:Ljava/util/List;

    return-void
.end method

.method private final getTabItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->tabContents:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 70
    check-cast v2, Lcom/amazon/kindle/viewoptions/AaTab;

    .line 55
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaTab;->getType()Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    .line 56
    invoke-static {}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->values()[Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private final itemForTab(Lcom/amazon/kindle/viewoptions/AaTab;)Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->setTab(Lcom/amazon/kindle/viewoptions/AaTab;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->setDelegate(Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->getTabItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->tabContents:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/viewoptions/AaTab;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaTab;->getType()Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/amazon/kindle/viewoptions/AaTab;

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaTab;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public final resetScrollViews()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->items:Ljava/util/List;

    .line 75
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    .line 61
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->resetScrollView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->items:Ljava/util/List;

    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    .line 40
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->updateSettingVisibility()V

    goto :goto_0

    :cond_0
    return-void
.end method
