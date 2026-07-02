.class Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;
.super Ljava/lang/Object;
.source "FullScreenImageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenImageDialogOnShowListener"
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;->this$0:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->applyReaderBrightness(Landroid/view/Window;)V

    return-void
.end method
