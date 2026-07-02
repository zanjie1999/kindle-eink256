.class Lcom/amazon/android/webkit/android/AndroidWebKitFactory$1;
.super Lcom/amazon/android/webkit/AmazonHistoryManager;
.source "AndroidWebKitFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebKitFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebKitFactory;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebKitFactory;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebKitFactory;

    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonHistoryManager;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    .line 84
    const-class v0, Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear browsing history not supported for default webview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
