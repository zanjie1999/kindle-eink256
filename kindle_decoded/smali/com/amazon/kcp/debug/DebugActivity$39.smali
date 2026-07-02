.class Lcom/amazon/kcp/debug/DebugActivity$39;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onChangeCampaignDomain(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$newCampaignDomain:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 2166
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$39;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$39;->val$newCampaignDomain:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2168
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$39;->val$newCampaignDomain:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->changeCampaignDomain(Ljava/lang/String;)V

    .line 2169
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$39;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Domain set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v0

    const-string/jumbo v1, "url.rec.prod"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 2169
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2170
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
