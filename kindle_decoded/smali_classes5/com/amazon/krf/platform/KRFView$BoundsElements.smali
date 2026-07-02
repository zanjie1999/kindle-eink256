.class public Lcom/amazon/krf/platform/KRFView$BoundsElements;
.super Ljava/lang/Object;
.source "KRFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundsElements"
.end annotation


# instance fields
.field public mNextElement:Lcom/amazon/krf/platform/element/PageElement;

.field public mPreviousElement:Lcom/amazon/krf/platform/element/PageElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
