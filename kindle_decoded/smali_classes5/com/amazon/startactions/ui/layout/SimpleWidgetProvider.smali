.class public Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;
.super Ljava/lang/Object;
.source "SimpleWidgetProvider.java"

# interfaces
.implements Lcom/amazon/startactions/ui/layout/IWidgetProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.SimpleWidgetProvider"


# instance fields
.field private final widgetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;->widgetMap:Ljava/util/Map;

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/widget/Widget;

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;->TAG:Ljava/lang/String;

    const-string v1, "Widget found was null, cannot get widget Id"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;->widgetMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/widget/Widget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getWidget(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/Widget;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;->widgetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/startactions/ui/widget/Widget;

    return-object p1
.end method

.method public hasWidgets(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;->widgetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
