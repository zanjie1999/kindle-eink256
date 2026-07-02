.class Lcom/amazon/kcp/redding/ThemeActivity$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/ThemeActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ThemeActivity;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kcp/redding/ThemeActivity$1;->this$0:Lcom/amazon/kcp/redding/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity$1;->this$0:Lcom/amazon/kcp/redding/ThemeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isRecreatedForThemeChange"

    const/4 v2, 0x1

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-static {}, Lcom/amazon/kcp/redding/ThemeActivity;->access$000()Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity$1;->this$0:Lcom/amazon/kcp/redding/ThemeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/ThemeActivity;->access$100(Lcom/amazon/kcp/redding/ThemeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity$1;->this$0:Lcom/amazon/kcp/redding/ThemeActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ThemeActivity;->handleThemeChange()V

    :cond_0
    return-void
.end method
