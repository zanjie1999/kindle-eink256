.class Lcom/amazon/bookwizard/service/ViewResponse;
.super Ljava/lang/Object;
.source "ViewResponse.java"

# interfaces
.implements Lcom/amazon/bookwizard/service/SarsResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/ViewResponse$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/bookwizard/service/SarsResponse;"
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected view:Lcom/amazon/bookwizard/service/ViewResponse$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/bookwizard/service/ViewResponse$View<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunningState()Lcom/amazon/bookwizard/service/State;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->runningState:Lcom/amazon/bookwizard/service/State;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 47
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/bookwizard/service/State;

    invoke-direct {v0}, Lcom/amazon/bookwizard/service/State;-><init>()V

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/amazon/bookwizard/service/ViewResponse;->headers:Ljava/util/Map;

    return-void
.end method
