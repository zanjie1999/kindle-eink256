.class public final Lcom/amazon/kcp/library/InfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "InfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/InfoFragment$InfoItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->info_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo p2, "requireContext()"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/ListView;

    .line 89
    new-instance p3, Lcom/amazon/kcp/library/InfoFragment$onCreateView$1;

    const/4 v4, 0x0

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->Companion:Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;->getAll()Ljava/util/List;

    move-result-object v5

    move-object v0, p3

    move-object v1, p0

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/InfoFragment$onCreateView$1;-><init>(Lcom/amazon/kcp/library/InfoFragment;Landroid/content/Context;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance p3, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;

    invoke-direct {p3, p0, p2}, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;-><init>(Lcom/amazon/kcp/library/InfoFragment;Landroid/widget/ListView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.ListView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
