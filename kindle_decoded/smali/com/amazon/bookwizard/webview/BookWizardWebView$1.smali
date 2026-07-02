.class Lcom/amazon/bookwizard/webview/BookWizardWebView$1;
.super Ljava/lang/Object;
.source "BookWizardWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/BookWizardWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/BookWizardWebView;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardWebView$1;->this$0:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
