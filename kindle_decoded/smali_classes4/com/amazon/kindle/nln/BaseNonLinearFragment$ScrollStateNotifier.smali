.class Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseNonLinearFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/BaseNonLinearFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollStateNotifier"
.end annotation


# instance fields
.field private fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;->fragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
