.class Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;
.super Ljava/lang/Object;
.source "AndroidGeolocationPermissions.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;->getAllowed(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;

.field final synthetic val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;->this$0:Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;->val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;->val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-interface {v0, p1}, Lcom/amazon/android/webkit/AmazonValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
