.class public final Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;
.super Ljava/lang/Object;
.source "MoreItemsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/setting/layout/MoreItemsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/util/List;)Lcom/amazon/kindle/setting/layout/MoreItemsFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/setting/layout/ItemConfiguration;",
            ">;)",
            "Lcom/amazon/kindle/setting/layout/MoreItemsFragment;"
        }
    .end annotation

    const-string v0, "itemConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "ITEMS_KEY"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    new-instance p1, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;

    invoke-direct {p1}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;-><init>()V

    .line 137
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
