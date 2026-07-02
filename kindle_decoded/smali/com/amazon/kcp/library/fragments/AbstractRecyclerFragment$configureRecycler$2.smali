.class public final Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$2;
.super Landroidx/recyclerview/widget/GridLayoutManager;
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
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;ILandroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$2;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-direct {p0, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
