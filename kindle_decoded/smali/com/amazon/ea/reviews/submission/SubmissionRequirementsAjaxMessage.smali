.class public Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;
.super Lcom/amazon/ea/messaging/AjaxMessage;
.source "SubmissionRequirementsAjaxMessage.java"


# static fields
.field private static final ASIN_PARAM_KEY:Ljava/lang/String; = "asin"

.field private static final PATH:Ljava/lang/String; = "/gp/customer-reviews/aj/customer/get-submission-requirements-and-author-name"


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/amazon/ea/messaging/AjaxMessage;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;->params:Ljava/util/Map;

    const-string v1, "asin"

    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/gp/customer-reviews/aj/customer/get-submission-requirements-and-author-name"

    return-object v0
.end method
