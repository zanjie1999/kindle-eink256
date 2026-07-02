.class Lcom/amazon/kcp/debug/DebugActivity$4;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

.field final synthetic val$editText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->val$editText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->val$editText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 348
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->val$contentUpdateService:Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->setDebugDelayAfterSwap(J)V

    .line 349
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delay set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$4;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const-string v1, "Illegal delay"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
