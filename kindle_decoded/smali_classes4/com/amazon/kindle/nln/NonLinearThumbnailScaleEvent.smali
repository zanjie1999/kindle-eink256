.class public Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;
.super Ljava/lang/Object;
.source "NonLinearThumbnailScaleEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field public final mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field public final scale:F


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;F)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->mode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 17
    iput p2, p0, Lcom/amazon/kindle/nln/NonLinearThumbnailScaleEvent;->scale:F

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
