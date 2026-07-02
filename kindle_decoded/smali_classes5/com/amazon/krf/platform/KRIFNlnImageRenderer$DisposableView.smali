.class Lcom/amazon/krf/platform/KRIFNlnImageRenderer$DisposableView;
.super Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
.source "KRIFNlnImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRIFNlnImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisposableView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/KRFPageView;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/KRFPageView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    :cond_0
    return-void
.end method
