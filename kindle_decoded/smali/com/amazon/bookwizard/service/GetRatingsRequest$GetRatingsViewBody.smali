.class Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;
.super Ljava/lang/Object;
.source "GetRatingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRatingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetRatingsViewBody"
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private userData:Lcom/amazon/bookwizard/service/GenreUserData;

.field private viewId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "booksRatingView"

    .line 114
    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;->viewId:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;->language:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;->runningState:Lcom/amazon/bookwizard/service/State;

    .line 120
    new-instance v0, Lcom/amazon/bookwizard/service/GenreUserData;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/service/GenreUserData;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;->userData:Lcom/amazon/bookwizard/service/GenreUserData;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lcom/amazon/bookwizard/service/GetRatingsRequest$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;-><init>(Ljava/util/Collection;)V

    return-void
.end method
