.class Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;
.super Ljava/lang/Object;
.source "NotesAndHighlightDebugMenuPageProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->configureHighlightTutorialOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;Landroid/widget/CheckBox;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;->this$0:Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;->this$0:Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->access$000(Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setHighlightTutorialEnabled(Landroid/content/Context;Z)V

    return-void
.end method
