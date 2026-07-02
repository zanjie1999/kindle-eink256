.class Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;
.super Ljava/lang/Object;
.source "GetDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetDetailsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookDetailPayload"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private recSourceId:Ljava/lang/String;

.field private stripHTML:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;->stripHTML:Z

    .line 133
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;->language:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/State;->getRecSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;->recSourceId:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;->bookId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/GetDetailsRequest$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;-><init>(Ljava/lang/String;)V

    return-void
.end method
