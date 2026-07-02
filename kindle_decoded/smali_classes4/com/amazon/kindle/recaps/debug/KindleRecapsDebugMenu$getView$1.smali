.class final Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;
.super Ljava/lang/Object;
.source "KindleRecapsDebugMenu.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $recapsEnabledCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;->this$0:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;->$recapsEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;->this$0:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->access$getDebugConfig$p(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;)Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;->$recapsEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->setRecapsEnabled(Z)V

    return-void
.end method
