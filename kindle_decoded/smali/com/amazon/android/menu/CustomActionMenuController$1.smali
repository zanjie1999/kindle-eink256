.class Lcom/amazon/android/menu/CustomActionMenuController$1;
.super Ljava/lang/Object;
.source "CustomActionMenuController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/menu/CustomActionMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/android/menu/CustomActionMenuButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/menu/CustomActionMenuController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/android/menu/CustomActionMenuButton;Lcom/amazon/android/menu/CustomActionMenuButton;)I
    .locals 2

    .line 56
    invoke-interface {p1}, Lcom/amazon/android/menu/CustomActionMenuButton;->getPriority()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/android/menu/CustomActionMenuButton;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/menu/CustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/android/menu/CustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/amazon/android/menu/CustomActionMenuButton;

    check-cast p2, Lcom/amazon/android/menu/CustomActionMenuButton;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/menu/CustomActionMenuController$1;->compare(Lcom/amazon/android/menu/CustomActionMenuButton;Lcom/amazon/android/menu/CustomActionMenuButton;)I

    move-result p1

    return p1
.end method
