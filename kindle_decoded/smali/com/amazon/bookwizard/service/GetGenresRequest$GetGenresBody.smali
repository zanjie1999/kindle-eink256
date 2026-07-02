.class Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;
.super Ljava/lang/Object;
.source "GetGenresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetGenresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetGenresBody"
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private userData:Ljava/util/Map;

.field private viewId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "genreSelectionView"

    .line 74
    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;->viewId:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;->language:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;->runningState:Lcom/amazon/bookwizard/service/State;

    return-void
.end method
