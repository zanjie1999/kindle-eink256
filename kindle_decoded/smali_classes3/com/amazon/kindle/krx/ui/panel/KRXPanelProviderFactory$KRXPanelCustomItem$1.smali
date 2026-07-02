.class Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;
.super Ljava/lang/Object;
.source "KRXPanelProviderFactory.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->getCallback()Lcom/amazon/kindle/callback/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;->this$0:Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;->this$0:Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->access$100(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;->this$0:Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->access$100(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;

    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;->onClick(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;->this$0:Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->access$100(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->onClick()V

    :goto_0
    return-void
.end method
