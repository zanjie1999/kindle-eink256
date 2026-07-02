.class Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;
.super Ljava/lang/Object;
.source "PlaySelectionButtonRegistry.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyCustomSelectionButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IButton;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$500(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 121
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->getVisibility(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$400(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method
