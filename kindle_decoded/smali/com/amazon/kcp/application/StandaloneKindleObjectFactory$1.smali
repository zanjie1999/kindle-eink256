.class Lcom/amazon/kcp/application/StandaloneKindleObjectFactory$1;
.super Ljava/lang/Object;
.source "StandaloneKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IRotationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;->getRotationHandler()Lcom/amazon/kcp/reader/IRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFlipped180(Landroid/content/res/Configuration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setRotation(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
