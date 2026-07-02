.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;
.super Lcom/amazon/kindle/krx/tutorial/JITTutorial;
.source "BirdsEyeViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NegativeJITTutorial"
.end annotation


# instance fields
.field private clickableText:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;->text:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;->clickableText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    .locals 1

    .line 196
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    return-object v0
.end method

.method public getClickableText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;->clickableText:Ljava/lang/String;

    return-object p1
.end method

.method public getDelay()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public getOrientationLandscape()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 208
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getOrientationPortrait()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 202
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;->text:Ljava/lang/String;

    return-object p1
.end method

.method public getTutorialView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 225
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getChromeViewForTutorial()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onTextClicked(Landroid/content/Context;)V
    .locals 5

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v2, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeSlide;

    sget v3, Lcom/amazon/kindle/krl/R$string;->nln_negative_brochure_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->nln_negative_brochure_description:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeSlide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>()V

    const-string v2, "nln_negative_tutorial"

    .line 242
    iput-object v2, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 244
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "brochure_assets"

    .line 245
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "brochure_options"

    .line 246
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
