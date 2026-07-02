.class final Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandIteratively$1;
.super Ljava/lang/Object;
.source "ExpandableAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIteratively()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandIteratively$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandIteratively$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->access$expandIteratively(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V

    return-void
.end method
