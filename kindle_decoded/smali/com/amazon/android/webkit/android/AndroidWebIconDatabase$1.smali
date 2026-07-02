.class Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;
.super Ljava/lang/Object;
.source "AndroidWebIconDatabase.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;->requestIconForPageUrl(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonIconListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;

.field final synthetic val$amazonIconlistener:Lcom/amazon/android/webkit/AmazonIconListener;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;Lcom/amazon/android/webkit/AmazonIconListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;->val$amazonIconlistener:Lcom/amazon/android/webkit/AmazonIconListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;->val$amazonIconlistener:Lcom/amazon/android/webkit/AmazonIconListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonIconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
