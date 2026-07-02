.class public final Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;
.super Ljava/lang/Object;
.source "RecapsPanelProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;->this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;->this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->access$getRecapsPanelSecondaryText$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;->this$0:Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->access$getRecapsPanelText$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
