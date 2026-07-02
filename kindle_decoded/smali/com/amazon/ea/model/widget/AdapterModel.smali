.class public Lcom/amazon/ea/model/widget/AdapterModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "AdapterModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;,
        Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;,
        Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/startactions/ui/widget/WidgetBase;",
        ">",
        "Lcom/amazon/ea/model/widget/WidgetModel;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final title:Ljava/lang/String;

.field private final widgetFactory:Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/ea/model/widget/AdapterModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/AdapterModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, ""

    .line 53
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/amazon/ea/model/widget/AdapterModel;->title:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/amazon/ea/model/widget/AdapterModel;->widgetFactory:Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;

    return-void
.end method


# virtual methods
.method public getController(Landroid/app/Activity;)Lcom/amazon/ea/ui/widget/WidgetController;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel;->widgetFactory:Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;

    invoke-interface {v0}, Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;->tryCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/widget/WidgetBase;

    if-nez v0, :cond_0

    .line 83
    sget-object p1, Lcom/amazon/ea/model/widget/AdapterModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapted widget is no longer valid, cannot create new controller! [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;-><init>(Lcom/amazon/ea/model/widget/AdapterModel;Landroid/app/Activity;Lcom/amazon/startactions/ui/widget/WidgetBase;)V

    return-object v1
.end method

.method public initMetricConstants()V
    .locals 0

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel;->widgetFactory:Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;

    invoke-interface {v0}, Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;->tryCreate()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareData()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel;->widgetFactory:Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;

    invoke-interface {v0}, Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;->tryCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/widget/WidgetBase;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->prepareData()V

    :cond_0
    return-void
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
