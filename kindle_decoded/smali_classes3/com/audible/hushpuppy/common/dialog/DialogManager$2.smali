.class Lcom/audible/hushpuppy/common/dialog/DialogManager$2;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->onEndOfSynchronizedContent()V
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

    .line 120
    iput-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$2;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$2;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->access$000(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/event/readalong/EndOfSynchronizedContentPositiveDialogClickEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/readalong/EndOfSynchronizedContentPositiveDialogClickEvent;

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
