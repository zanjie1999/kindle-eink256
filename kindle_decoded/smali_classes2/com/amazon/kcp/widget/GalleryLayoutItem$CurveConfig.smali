.class Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;
.super Ljava/lang/Object;
.source "GalleryLayoutItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/GalleryLayoutItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurveConfig"
.end annotation


# instance fields
.field private final coefficients:[F

.field private final degree:F

.field private final density:F

.field private final offset:F

.field private final span:F


# direct methods
.method public constructor <init>(FFFF[F)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->span:F

    .line 35
    iput p2, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->degree:F

    .line 36
    iput p3, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->density:F

    .line 37
    iput p4, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->offset:F

    .line 38
    iput-object p5, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->coefficients:[F

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->density:F

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->span:F

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->offset:F

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->degree:F

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)[F
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->coefficients:[F

    return-object p0
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;->density:F

    return v0
.end method
