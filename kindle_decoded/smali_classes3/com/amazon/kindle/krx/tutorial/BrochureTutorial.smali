.class public Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;
.super Lcom/amazon/kindle/krx/tutorial/Tutorial;
.source "BrochureTutorial.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private m_options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

.field private m_slides:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/Tutorial;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->m_slides:Ljava/util/Collection;

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->m_options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    return-void
.end method


# virtual methods
.method public getOptions()Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->m_options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    return-object v0
.end method

.method public getSlides()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->m_slides:Ljava/util/Collection;

    return-object v0
.end method
