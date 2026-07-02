.class public abstract Lcom/amazon/android/webkit/AmazonMediaDeviceSettings;
.super Ljava/lang/Object;
.source "AmazonMediaDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonMediaDeviceSettings$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setDefaultMediaDevice(Lcom/amazon/android/webkit/AmazonMediaDevice;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonMediaDevice;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnMediaDeviceUpdateListener(Lcom/amazon/android/webkit/AmazonOnMediaDeviceUpdateListener;)V
.end method

.method public abstract startEnumerationOfMediaDevices()V
.end method
