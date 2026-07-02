.class abstract Lcom/amazon/android/widget/AbstractInternalWidgetItem;
.super Ljava/lang/Object;
.source "AbstractInternalWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/IInternalWidgetItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayState()Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getText(Landroid/content/Context;)Ljava/lang/String;
.end method
