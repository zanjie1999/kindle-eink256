.class Lcom/facebook/widget/WebDialog$3;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/WebDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 326
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return-void
.end method
