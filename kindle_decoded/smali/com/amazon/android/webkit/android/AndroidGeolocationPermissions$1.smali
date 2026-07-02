.class Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;
.super Ljava/lang/Object;
.source "AndroidGeolocationPermissions.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;->getOrigins(Lcom/amazon/android/webkit/AmazonValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;

.field final synthetic val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;->this$0:Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;->val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;->onReceiveValue(Ljava/util/Set;)V

    return-void
.end method

.method public onReceiveValue(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;->val$amazonValueCallback:Lcom/amazon/android/webkit/AmazonValueCallback;

    invoke-interface {v0, p1}, Lcom/amazon/android/webkit/AmazonValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
