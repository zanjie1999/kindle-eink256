.class public Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;
.super Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;
.source "TextImageShareableBrochureSlide.java"


# instance fields
.field private final m_slideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;->m_slideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    return-void
.end method


# virtual methods
.method public getSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;->m_slideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    return-object v0
.end method
