.class public Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;
.super Lcom/amazon/ea/messaging/AjaxMessage;
.source "PenNameAjaxMessage.java"


# static fields
.field private static final CSRF_PARAM_KEY:Ljava/lang/String; = "csrfT"

.field private static final PATH:Ljava/lang/String; = "/gp/customer-reviews/aj/customer/submit-author-name"

.field private static final PEN_NAME_PARAM_KEY:Ljava/lang/String; = "name"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/amazon/ea/messaging/AjaxMessage;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;->params:Ljava/util/Map;

    const-string v1, " "

    const-string v2, "%20"

    .line 22
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;->params:Ljava/util/Map;

    const-string v0, "csrfT"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 28
    iget-object v0, p0, Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/gp/customer-reviews/aj/customer/submit-author-name"

    return-object v0
.end method
