.class Lcom/amazon/appexpan/client/download/ResourceModelPriorityComparator;
.super Ljava/lang/Object;
.source "ResourceModelPriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/appexpan/client/model/ResourceModel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel;)I
    .locals 0

    .line 22
    invoke-virtual {p2}, Lcom/amazon/appexpan/client/model/ResourceModel;->getPriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getPriority()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceModel;

    check-cast p2, Lcom/amazon/appexpan/client/model/ResourceModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/appexpan/client/download/ResourceModelPriorityComparator;->compare(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel;)I

    move-result p1

    return p1
.end method
