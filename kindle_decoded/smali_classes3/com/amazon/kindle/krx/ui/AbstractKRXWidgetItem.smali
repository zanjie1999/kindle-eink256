.class abstract Lcom/amazon/kindle/krx/ui/AbstractKRXWidgetItem;
.super Ljava/lang/Object;
.source "AbstractKRXWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<State:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getButtonIdentifier()Ljava/lang/String;
.end method

.method public getId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TState;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public abstract getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TState;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isVisible(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TState;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
