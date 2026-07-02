.class Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$1;
.super Ljava/lang/Object;
.source "AutoCompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->performAutoComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$1;->this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter$1;->this$0:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
