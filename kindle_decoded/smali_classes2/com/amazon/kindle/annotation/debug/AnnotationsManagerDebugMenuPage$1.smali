.class Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;
.super Ljava/lang/Object;
.source "AnnotationsManagerDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;->this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;->this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->access$000(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/debug/AnnotationsDBActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;->this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->access$000(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
