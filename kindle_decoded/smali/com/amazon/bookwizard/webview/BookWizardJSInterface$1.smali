.class Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;
.super Ljava/lang/Object;
.source "BookWizardJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->downloadSamples(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/BookWizardJSInterface;

.field final synthetic val$jsonBookArray:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/BookWizardJSInterface;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;->this$0:Lcom/amazon/bookwizard/webview/BookWizardJSInterface;

    iput-object p2, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;->val$jsonBookArray:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    invoke-static {}, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;->val$jsonBookArray:Ljava/lang/String;

    const-class v2, [Lcom/amazon/bookwizard/data/Book;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/data/Book;

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    iget-object v4, p0, Lcom/amazon/bookwizard/webview/BookWizardJSInterface$1;->this$0:Lcom/amazon/bookwizard/webview/BookWizardJSInterface;

    invoke-static {v4}, Lcom/amazon/bookwizard/webview/BookWizardJSInterface;->access$100(Lcom/amazon/bookwizard/webview/BookWizardJSInterface;)Lcom/amazon/bookwizard/store/StoreManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/bookwizard/store/StoreManager;->downloadSample(Lcom/amazon/bookwizard/data/Book;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
