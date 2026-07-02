.class public final Lcom/amazon/kindle/setting/layout/MoreItemsFragmentCreator;
.super Ljava/lang/Object;
.source "MoreItemsFragmentCreator.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/layout/ItemsFragmentCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemsFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const-string v0, "configurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->Companion:Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;->newInstance(Ljava/util/List;)Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    move-result-object p1

    return-object p1
.end method
