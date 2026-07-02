.class public Lcom/amazon/bookwizard/BookWizardConfig$Builder;
.super Ljava/lang/Object;
.source "BookWizardConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/BookWizardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cor:Ljava/lang/String;

.field private isCorInferred:Z

.field private isEligibleForMonth:Z

.field private isEligibleForPreview:Z

.field private isSubscribed:Z

.field private isViaNotification:Z

.field private skipSignup:Z

.field private type:Lcom/amazon/bookwizard/BookWizardConfig$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    sget-object v0, Lcom/amazon/bookwizard/BookWizardConfig$Type;->FILE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->cor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForMonth:Z

    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isCorInferred:Z

    .line 295
    iput-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isSubscribed:Z

    .line 296
    iput-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForPreview:Z

    .line 297
    iput-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->skipSignup:Z

    .line 298
    iput-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isViaNotification:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/bookwizard/BookWizardConfig;
    .locals 11

    .line 337
    new-instance v10, Lcom/amazon/bookwizard/BookWizardConfig;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    iget-boolean v2, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForMonth:Z

    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->cor:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isCorInferred:Z

    iget-boolean v5, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isSubscribed:Z

    iget-boolean v6, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForPreview:Z

    iget-boolean v7, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->skipSignup:Z

    iget-boolean v8, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isViaNotification:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/bookwizard/BookWizardConfig;-><init>(Lcom/amazon/bookwizard/BookWizardConfig$Type;ZLjava/lang/String;ZZZZZLcom/amazon/bookwizard/BookWizardConfig$1;)V

    return-object v10
.end method

.method public setCor(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->cor:Ljava/lang/String;

    return-object p0
.end method

.method public setCorInferred(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isCorInferred:Z

    return-object p0
.end method

.method public setEligibleForMonth(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForMonth:Z

    return-object p0
.end method

.method public setEligibleForPreview(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isEligibleForPreview:Z

    return-object p0
.end method

.method public setSkipSignup(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->skipSignup:Z

    return-object p0
.end method

.method public setSubscribed(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isSubscribed:Z

    return-object p0
.end method

.method public setType(Lcom/amazon/bookwizard/BookWizardConfig$Type;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    return-object p0
.end method

.method public setUseGamma(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 317
    sput-boolean p1, Lcom/amazon/bookwizard/util/BookWizardUtil;->useGamma:Z

    return-object p0
.end method

.method public setViaNotification(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->isViaNotification:Z

    return-object p0
.end method
