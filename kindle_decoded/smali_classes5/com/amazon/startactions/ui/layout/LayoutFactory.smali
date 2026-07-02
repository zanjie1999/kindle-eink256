.class public Lcom/amazon/startactions/ui/layout/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.LayoutFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 1

    .line 28
    instance-of v0, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-static {p0, p1, p2}, Lcom/amazon/startactions/ui/layout/VerticalListLayout;->tryCreate(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/VerticalListLayout;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    instance-of v0, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;

    if-eqz v0, :cond_1

    .line 32
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;

    invoke-static {p0, p1, p2}, Lcom/amazon/startactions/ui/layout/GroupLayout;->tryCreate(Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/GroupLayout;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    sget-object p1, Lcom/amazon/startactions/ui/layout/LayoutFactory;->TAG:Ljava/lang/String;

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
