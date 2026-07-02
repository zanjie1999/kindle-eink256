.class Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$3;
.super Ljava/lang/Object;
.source "DefaultDebugMenuPageProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->buildAppInfoView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)V
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$3;->val$context:Landroid/app/Activity;

    const-string v0, "Please open the link in a browser on your desktop."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
