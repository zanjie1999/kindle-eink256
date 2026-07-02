.class Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$2;
.super Ljava/lang/Object;
.source "SyncItemPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$2;->this$0:Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$2;->this$0:Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->access$000(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_nav_panel_sync_fpr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
