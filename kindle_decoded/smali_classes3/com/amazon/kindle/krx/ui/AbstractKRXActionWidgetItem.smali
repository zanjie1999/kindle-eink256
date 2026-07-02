.class public abstract Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;
.source "AbstractKRXActionWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;,
        Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<State:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem<",
        "TState;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBadgeText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;->getBadgeText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic getButtonIdentifier()Ljava/lang/String;
.end method

.method public getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;"
        }
    .end annotation

    .line 61
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->END:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    return-object p1
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;
    .locals 0

    .line 49
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    return-object p1
.end method

.method public bridge synthetic getId()I
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;->getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)Z"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->onClick(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onClick(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TState;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
