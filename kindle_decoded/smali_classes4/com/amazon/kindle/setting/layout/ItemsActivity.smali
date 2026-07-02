.class public final Lcom/amazon/kindle/setting/layout/ItemsActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ItemsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/layout/ItemsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemsActivity.kt\ncom/amazon/kindle/setting/layout/ItemsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/setting/layout/ItemsActivity$Companion;

.field private static final ITEMS_FRAGMENT_TAG:Ljava/lang/String; = "ITEMS_FRAGMENT"

.field public static final ITEMS_KET:Ljava/lang/String; = "ITEMS_KEY"

.field public static final TITLE_KET:Ljava/lang/String; = "TITLE_KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/setting/layout/ItemsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/setting/layout/ItemsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/setting/layout/ItemsActivity;->Companion:Lcom/amazon/kindle/setting/layout/ItemsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 18
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->activity_items:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "TITLE_KEY"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "ITEMS_KEY"

    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 25
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ITEMS_FRAGMENT"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 32
    const-class v1, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    const-string v3, "UniqueDiscovery.of(Items\u2026gmentCreator::class.java)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;->createItemsFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    move-object v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 38
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->fragment_container:I

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 41
    :cond_4
    const-class p1, Lcom/amazon/kindle/setting/layout/ItemsActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
