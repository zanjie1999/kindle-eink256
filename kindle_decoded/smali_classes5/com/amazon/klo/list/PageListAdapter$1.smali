.class Lcom/amazon/klo/list/PageListAdapter$1;
.super Ljava/lang/Object;
.source "PageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/PageListAdapter;->onBindViewHolder(Lcom/amazon/klo/list/PageListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/list/PageListAdapter;

.field final synthetic val$viewHolder:Lcom/amazon/klo/list/PageListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/PageListAdapter;Lcom/amazon/klo/list/PageListAdapter$ViewHolder;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$1;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    iput-object p2, p0, Lcom/amazon/klo/list/PageListAdapter$1;->val$viewHolder:Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$1;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {p1}, Lcom/amazon/klo/list/PageListAdapter;->access$000(Lcom/amazon/klo/list/PageListAdapter;)Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$1;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {p1}, Lcom/amazon/klo/list/PageListAdapter;->access$000(Lcom/amazon/klo/list/PageListAdapter;)Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$1;->val$viewHolder:Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;->onClick(I)V

    :cond_0
    return-void
.end method
