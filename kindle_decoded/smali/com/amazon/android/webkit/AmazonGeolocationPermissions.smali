.class public abstract Lcom/amazon/android/webkit/AmazonGeolocationPermissions;
.super Ljava/lang/Object;
.source "AmazonGeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonGeolocationPermissions$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allow(Ljava/lang/String;)V
.end method

.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getAllowed(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrigins(Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
