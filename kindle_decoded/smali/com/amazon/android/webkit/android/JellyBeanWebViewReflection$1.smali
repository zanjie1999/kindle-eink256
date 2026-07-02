.class Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;
.super Ljava/lang/Object;
.source "JellyBeanWebViewReflection.java"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;

.field final synthetic val$listener:Lcom/amazon/android/webkit/AmazonFindListener;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;Lcom/amazon/android/webkit/AmazonFindListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;->this$0:Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;->val$listener:Lcom/amazon/android/webkit/AmazonFindListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;->val$listener:Lcom/amazon/android/webkit/AmazonFindListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/webkit/AmazonFindListener;->onFindResultReceived(IIZ)V

    return-void
.end method
