.class public Lcom/amazon/readingactions/ui/layout/ReadingActionsLayoutFactory;
.super Ljava/lang/Object;
.source "ReadingActionsLayoutFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.layout.ReadingActionsLayoutFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 1

    .line 30
    instance-of v0, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-static {p0, p1, p2}, Lcom/amazon/startactions/ui/layout/VerticalListLayout;->tryCreate(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/VerticalListLayout;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    instance-of v0, p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;

    invoke-static {p0, p1, p2}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->tryCreate(Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    sget-object p1, Lcom/amazon/readingactions/ui/layout/ReadingActionsLayoutFactory;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layout definition: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
