.class final Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;
.super Ljava/lang/Object;
.source "ReaderSyncCxDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->configureMrprBottomSheetOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;->this$0:Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;->$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;->this$0:Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;->$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->toggleMrprBottomSheet(Landroid/content/Context;Z)V

    return-void
.end method
