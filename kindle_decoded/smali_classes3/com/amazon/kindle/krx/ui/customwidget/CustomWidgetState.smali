.class public Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;
.super Ljava/lang/Object;
.source "CustomWidgetState.java"


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requesterName:Ljava/lang/String;

.field private widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->requesterName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->widgetName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->widgetName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->requesterName:Ljava/lang/String;

    return-object v0
.end method
