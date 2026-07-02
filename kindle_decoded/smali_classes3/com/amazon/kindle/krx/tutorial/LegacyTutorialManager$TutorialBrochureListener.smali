.class Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;
.super Ljava/lang/Object;
.source "LegacyTutorialManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TutorialBrochureListener"
.end annotation


# instance fields
.field private wrappedListener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;->wrappedListener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;->wrappedListener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;->onClosed()V

    .line 474
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->nextTutorial()V

    return-void
.end method

.method public performAction(Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;->wrappedListener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;->performAction(Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;)V

    :cond_0
    return-void
.end method
