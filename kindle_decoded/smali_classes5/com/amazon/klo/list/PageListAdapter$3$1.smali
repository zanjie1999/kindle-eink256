.class Lcom/amazon/klo/list/PageListAdapter$3$1;
.super Ljava/lang/Object;
.source "PageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/PageListAdapter$3;->attempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/list/PageListAdapter$3;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/PageListAdapter$3;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$3$1;->this$1:Lcom/amazon/klo/list/PageListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$3$1;->this$1:Lcom/amazon/klo/list/PageListAdapter$3;

    iget-object v0, v0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
