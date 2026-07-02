.class public final Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "AbstractRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->configureRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
