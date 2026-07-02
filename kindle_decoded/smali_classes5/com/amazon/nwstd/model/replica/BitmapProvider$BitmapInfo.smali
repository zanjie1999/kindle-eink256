.class public Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
