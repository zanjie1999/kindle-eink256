.class Lcom/amazon/kcp/reader/ui/WordWiseFooter$2;
.super Ljava/lang/Object;
.source "WordWiseFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFooter;->onContentStatusChange(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFooter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFooter;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->updateFooterText(Z)V

    return-void
.end method
