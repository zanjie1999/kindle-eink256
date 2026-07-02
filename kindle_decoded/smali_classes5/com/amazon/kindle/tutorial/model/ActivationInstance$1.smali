.class final Lcom/amazon/kindle/tutorial/model/ActivationInstance$1;
.super Ljava/lang/Object;
.source "ActivationInstance.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/ActivationInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/tutorial/model/ActivationInstance;Lcom/amazon/kindle/tutorial/model/ActivationInstance;)I
    .locals 0

    .line 39
    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getPriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    check-cast p2, Lcom/amazon/kindle/tutorial/model/ActivationInstance;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/tutorial/model/ActivationInstance$1;->compare(Lcom/amazon/kindle/tutorial/model/ActivationInstance;Lcom/amazon/kindle/tutorial/model/ActivationInstance;)I

    move-result p1

    return p1
.end method
