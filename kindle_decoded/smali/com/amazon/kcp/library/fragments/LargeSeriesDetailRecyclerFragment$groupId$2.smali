.class final Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeSeriesDetailRecyclerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ARG_GROUP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
