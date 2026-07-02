.class final Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;
.super Ljava/lang/Object;
.source "AuthenticationDebugMenuPage.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->configureGetOAuthAccessTokenOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    new-instance p1, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;-><init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->access$getContext$p(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Token exported"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
