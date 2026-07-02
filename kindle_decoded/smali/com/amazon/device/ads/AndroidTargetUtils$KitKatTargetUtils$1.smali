.class final Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;->val$enable:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method
