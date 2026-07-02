.class Lcom/amazon/kcp/reader/ui/ViewOptionData$1;
.super Ljava/lang/Object;
.source "ViewOptionData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ViewOptionData;->setOptions([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$000(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$100(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    return-void
.end method
