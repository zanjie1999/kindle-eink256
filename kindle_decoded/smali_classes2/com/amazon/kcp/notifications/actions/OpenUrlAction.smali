.class public abstract Lcom/amazon/kcp/notifications/actions/OpenUrlAction;
.super Ljava/lang/Object;
.source "OpenUrlAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected openUrl(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    return-void
.end method
