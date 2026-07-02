.class Lcom/audible/hushpuppy/common/dialog/DialogManager$6;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->onEndOfSample(Lcom/audible/mobile/domain/Asin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$6;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 180
    iget-object p2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$6;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-static {p2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->access$300(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    move-result-object p2

    sget-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {p2, v0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    .line 182
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
