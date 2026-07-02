.class public Lcom/amazon/android/util/AndroidOsOverlayController;
.super Ljava/lang/Object;
.source "AndroidOsOverlayController.java"

# interfaces
.implements Lcom/amazon/android/util/IOsOverlayController;


# instance fields
.field protected window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/android/util/AndroidOsOverlayController;->window:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public setFullscreen(Z)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result p1

    .line 21
    iget-object v0, p0, Lcom/amazon/android/util/AndroidOsOverlayController;->window:Landroid/view/Window;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setFullscreen(ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/android/util/AndroidOsOverlayController;->setFullscreen(Z)V

    return-void
.end method
