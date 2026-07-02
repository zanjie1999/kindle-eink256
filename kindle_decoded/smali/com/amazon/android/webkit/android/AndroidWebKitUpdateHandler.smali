.class public Lcom/amazon/android/webkit/android/AndroidWebKitUpdateHandler;
.super Ljava/lang/Object;
.source "AndroidWebKitUpdateHandler.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUpdateRequired(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setReadyListener(Lcom/amazon/android/webkit/AmazonWebKitUpdateReadyListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/amazon/android/webkit/AmazonWebKitUpdateReadyListener;->onSuccess()V

    :cond_0
    return-void
.end method

.method public startUpdate()V
    .locals 0

    return-void
.end method
