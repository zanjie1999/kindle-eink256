.class public abstract Lcom/amazon/bookwizard/service/ViewDataResponse;
.super Ljava/lang/Object;
.source "ViewDataResponse.java"

# interfaces
.implements Lcom/amazon/bookwizard/http/IWithHeaders;


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

.field private runningState:Lcom/amazon/bookwizard/service/State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 35
    iput-object p1, p0, Lcom/amazon/bookwizard/service/ViewDataResponse;->headers:Ljava/util/Map;

    return-void
.end method
