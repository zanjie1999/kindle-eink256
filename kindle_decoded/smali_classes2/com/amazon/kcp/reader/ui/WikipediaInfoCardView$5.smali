.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;
.super Ljava/lang/Object;
.source "WikipediaInfoCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

.field final synthetic val$fixedQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;->val$fixedQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$600(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$600(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$5;->val$fixedQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
