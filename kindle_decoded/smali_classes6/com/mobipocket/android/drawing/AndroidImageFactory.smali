.class public Lcom/mobipocket/android/drawing/AndroidImageFactory;
.super Ljava/lang/Object;
.source "AndroidImageFactory.java"

# interfaces
.implements Lcom/amazon/kindle/util/drawing/ImageFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/mobipocket/android/drawing/AndroidImageFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidImageFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage([BLcom/amazon/kindle/util/drawing/Dimension;ILcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 26
    new-instance p3, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    invoke-direct {p3, p1, p2, p4}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 30
    invoke-interface {p3}, Lcom/amazon/kindle/util/drawing/Image;->fetch()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return-object p3
.end method
