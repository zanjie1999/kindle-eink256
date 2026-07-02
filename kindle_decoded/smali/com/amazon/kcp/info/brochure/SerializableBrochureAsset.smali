.class public Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;
.super Ljava/lang/Object;
.source "SerializableBrochureAsset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

.field private final slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/info/brochure/BrochureType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;",
            "Lcom/amazon/kcp/info/brochure/BrochureType;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->slides:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->version:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

    return-void
.end method


# virtual methods
.method public getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->slides:Ljava/util/List;

    return-object v0
.end method
