.class public abstract Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;
.super Lcom/amazon/xray/ui/widget/TabView$TabAdapter;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TabArrayAdapter"
.end annotation


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stateKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 401
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->fragments:Ljava/util/List;

    .line 404
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->stateKeys:Ljava/util/List;

    .line 407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->labels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addTab(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->stateKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->labels:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStateKey(I)Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->stateKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
