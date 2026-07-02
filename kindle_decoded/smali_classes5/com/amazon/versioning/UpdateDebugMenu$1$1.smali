.class Lcom/amazon/versioning/UpdateDebugMenu$1$1;
.super Ljava/lang/Object;
.source "UpdateDebugMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/UpdateDebugMenu$1;->configureUpdateButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/versioning/UpdateDebugMenu$1;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/UpdateDebugMenu$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/versioning/UpdateDebugMenu$1$1;->this$1:Lcom/amazon/versioning/UpdateDebugMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/amazon/versioning/UpdateDebugMenu$1$1;->this$1:Lcom/amazon/versioning/UpdateDebugMenu$1;

    iget-object p1, p1, Lcom/amazon/versioning/UpdateDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/versioning/util/DebugUtils;->toggleUpdatePluginEnabled(Landroid/content/Context;)V

    .line 56
    iget-object p1, p0, Lcom/amazon/versioning/UpdateDebugMenu$1$1;->this$1:Lcom/amazon/versioning/UpdateDebugMenu$1;

    iget-object p1, p1, Lcom/amazon/versioning/UpdateDebugMenu$1;->val$context:Landroid/content/Context;

    const-string p2, "Restart the app for changes to take effect"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
