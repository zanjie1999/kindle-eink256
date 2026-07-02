.class Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;
.super Ljava/lang/Object;
.source "GetPayoffViewDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPayoffViewBody"
.end annotation


# instance fields
.field private apiVersion:Ljava/lang/String;

.field private flavor:Lcom/amazon/bookwizard/service/StepFlavor;

.field private language:Ljava/lang/String;

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private selectedGenres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/service/StepFlavor;",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.1"

    .line 75
    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->apiVersion:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->language:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->runningState:Lcom/amazon/bookwizard/service/State;

    .line 82
    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->flavor:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 83
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->selectedGenres:Ljava/util/List;

    .line 85
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/data/Genre;

    .line 86
    iget-object v0, p0, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;->selectedGenres:Ljava/util/List;

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Genre;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;-><init>(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;)V

    return-void
.end method
